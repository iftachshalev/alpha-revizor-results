.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -88 # instrumentation
SETNO BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
CMOVL CX, CX 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], EDI 
MOVZX SI, CL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
AND RDI, RDX 
BTR EBX, EDI 
BTS CX, AX 
TEST AX, -10518 
XADD AL, AL 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 47 # instrumentation
SETNL CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
BTS RDI, 26 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -38 # instrumentation
CLC  
CMOVNS CX, DX 
MOV SIL, 62 
CMOVNLE AX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], AL 
CLD  
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
OR SIL, DIL 
XOR BX, -42 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
AND SIL, 45 # instrumentation
CMOVP RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], EBX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR AL, -126 
XCHG AX, AX 
AND EBX, ESI 
CMPXCHG BL, CL # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
