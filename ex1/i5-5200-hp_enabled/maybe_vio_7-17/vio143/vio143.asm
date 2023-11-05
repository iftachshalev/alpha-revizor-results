.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC EBX, -50 
AND RAX, -23083436 
CMOVNB RSI, RAX 
CMOVNS EAX, EDX 
SETBE AL 
XOR ESI, 43 
CMOVP RSI, RBX 
CMOVNP BX, AX 
SETNLE DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 81 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDI] 
CMOVNL CX, DX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -38 
CMOVB SI, CX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RCX] 
CMPXCHG BL, AL 
XADD RAX, RSI 
SETNO BL 
XOR AX, SI 
AND EAX, 1656089544 
SETNP DIL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], DIL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 94 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDI] 
XCHG RAX, RAX 
MOV EBX, ESI 
BTC ESI, ECX 
TEST AX, -7963 
XOR RBX, RCX 
OR RSI, 101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
