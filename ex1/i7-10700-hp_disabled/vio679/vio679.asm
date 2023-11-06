.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 6 
AND SIL, -64 # instrumentation
SETNO DL 
SETNB DIL 
SETNO AL 
BTC DI, CX 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, 4 # instrumentation
CMOVLE EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], SIL 
XCHG RCX, RBX 
CMOVNO DX, BX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -123 
CMOVL RSI, RDI 
AND ESI, -79 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RCX] 
AND DIL, 24 # instrumentation
SETNBE CL 
AND SI, -27 
BTS ESI, -115 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], 6 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -72 # instrumentation
CMOVNO BX, SI 
XCHG EDI, EAX 
CMOVNB RSI, RDX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND SIL, -127 # instrumentation
CMOVNL DX, DI 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 16472 
MOV AL, -28 
MOVZX DX, CL 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RDI 
NOT DL 
CMOVNLE RSI, RDX 
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
