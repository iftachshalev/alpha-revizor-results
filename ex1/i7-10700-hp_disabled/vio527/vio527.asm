.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], CL 
CMPXCHG RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DL 
XOR SIL, 38 
AND BL, 81 
BT RCX, RCX 
BTS RBX, RSI 
TEST RAX, -516181477 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
SETNO DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], -65 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RAX], DI 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RBX] 
LEA RDI, qword ptr [RDI] 
OR BL, AL 
SETO BL 
CMOVZ EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 40 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
TEST AX, -24227 
AND RSI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RBX] 
AND AL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
MOVSX EDX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RAX] 
SETL CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDX] 
BTC EDI, -53 
NOT CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RAX] 
CMOVL DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
