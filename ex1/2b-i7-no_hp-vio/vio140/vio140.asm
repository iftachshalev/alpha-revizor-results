.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
AND DI, AX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
AND DIL, -29 # instrumentation
CMOVO RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RBX 
BTR BX, 110 
AND SIL, -16 # instrumentation
CMOVZ EBX, ECX 
CMOVP RCX, RDI 
XOR RAX, 743365935 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], CL 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DI, -11015 
OR EAX, 1351281520 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], BL 
AND AL, 119 
MOVZX EBX, DI 
NOT RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], EBX 
AND RDX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RDX] 
SETNZ AL 
CMPXCHG DX, CX 
AND RDI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDI] 
AND AL, SIL 
XOR AL, DL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDI] 
CMOVNB RSI, RCX 
SETLE SIL 
XOR DIL, 91 
XADD DI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DL 
XCHG RDI, RDI 
BTR EBX, -59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
