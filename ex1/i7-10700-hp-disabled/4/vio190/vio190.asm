.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 55 # instrumentation
CMOVO ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RAX] 
BT RDI, 71 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], DL 
CMOVP DI, DX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RSI] 
CMOVB RDX, RDX 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 0 
MOVZX AX, SIL 
JMP .bb_main.2 
.bb_main.2:
XCHG DI, AX 
XOR DL, DL 
BT DI, DI 
AND DIL, -126 # instrumentation
SETS BL 
LEA ECX, qword ptr [RDI + RSI] 
JMP .bb_main.3 
.bb_main.3:
XADD CL, DL 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RSI], AX 
CMOVBE RSI, RDX 
TEST CL, CL 
XOR ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RSI], BX 
MOV EDI, -1736151563 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDX] 
BT RDI, RCX 
XCHG BX, BX 
OR EAX, ESI 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST BL, BL 
SETO CL 
SETNLE DL 
CMOVS CX, CX 
CMOVZ ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
