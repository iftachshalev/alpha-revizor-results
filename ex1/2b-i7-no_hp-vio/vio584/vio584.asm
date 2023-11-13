.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SIL, DIL 
TEST SIL, -39 
BT RSI, RDI 
NOT SIL 
CMPXCHG RSI, RDX 
BTS RAX, RBX 
XCHG RDX, RDI 
BTR RSI, RSI 
XADD AL, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RSI] 
MOVSX EAX, CL 
XOR RDX, 33 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDI 
LEA BX, qword ptr [RDI + RDI + 63674] 
CMOVZ SI, DI 
OR AL, 90 
CMOVNS RCX, RBX 
OR CX, -72 
CMOVNZ ECX, ESI 
CMOVL DX, SI 
MOVZX EAX, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], 4 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND DIL, -120 # instrumentation
MOV BX, -4078 
CMOVNO RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
XOR EAX, -966919886 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EAX 
BTC EDI, -5 
SETNZ DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
