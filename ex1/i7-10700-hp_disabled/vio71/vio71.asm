.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1395363166 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RAX], RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
BTS EDI, EDX 
AND DIL, 37 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -97 # instrumentation
SETNLE AL 
CMOVO EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
MOV AL, 120 
STC  
AND EDI, -106 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 126 # instrumentation
CMOVL RBX, RSI 
OR DI, 104 
BTS AX, DX 
AND DIL, -92 # instrumentation
CMOVNL RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
CMOVNP EBX, ECX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 120 # instrumentation
SETNBE CL 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
CMOVZ RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RBX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], ESI 
CMOVNB RDX, RAX 
JMP .bb_main.4 
.bb_main.4:
OR DL, 64 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1774977000 
MOV BX, -22693 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
