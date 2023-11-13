.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 1 # instrumentation
SETS BL 
OR RAX, -77 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
CMOVZ RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -50 
OR SIL, 35 
MOV RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
MOVSX AX, CL 
BTR SI, 117 
MOV RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -46 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -19 # instrumentation
SETL BL 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
NOT ESI 
CMC  
BT DI, -40 
BTR RCX, RAX 
CMOVZ RBX, RBX 
BTR RCX, 80 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
NOT AX 
XADD ESI, EBX 
BSWAP ECX 
NOT DIL 
CMOVL AX, AX 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], 1 
OR DL, SIL 
MOVZX RSI, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND SIL, 8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
