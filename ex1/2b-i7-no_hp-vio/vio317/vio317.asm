.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -63 # instrumentation
CMOVZ EBX, EAX 
BTS RBX, 52 
CMPXCHG BL, BL 
MOVZX EDX, DL 
CMOVZ EBX, EDI 
MOVSX EDI, CL 
CMOVS EBX, ECX 
CMOVNBE EDI, EBX 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], DX 
CMOVNO SI, CX 
MOV DX, BX 
SETP DL 
NOT DL 
CMOVS ECX, EAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -52 # instrumentation
SETNS SIL 
MOV DIL, 126 
TEST SIL, CL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
BSWAP EDI 
CMOVP EDX, EAX 
BT RDX, RBX 
CMPXCHG SIL, DL # instrumentation
AND DIL, 28 # instrumentation
SETNO CL 
LAHF  
LEA DX, qword ptr [RDX + RDX] 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], SI 
XADD BX, DI 
SETZ DL 
CMOVNBE EDI, ESI 
CMOVL ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
