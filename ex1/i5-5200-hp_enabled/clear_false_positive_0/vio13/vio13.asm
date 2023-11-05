.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, -1871757006 
XADD RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 23 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR BX, DX 
TEST RDX, RSI 
BTC RSI, RCX 
BTS BX, SI 
XOR RAX, -821581565 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
CMOVBE BX, CX 
SETBE CL 
CMOVZ AX, DX 
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTS dword ptr [R14 + RDI], EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], SIL 
TEST SIL, AL 
MOVZX RSI, CX 
BTS EDX, -105 
AND DIL, 92 # instrumentation
SETNO DL 
TEST DL, 65 
MOVZX RSI, DL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST DX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
AND DX, SI 
XCHG EAX, EAX 
SETB AL 
SETNLE AL 
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
