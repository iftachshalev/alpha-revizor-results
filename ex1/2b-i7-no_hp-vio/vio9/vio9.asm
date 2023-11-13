.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
AND DIL, 57 # instrumentation
SETS DL 
XOR RDI, RSI 
NOT EAX 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
CMOVP RAX, RAX 
MOV AL, 95 
BTC EDX, ECX 
AND DIL, -76 # instrumentation
SETNL AL 
CMPXCHG BL, CL 
CLD  
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
SETLE CL 
CMOVNS EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], 51 
CLD  
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -15 # instrumentation
SETLE BL 
SETL DL 
CMOVNBE EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], 71 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
CMOVB RSI, RCX 
MOV ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RCX] 
OR DIL, 14 
TEST DX, DI 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -1654296137 
BSWAP ECX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
BTC EDX, ECX 
MOV DIL, -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
