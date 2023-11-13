.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, SIL 
MOV ESI, -659692070 
XOR AX, SI 
CMOVO DI, AX 
SETZ CL 
CMOVLE AX, CX 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
BTR EAX, -27 
AND DIL, -4 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -61 # instrumentation
CMOVNS ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], -57 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], 690576517 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], DL 
AND DI, 37 
OR AL, 48 
SETNLE DL 
OR EBX, ECX 
MOVSX EAX, BL 
AND DL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], ESI 
XCHG EBX, EDI 
CMOVS EDX, ESI 
AND SI, -100 
SETBE CL 
BTS RSI, RBX 
XOR SIL, 36 
BTR RSI, RDI 
BTS EAX, EDI 
TEST AL, DIL 
CMOVNB ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
