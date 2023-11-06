.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RCX 
TEST EDI, -680698789 
SETNLE DL 
SETNP DIL 
CMOVNL ESI, EDI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
OR EBX, -24 
MOVSX RDI, BX 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RBX 
BSWAP ESI 
AND RAX, -534575862 
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 3 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
MOV EAX, 701809098 
XOR AL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], CX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RAX, DX 
OR AX, 10319 
XOR AL, 95 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], ECX 
AND SIL, -68 # instrumentation
CMOVO BX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RCX] 
BTR AX, -72 
AND DIL, -118 # instrumentation
MOVSX EAX, SIL 
CMOVNL EBX, ESI 
MOVZX EAX, BX 
BTR RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
