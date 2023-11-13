.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -78 # instrumentation
CMOVLE RCX, RSI 
XOR EDI, EAX 
SETS BL 
XOR BX, -106 
CLC  
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
TEST ESI, ECX 
CMPXCHG RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 46 
CMOVNBE ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RSI 
NOT RDI 
AND RBX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RBX] 
BTR RAX, 60 
BTR RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
BT DX, 102 
MOVZX RDI, BX 
OR SIL, -34 
TEST AL, 109 
BTS RDX, RBX 
XOR SIL, -53 
AND RDI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], -68 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
SETZ CL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
TEST DX, -20615 
XOR AX, BX 
SETP DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
