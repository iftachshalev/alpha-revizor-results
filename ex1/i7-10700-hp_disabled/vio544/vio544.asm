.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -11 # instrumentation
CMOVNB AX, AX 
CMOVB RCX, RAX 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RCX], 1 
MOVZX RDI, DI 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], CX 
XCHG EDI, EDI 
NOT DI 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
AND RDX, -108 
MOVZX ECX, BX 
BSWAP EAX 
CMOVNL EDX, EBX 
MOVSX RDX, DI 
CMOVL RAX, RDI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
SETNP CL 
BTC EBX, ESI 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST AL, 24 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
CMPXCHG EDI, EBX 
XOR RDX, -79 
CMOVS EAX, ESI 
AND EAX, -2038747911 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
SETB DL 
BT EBX, -117 
XCHG RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
