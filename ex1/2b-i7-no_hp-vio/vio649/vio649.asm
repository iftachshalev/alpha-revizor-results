.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 48 # instrumentation
CMOVNBE RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
CMPXCHG RBX, RDI 
SETBE AL 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RCX], AX 
AND DIL, -87 # instrumentation
CMOVS RDI, RAX 
CMOVNP RAX, RDX 
MOV RCX, RBX 
BTR RBX, -117 
AND DIL, -34 # instrumentation
SETNP BL 
XOR AX, -19157 
AND CL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], DX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 85 # instrumentation
CMOVLE CX, BX 
XOR RAX, 1661964197 
XCHG DI, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BT dword ptr [R14 + RBX], ESI 
OR DIL, -71 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
BTC EDX, -108 
AND SIL, -97 # instrumentation
CMOVNS RBX, RSI 
TEST EDX, -944195317 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RDX 
BT RDX, 43 
AND SIL, -48 # instrumentation
XCHG EDX, EAX 
CMOVB RBX, RAX 
CMOVLE RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 7 
AND SIL, 110 # instrumentation
SETS DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
