.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
CMOVP RSI, RDX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 914945805 
BT BX, 22 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -13 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], -62 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
SETNZ AL 
STC  
AND RDX, -32 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 1 
AND DIL, -117 # instrumentation
SETNLE DL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RCX, RDX 
XCHG RBX, RAX 
TEST ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 5 
SETNZ CL 
XADD AX, SI 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RAX 
OR DL, -106 
SETNZ AL 
XADD AL, DIL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RBX 
SETZ BL 
SETNBE SIL 
LEA EAX, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 2036432990 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDI] 
MOVZX ECX, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RCX 
MOV DI, -9137 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
