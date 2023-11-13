.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, -40 
TEST SIL, 11 
BTR EDI, 125 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RDX 
XCHG EDI, ECX 
TEST RAX, 978696433 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], -56 
SETNLE DIL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RDI, DI 
AND RAX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RAX], 6 
OR SI, DI 
TEST CL, BL 
CMOVL ESI, EDX 
SETB DL 
BTS EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], ESI 
XCHG RAX, RAX 
CMOVS RSI, RAX 
BT EAX, EDI 
XOR EBX, ECX 
OR AL, 81 
XADD RAX, RDI 
CMOVZ RDX, RDX 
CMOVBE EAX, ESI 
OR SI, 97 
TEST CL, 116 
XOR CL, -10 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
TEST EAX, -1576400782 
TEST EAX, -424826305 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
