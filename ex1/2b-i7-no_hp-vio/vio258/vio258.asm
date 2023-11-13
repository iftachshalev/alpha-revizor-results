.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RBX] 
AND CL, 89 
SETNS DL 
SETNS AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EDI 
CMOVNS ESI, ESI 
BTS EBX, ESI 
TEST RBX, 1144284075 
BTS RAX, -116 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EAX 
XCHG BX, AX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RDX, RCX 
AND SIL, 113 # instrumentation
XCHG SIL, BL 
CMOVB SI, SI 
CMOVNLE ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], SIL 
CMPXCHG SI, AX 
CMPXCHG DI, DX 
CMOVNP SI, SI 
AND RAX, -1929493311 
AND RAX, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RAX] 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], -80 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDX] 
OR CX, 0b1000000000000000 # instrumentation
BSR SI, CX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTC qword ptr [R14 + RBX], RDI 
AND SIL, 100 # instrumentation
SETNL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
