.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EDI, -43 
OR AL, -79 
SETLE DL 
OR DIL, -95 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RCX] 
SETS DL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG DIL, DIL # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
SETO AL 
LAHF  
BTR BX, 127 
TEST AL, 3 
CMOVNLE EDX, ECX 
BTC DI, -99 
CMOVNB EDI, EDI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], RAX 
AND DIL, -85 # instrumentation
CMOVP AX, DX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], -24 
XOR DX, -115 
CMOVZ ECX, EAX 
MOV BL, DL 
BTC DI, 73 
BT BX, 68 
CMOVNBE DI, BX 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], 104 
MOV SI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
CMOVNS DI, CX 
STC  
SETNBE BL 
NOT ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
