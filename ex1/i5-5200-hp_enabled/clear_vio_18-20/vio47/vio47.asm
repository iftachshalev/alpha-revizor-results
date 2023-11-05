.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -11 # instrumentation
SETO AL 
MOV DL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 1 
OR RBX, RSI 
XOR DL, BL 
JMP .bb_main.1 
.bb_main.1:
LEA EAX, qword ptr [RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
CMOVNLE RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], -126 
MOV EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], SIL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -83 # instrumentation
CMOVP EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RCX] 
OR SIL, -114 
SETNL BL 
TEST DX, 23254 
CMOVNP ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 2 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -54 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RDI 
CMOVO DI, CX 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 35 # instrumentation
CMOVNLE RBX, RCX 
BSWAP RAX 
OR AL, -68 
CMOVLE EBX, EDX 
SETNB DL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
CMOVNP RDI, RAX 
SETNZ CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
