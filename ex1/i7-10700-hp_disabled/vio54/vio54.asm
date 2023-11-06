.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RDI, BX 
MOVZX SI, CL 
OR ESI, 26 
BTS RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -104 
CMOVP EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
AND AL, -13 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], 70 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 83 # instrumentation
NOT RSI 
CMOVNLE RBX, RSI 
TEST AL, -35 
TEST RAX, -880170690 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RSI], 4 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 3 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 6 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], RDI 
CMOVNZ EAX, EDI 
MOVSX DX, BL 
CMOVB RAX, RBX 
CMOVNBE RBX, RAX 
AND RAX, 1443085002 
SETO CL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -54 # instrumentation
CMOVNO RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], DI 
SETP BL 
OR RDI, 57 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
