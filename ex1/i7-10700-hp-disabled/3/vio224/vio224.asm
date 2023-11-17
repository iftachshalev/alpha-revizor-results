.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV BX, DI 
OR BL, AL 
CMOVS RAX, RCX 
TEST AX, -7463 
BTR RDI, -49 
AND AL, -114 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
OR DX, -124 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
TEST RCX, -1580446713 
XOR SIL, -70 
AND CX, 13 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST EAX, -24749159 
MOV EBX, ESI 
TEST ESI, -772917197 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], BX 
BTC DI, 108 
MOVSX EDX, AL 
BT ECX, EDX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RSI 
CMOVNBE EDI, EAX 
CMOVNB RSI, RBX 
SETNB CL 
MOV DIL, DL 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], CX 
BTS DX, -60 
AND SIL, -97 # instrumentation
XCHG DX, BX 
SETNS AL 
BTR EBX, -43 
BTC EBX, -35 
AND RSI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RSI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
