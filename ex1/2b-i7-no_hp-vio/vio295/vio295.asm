.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -68 # instrumentation
SETP AL 
STC  
AND RBX, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RBX] 
CMOVLE ECX, ESI 
XOR SIL, BL 
AND ESI, EBX 
CMOVNLE EBX, EBX 
CMOVLE BX, SI 
SETNO CL 
OR EBX, 62 
CMOVLE ESI, EDI 
SETB BL 
BTC BX, DI 
AND SIL, -72 # instrumentation
CMOVNBE BX, BX 
CMOVS RCX, RCX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
SETLE BL 
MOV BL, -126 
BTC EDI, ESI 
CWD  
XOR RAX, -307978317 
AND DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
SETNS CL 
SETS CL 
CMOVNP EBX, ECX 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], CL 
TEST DIL, SIL 
BTC CX, DX 
AND DIL, 109 # instrumentation
MOV ESI, EAX 
SETNLE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
