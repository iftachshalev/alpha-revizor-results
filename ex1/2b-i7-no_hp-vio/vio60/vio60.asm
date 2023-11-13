.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 47 # instrumentation
SETNB AL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], DL 
AND RDX, RSI 
CMOVB AX, SI 
TEST EDI, 1272934065 
XADD EDX, ESI 
TEST DIL, 74 
SETNBE BL 
CMOVBE RAX, RSI 
CMOVNP EDX, ESI 
CMOVS RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
BTR BX, 123 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
CMPXCHG CL, AL 
XCHG BL, BL 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EAX 
SETBE DIL 
CMOVZ EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], RAX 
AND EBX, ECX 
BTC AX, AX 
OR BX, DI 
NOT DL 
CMOVO AX, DI 
CMOVB EBX, EBX 
SETL DIL 
CMOVB RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 0 
MOVZX RAX, AL 
AND RDI, -96 
XCHG EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
