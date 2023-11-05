.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RAX 
SETBE AL 
CMOVS RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
XADD RDI, RCX 
BSWAP EBX 
MOVSX RSI, BX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
SETS DL 
XOR AX, 29840 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, 108 # instrumentation
CMOVLE SI, DI 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
BTC AX, -106 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RAX 
BT BX, -26 
AND DIL, 9 # instrumentation
CMOVNBE CX, CX 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 42 # instrumentation
LEA SI, qword ptr [RDI + RCX + 45378] 
SETL AL 
TEST ECX, 819372217 
MOV SIL, AL 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 3 
BTR DI, CX 
AND DIL, 5 # instrumentation
STC  
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RCX 
CMOVB RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RDI] 
CMOVO EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -17832 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], EDI 
AND SIL, -72 # instrumentation
CMOVNLE RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
