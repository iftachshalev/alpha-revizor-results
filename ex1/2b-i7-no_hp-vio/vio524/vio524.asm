.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 20 # instrumentation
XCHG EAX, EAX 
CMOVNBE ECX, EDI 
CMOVP EBX, ESI 
BTS EDI, -39 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
BTC SI, SI 
AND SIL, 1 # instrumentation
CMOVZ CX, BX 
SETLE CL 
SETNBE DL 
SETNP AL 
TEST DIL, -117 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
MOVZX RCX, AX 
XOR RDI, -124 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV CL, -59 
XCHG SIL, DL 
TEST BL, CL 
NOT EAX 
BTR RDX, 93 
AND DIL, 91 # instrumentation
CMOVO SI, CX 
MOVZX EBX, DL 
BTC SI, AX 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
TEST CL, 110 
XCHG BL, BL 
MOVSX RDI, BL 
XADD ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], CL 
BTR BX, -27 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
SETNBE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
