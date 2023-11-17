.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
BTS AX, CX 
BT RAX, -45 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], CL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 7 
AND DIL, -127 # instrumentation
SETNP DL 
XADD BX, DI 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 18480 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RDI] 
CMOVBE EDI, ECX 
CMOVLE RCX, RDX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 33 # instrumentation
MOVZX EAX, AL 
CMOVZ EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RAX] 
BT EBX, -112 
AND SIL, 59 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RSI] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -42 # instrumentation
CMOVP DI, DI 
XOR DIL, DL 
AND ESI, EDI 
MOVSX EBX, DI 
STD  
SETNL DL 
CMOVB AX, DX 
SETNO DL 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], AX 
CMOVB AX, BX 
BTR RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
