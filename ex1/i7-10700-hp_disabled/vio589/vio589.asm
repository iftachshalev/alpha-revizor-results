.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 14 # instrumentation
CMOVS RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
AND DIL, 122 # instrumentation
SETP CL 
NOP  
BTC DX, 13 
AND SIL, 80 # instrumentation
SETNS SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RCX] 
STC  
SETNO BL 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1252352082 
CMOVNZ RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -70 
CMOVNB CX, BX 
CMOVLE ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RSI] 
BT CX, AX 
AND SIL, -65 # instrumentation
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
MOV EDI, -273030158 
AND AL, 31 
CMOVLE AX, CX 
CMPXCHG RSI, RSI 
BT EDX, -23 
MOVSX DX, DL 
XOR AX, -15760 
TEST DX, -8698 
AND EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
OR CX, -6 
AND DL, AL 
AND RBX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
