.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RDI] 
SETB CL 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
SETNL DIL 
AND EBX, -30 
MOV DIL, DIL 
XOR DX, DI 
CMOVNLE DX, DX 
XCHG EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RBX] 
CMOVNZ ECX, EAX 
CMOVNS EDI, EAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
NOT RAX 
SETNLE DL 
OR DIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RAX] 
MOVZX RBX, SI 
AND DX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RAX], 6 
OR CX, AX 
BT EDI, -98 
TEST CL, DIL 
CMOVNBE ECX, ECX 
BT RDI, 7 
AND SIL, 55 # instrumentation
SETP CL 
LEA RDI, qword ptr [RDI + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], RAX 
CMC  
NOT DX 
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
