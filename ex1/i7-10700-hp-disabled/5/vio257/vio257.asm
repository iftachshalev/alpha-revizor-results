.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RAX, 80 
OR ESI, -11 
XOR EBX, 121 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
TEST AL, -85 
SETNO CL 
CMOVS RAX, RDX 
SETB CL 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
STD  
CMOVB SI, AX 
SETNS SIL 
JMP .bb_main.2 
.bb_main.2:
OR DIL, DL 
CMOVNS SI, AX 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 104 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ECX 
BTC BX, -119 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -13 
CMOVNO RDX, RAX 
LEA BX, qword ptr [RDI] 
OR ESI, -48 
XADD RDX, RSI 
SETS BL 
JMP .bb_main.4 
.bb_main.4:
TEST AL, -49 
BSWAP ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RAX 
MOV EDI, 1212283340 
MOVSX ECX, CX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -750340044 
SETZ CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
