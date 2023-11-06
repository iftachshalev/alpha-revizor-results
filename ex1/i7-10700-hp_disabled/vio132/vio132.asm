.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 80 # instrumentation
LEA RAX, qword ptr [RAX + RAX] 
CMOVNB RDI, RDX 
BTC RAX, RDI 
AND DIL, -34 # instrumentation
CMOVL CX, DI 
OR AX, -6374 
CMOVNO CX, DX 
MOV CL, SIL 
LEA RDI, qword ptr [RCX + RDX] 
TEST AL, -79 
MOV SIL, CL 
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
MOV ESI, -1267827998 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 76 # instrumentation
SETNLE CL 
XADD EAX, ECX 
CMOVNLE RBX, RDI 
XOR EAX, 1627902796 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 106 # instrumentation
CMOVNO EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
BTS BX, BX 
AND DIL, -67 # instrumentation
CMOVNBE ESI, EBX 
CMOVNBE DX, AX 
MOVSX DI, CL 
CMOVNB CX, BX 
SETLE AL 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG SIL, DL 
NOT RDI 
OR AX, 16633 
CBW  
SETP DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
