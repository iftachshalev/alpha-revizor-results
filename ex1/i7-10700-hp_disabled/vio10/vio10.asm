.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -42 # instrumentation
CMOVNO RAX, RBX 
BTC EAX, EAX 
AND DIL, 80 # instrumentation
SETNP DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RSI] 
MOVSX EDX, DI 
OR DI, CX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -87 # instrumentation
CMOVNO CX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
TEST EAX, -1140956489 
BT RCX, RDX 
MOVSX RBX, DX 
XADD EDX, EDI 
AND RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 6 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 7 
SETB DL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
CMOVP EDI, EDX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
TEST RCX, RDI 
AND EBX, ESI 
BT BX, DI 
OR BX, CX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -78 # instrumentation
CMOVNO EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 4 
AND DIL, -43 # instrumentation
SETNS CL 
CLC  
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
