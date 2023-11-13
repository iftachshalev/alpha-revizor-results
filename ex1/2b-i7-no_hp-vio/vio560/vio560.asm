.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -8 # instrumentation
CMOVNB AX, SI 
XOR EDI, 38 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
CMPXCHG DL, BL # instrumentation
AND DIL, 102 # instrumentation
CMOVO DX, CX 
MOVZX DI, CL 
CMOVL AX, DI 
CMOVBE RAX, RBX 
BSWAP RAX 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDI] 
TEST RBX, RCX 
BTC BX, DI 
AND DIL, 107 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -31 # instrumentation
CMOVLE RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], CL 
SETL AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
CMOVNL BX, DX 
NOT BX 
CMOVBE RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
SETLE SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], -23 
SETNL CL 
MOVSX EAX, DI 
AND CL, -114 
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 3 
AND ESI, -62 
BT EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RBX] 
CMOVNB EDX, EDX 
BTC RBX, -25 
BTR ESI, -6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
