.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 88 # instrumentation
NOT DIL 
SETNL DIL 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EDI 
CMOVNL SI, AX 
MOVZX DI, CL 
BTS DI, 16 
JMP .bb_main.1 
.bb_main.1:
OR DIL, 57 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RCX 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTC qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
TEST EDI, -1434902929 
CMOVLE BX, DI 
JMP .bb_main.2 
.bb_main.2:
TEST AX, -19094 
AND AL, 96 
OR DL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
CLD  
SETB CL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
AND DIL, -120 # instrumentation
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RAX] 
CMOVNL RCX, RDX 
XOR EAX, -1088549896 
BT BX, DX 
MOV AX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], 0 
MOVZX SI, DL 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 85 # instrumentation
CMOVNP RCX, RCX 
CMOVP EBX, ECX 
TEST DI, DX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], DL 
CMOVS RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
