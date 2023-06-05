import re 

baseOpcodes = {
        "READ" : 0x00,
        "MOV"  : 0x08,
        "WRT"  : 0x10,
        "DIV"  : 0x18,
        "MUL"  : 0x20,
        "SUB"  : 0x30,
        "NOT"  : 0x38,
        "AND"  : 0x40,
        "OR"   : 0x48,
        "XOR"  : 0x50,
        "JMP"  : 0x58,
        "MOD"  : 0x60,
        "EQU"  : 0x68,
        "CMP"  : 0x70
        }

baseOpcodes2 = {
        "INC"  : 0x28,
}

jumpCodes = {
        "JMP"  : 0x58,
        "JE"   : 0x59,
        "JL"   : 0x5a,
        "JG"   : 0x5b,
        "JC"   : 0x5c,
        "JNZ"  : 0x5d,
        "CALL" : 0x78,
        "RET"  : 0x79,
        "IRET" : 0x7a
        }

opcodeOffsets = {
        "imm_to_reg"     : 0,
        "imm_to_direct"  : 1,
        "imm_to_indirect": 2,
        "imm_to_indexed" : 3,
        "reg_to_reg"     : 4,
        "direct_to_reg"  : 5,
        "indirect_to_reg": 6,
        "indexed_to_reg" : 7,
        "reg_to_direct"  : 8,
        "reg_to_indirect": 9,
        "reg_to_indexed" : 10,
        "direct_to_indirect"    : 11,
        "direct_to_indexed"     : 12,
        "indirect_to_direct"    : 13,
        "indexed_to_direct"     : 14
        }

registers = {
        "Ax" : 0x00,
        "Bx" : 0x01,
        "Cx" : 0x02,
        "Dx" : 0x03,
        "Ex" : 0x04,
        "Fx" : 0x05
        }

immediate = re.compile("#[0-9]+")
register = re.compile("[A-F]x")
direct = re.compile("\[([0-9]+|[A-F]x)\]")
indirect = re.compile("@\[([0-9]+|[A-F]x)\]")
indexed = re.compile("@\[[A-F]x\+[0-9]+\]")

instructionSeparator = re.compile("[,\s]+")

errorCounter = 0

def getOperandAddressing(operand):

    if immediate.match(operand):
        return "imm"
    elif register.match(operand):
        return "reg"
    elif direct.match(operand):
        return "direct"
    elif indirect.match(operand):
        return "indirect"
    elif indexed.match(operand):
        return "indexed"
    else:
        return "error"

def getOperationAddressing(operandsAddressing):
    return operandsAddressing[1] + "_to_" + operandsAddressing[0]

def getOperandCode(operand, addressing):
    if not (addressing == "indexed"):
        
        #Look for register name
        match = re.search("[A-F]x", operand)
        if match:
            return registers[match.group(0)]
        
        #Look for numeric memory address
        match = re.search("[0-9]+", operand)
        if match:
            return int(match.group(0))
        
        return None
    
    else:
        #Look for register name
        regMatch = re.search("[A-F]x", operand)

        #Look for numeric memory address
        numMatch = re.search("[0-9]+", operand)
        
        return (registers[regMatch.group(0)]*16)+int(numMatch.group(0))


def errorCheck(operation, operationAddressing, operandCodes, operandAddressing, lineNumber):
    global errorCounter
    
    if not (operation in baseOpcodes):
        errorCounter += 1
        printError(lineNumber, "\"{}\" operation not recognized.".format(operation))
        
    elif not (operationAddressing in opcodeOffsets):
        errorCounter += 1
        printError(lineNumber, "\"{}\" addressing not supported.".format(operationAddressing))
    
    for i in range(len(operandCodes)):
        
        #Remover este error si se implementan variables
        if operandAddressing[i] == "reg" and (operandCodes[i] == None):
            errorCounter += 1
            if i == 0:
                printError(lineNumber, "Destination register not recognized.")
            else:
                printError(lineNumber, "Source register not recognized.")
                
        #Modificar si la memoria tiene más de 255 localidades
        if operandCodes[i] > 255:
            errorCounter += 1
            if i == 0:
                printError(lineNumber, "Destination address \"{}\" exceeds memory range (0-255).".format(operandCodes[i]))
            else:
                printError(lineNumber, "Source address \"{}\" exceeds memory range (0-255).".format(operandCodes[i]))



