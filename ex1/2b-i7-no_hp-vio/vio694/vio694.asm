.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 92 # instrumentation
CMOVLE CX, AX 
OR DI, BX 
TEST AX, -4317 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
BTS EDX, 19 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND CX, 84 
SETLE SIL 
CMOVNO DI, DI 
BSWAP RBX 
CMOVNS RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RAX] 
CMOVB RSI, RCX 
CMOVL ECX, EDI 
CMOVNBE SI, DI 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
CMOVNZ RSI, RSI 
STC  
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -92 # instrumentation
SETB BL 
XOR DL, -61 
SETNZ DL 
CMOVLE DI, AX 
XADD EDX, EDI 
TEST AX, -16725 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], DI 
CLD  
CMOVBE CX, BX 
XADD AX, CX 
CMOVNL RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
