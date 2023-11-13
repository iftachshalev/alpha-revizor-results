.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EDI, AL 
XCHG EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RBX] 
SETLE BL 
BTR RBX, 33 
AND SIL, -119 # instrumentation
CMOVNLE DX, AX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR DX, 44 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], CL 
OR EDI, ESI 
SETL BL 
OR AX, -21177 
SETNBE BL 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDX] 
SETNO SIL 
SETLE BL 
TEST AX, 15846 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
AND BX, SI 
CLC  
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], SI 
CMPXCHG CX, DI 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
CMOVP EDX, EDX 
CMOVNB EAX, EDX 
CMOVO DX, DX 
CMOVS EDX, EBX 
XADD EDI, EAX 
AND SIL, 63 
CMOVP CX, SI 
BTR AX, 36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
