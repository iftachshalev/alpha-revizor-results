.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 98 # instrumentation
CMOVLE ECX, ECX 
BTC RBX, -77 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
STC  
LEA EDI, qword ptr [RSI + RDX] 
BSWAP RDX 
CMOVNO RDI, RCX 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
SAHF  
AND RCX, RSI 
TEST RAX, -629488345 
BT RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RSI] 
TEST DL, -83 
MOVZX CX, CL 
SETNP AL 
TEST BX, 31156 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], 3 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
MOV RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], DX 
SETBE CL 
MOV CL, 43 
JMP .bb_main.3 
.bb_main.3:
AND AX, 10910 
MOV RCX, RBX 
AND EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
XOR DL, BL 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
BTR AX, 122 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
