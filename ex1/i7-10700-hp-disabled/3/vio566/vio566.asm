.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 3 
SETNBE CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
SETZ DIL 
AND DX, -75 
AND RDI, -109 
SETZ AL 
XOR RCX, RDX 
CMOVNZ CX, AX 
CMOVNB RDI, RDX 
MOV BL, -22 
BSWAP RSI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD AX, BX 
OR EAX, 731171036 
CMOVLE ECX, ESI 
SETNLE CL 
CMOVLE RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], CL 
CMOVP EDX, EDI 
LAHF  
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
OR AL, CL 
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
NOP  
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 5 
BTR BX, AX 
TEST RSI, 1575598746 
MOVSX RSI, SIL 
XCHG RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], 116 
SETNBE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
