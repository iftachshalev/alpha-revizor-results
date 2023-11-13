.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -31 # instrumentation
CMOVS SI, DX 
SETNL BL 
CMOVNL AX, CX 
CMOVLE EDX, ECX 
SETNZ AL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
LEA RSI, qword ptr [RDX + RDX + 33464] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
NOT DX 
XOR AL, -117 
LEA RDX, qword ptr [RCX + RDI + 25253] 
CMOVNB RDX, RBX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RAX] 
OR RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
LEA AX, qword ptr [RDI + RBX] 
CMOVNP CX, CX 
CMOVNB RDX, RSI 
SETNLE AL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DIL 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RCX 
MOV BX, BX 
BTC BX, BX 
AND SIL, 24 # instrumentation
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 7 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
CMOVP RDX, RDX 
BTS RDX, RBX 
AND SIL, -53 # instrumentation
CMOVO RSI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
