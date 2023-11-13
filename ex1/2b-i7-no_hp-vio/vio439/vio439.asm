.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RSI, RCX 
SETLE BL 
CMOVNP SI, AX 
XOR AX, 29705 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RSI] 
MOV CL, -67 
BT DX, DX 
BTS SI, -110 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RDI] 
TEST SIL, CL 
XCHG SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 4 
AND SIL, 110 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 27 # instrumentation
SETNZ SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RAX] 
BTC SI, -124 
LEA RDX, qword ptr [RBX + RDI] 
MOV DIL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
CMOVNO DI, DI 
AND EAX, 892899083 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RBX 
XADD DL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EAX 
SETNS BL 
MOVSX RAX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDI] 
SETZ CL 
SETNO BL 
CMOVNP DI, DI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 28 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
CMOVB SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
