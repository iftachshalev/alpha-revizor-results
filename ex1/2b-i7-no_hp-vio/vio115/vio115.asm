.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0 
TEST AL, -2 
AND AL, -6 
XOR AX, -29862 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
AND DIL, 72 # instrumentation
SETNLE CL 
CMOVBE RDI, RSI 
CMOVNBE ESI, EDX 
CMOVNO RSI, RCX 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND SIL, -109 # instrumentation
SETNBE BL 
MOVSX EAX, BL 
CWD  
XOR BL, AL 
MOV BL, BL 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RCX], AX 
MOVSX RSI, SIL 
MOVSX ECX, CL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX BX, BL 
AND RDI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDI] 
CMOVNBE EDX, ESI 
CMOVS ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 7 
AND DIL, -41 # instrumentation
SETL AL 
BTS BX, DI 
NOP  
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
MOVZX SI, AL 
CMOVNZ RAX, RBX 
SETB BL 
CMOVNBE RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
