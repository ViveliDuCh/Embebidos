import re 

baseOpcodes = {
        "MOV" : 0x00,
        "ADD" : 0x0F
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
    
input_file = 'programa.txt'
output_file = 'output.txt'
outputLines = []

with open(input_file, 'r') as infile:
    
    lineNumber = 1
    line = infile.readline()
    
    while line != "":
        
        instruction = re.split(instructionSeparator,line.strip())
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
        
        errorCheck(operation, operationAddressing, operandCodes, operandAddressing, lineNumber)
        
        #Save output
        outputLines.append(hex(operationCode))
        outputLines.append(hex(operandCodes[0]))
        outputLines.append(hex(operandCodes[1]))
        
        #Debug output:
        print(line.strip())
        #print(instruction)
        print(operandAddressing)
        print(operationAddressing)
        print("OPC: {}".format(hex(operationCode)))
        print("DST: {}".format(hex(operandCodes[0])))
        print("SRC: {}".format(hex(operandCodes[1])))
        print("Errors: {}".format(errorCounter))
        print("\n")
        
        # Read the next line
        lineNumber += 1
        line = infile.readline()
        
        
        
infile.close() 

#Only writes output file if there are no errors
if errorCounter == 0: 
    with open(output_file, 'w') as outfile:
        # Write the lines to the output file
        for outputLine in outputLines:
            outfile.write(outputLine)
            outfile.write("\n")
            
    outfile.close()