def printError(line, message):
    print("Error in line {}: {}".format(line, message))
    
    
def writeOutputFile(outputLines, output_file):
    
    with open(output_file, 'w') as outfile:
            
        output_header = """
WIDTH=8;
DEPTH=256;

ADDRESS_RADIX=UNS;
DATA_RADIX=UNS;

CONTENT BEGIN
"""
        
        outfile.write(output_header)
        
        # Write the lines to the output file
        i = 0
        while i < len(outputLines):
            
            firstSpace = " " * (4-len(str(i)))
            secondSpace = " " * (4-len(str(outputLines[i])))
            outputLine = "    {}{}:{}{};".format(i,firstSpace,secondSpace,outputLines[i])
            outfile.write(outputLine)
            outfile.write("\n")
            i+=1
        
        if i < 255:
            outputLine = "    [{}..255]    :    0;".format(i)
            outfile.write(outputLine)
            outfile.write("\n")
            
        outfile.write("END;")      
        
    outfile.close()
 
    
    
input_file = 'ensamblador/programa4.txt'
output_file = 'ensamblador/Memoria4.mif'
outputLines = []
tags = {}

with open(input_file) as infile:
    lineNumber = 1
    line= infile.readline()
    
    while line != "":
        instruction = re.split(instructionSeparator,line.strip())
        if instruction[-1][-1] == ':':
            if len(instruction)==1:
                name = instruction[0].replace(":","")
                tags.update({name:lineNumber})
            else:
                errorCounter += 1
                printError(lineNumber, "Syntax error")

        # Read the next line
        lineNumber += 1
        line = infile.readline()

infile.close()  

with open(input_file, 'r') as infile:
    
    lineNumber = 1
    line = infile.readline()
    
    while line != "":
        instruction = re.split(instructionSeparator,line.strip())
        if len(instruction)>2:
            
            operation = instruction[0]
            
            operands = []
            operands.append(instruction[1])
            operands.append(instruction[2])
            
            operandAddressing = []
            operandCodes = []
            
            for operand in operands:
                operandAddressing.append(getOperandAddressing(operand))
                operandCodes.append(getOperandCode(operand, operandAddressing[-1]))
    
            operationAddressing = getOperationAddressing(operandAddressing); 
            if operation in baseOpcodes and operationAddressing in opcodeOffsets:
                operationCode = baseOpcodes[operation] + opcodeOffsets[operationAddressing]
            else: 
                operationCode = 0xFFFF
            
            #Debug output:
            print(line.strip())


            errorCheck(operation, operationAddressing, operandCodes, operandAddressing, lineNumber)
            
            #Save output
            outputLines.append(operationCode)
            outputLines.append(operandCodes[0])
            outputLines.append(operandCodes[1])
            
            
            #print(instruction)
            print(operandAddressing)
            print(operationAddressing)
            print("OPC: {}".format(operationCode))
            print("DST: {}".format(operandCodes[0]))
            print("SRC: {}".format(operandCodes[1]))
            print("Errors: {}".format(errorCounter))
            print("\n")
        elif (len(instruction)>1):
            operation = instruction[0]
            tag = instruction[1]

            if operation in jumpCodes:
                operationCode = jumpCodes[operation] 

                if tag in tags:
                    tagCode = tags[tag] 
                else: 
                    tagCode=0xFF
                    errorCounter += 1
                    printError(lineNumber, "Jump destination not found.")
            elif operation in baseOpcodes2:
                operationCode = baseOpcodes2[operation] 
                if tag in registers:
                    tagCode = registers[tag] 
                else: 
                    tagCode=0xFF
                    errorCounter += 1
                    printError(lineNumber, "Register not recognized")
            else: 
                errorCounter += 1
                printError(lineNumber, "\"{}\" operation not recognized.".format(operation))

            
            outputLines.append(operationCode)
            outputLines.append(tagCode)
            outputLines.append(0x00)
        
        # Read the next line
        lineNumber += 1
        line = infile.readline()
        
        
        
infile.close() 

#Only writes output file if there are no errors
if errorCounter == 0: 
    writeOutputFile(outputLines, output_file)

print(tags)