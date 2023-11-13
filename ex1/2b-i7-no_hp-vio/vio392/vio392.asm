.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 17 # instrumentation
SETNP DIL 
MOVSX DX, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
CMOVZ CX, CX 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
CMPXCHG CX, BX 
XOR AX, -17606 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RSI], ESI 
XOR EAX, 2055231458 
XCHG ECX, EDI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -60 # instrumentation
CMOVNLE RDX, RBX 
MOV RBX, -2091946601005535656 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1329880495 
MOVZX EAX, DI 
AND RDI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDI] 
BT EAX, 68 
CMOVBE EBX, EBX 
TEST ESI, EBX 
CMOVNBE EBX, EAX 
SETNO DIL 
TEST DL, 116 
CMOVNB RBX, RDX 
CMOVBE EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], -115 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
SETB SIL 
CMOVLE DX, DI 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 6 
OR EAX, -1 
TEST DX, AX 
AND AL, 109 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
