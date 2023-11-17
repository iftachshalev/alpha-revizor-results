.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RBX, -222289601 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 7 
SETNZ DL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], -68 
CMOVNP ECX, EAX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV CX, DI 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
OR SIL, SIL 
BTR RDI, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
MOVSX EBX, AL 
TEST EAX, -661113892 
XOR AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RAX] 
CMOVB DI, DI 
XADD DIL, CL 
XCHG RCX, RAX 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR DX, BX 
XCHG SI, DI 
BTR EAX, EBX 
BTS EBX, -95 
CMOVB DI, DI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
BTS DI, SI 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
CMPXCHG CL, AL 
TEST DL, -12 
AND BL, -7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
