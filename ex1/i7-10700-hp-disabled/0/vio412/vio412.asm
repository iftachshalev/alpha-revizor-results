.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -94 # instrumentation
CMOVO RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EBX 
BTC CX, -120 
BSWAP RAX 
CMPXCHG RDI, RBX 
TEST EAX, 509757770 
STC  
TEST CL, CL 
AND ECX, 0 
SETO AL 
OR BL, -20 
BTR EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RDI 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
AND SIL, -55 # instrumentation
CMOVNP CX, SI 
MOVZX RAX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], -54 
SETZ BL 
CMOVL BX, DI 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 107 # instrumentation
CMOVO RBX, RDX 
TEST AL, DL 
XCHG AX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
BTR DX, 122 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
XCHG RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
CMOVNP EBX, EAX 
CMOVNL RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
