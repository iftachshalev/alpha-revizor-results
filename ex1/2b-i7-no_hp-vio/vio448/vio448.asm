.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV CL, DL 
NOT BL 
BTC RAX, RDI 
BTC EDI, -75 
AND SIL, 100 # instrumentation
CDQ  
CMOVNL SI, AX 
CMOVNS RDI, RAX 
AND AL, 26 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
AND BL, SIL 
CMOVNL ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], BL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -7 # instrumentation
CMOVP EAX, EBX 
CWDE  
CMOVS CX, DI 
TEST AL, 100 
XCHG DL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RCX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], RBX 
AND SIL, -71 # instrumentation
SETNL DIL 
SETB CL 
XOR RAX, RDI 
MOVZX EAX, DL 
CMOVBE EAX, ESI 
AND DX, 49 
MOV BL, 10 
AND CL, -79 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
BTC CX, BX 
TEST DIL, 32 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
