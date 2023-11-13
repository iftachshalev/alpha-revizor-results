.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 61 # instrumentation
BTR ESI, ECX 
CMOVNBE DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EBX 
MOV SIL, 67 
CMOVO EBX, EDX 
SETNO AL 
TEST RBX, RAX 
CMOVP EAX, ESI 
MOV DI, -10515 
BTR CX, 21 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -65 # instrumentation
STC  
SETS SIL 
BTC DI, BX 
AND EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RBX] 
TEST BL, AL 
AND RAX, -1794802080 
CMOVS SI, AX 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
XOR ESI, ESI 
SETP AL 
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
OR SIL, -71 
XOR EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RBX], EDX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
TEST EDX, ESI 
CMOVL EAX, ESI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
