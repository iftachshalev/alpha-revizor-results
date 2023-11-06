.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 74 # instrumentation
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
CMPXCHG RBX, RDX 
CMOVO RCX, RCX 
SETNP SIL 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RBX 
XOR RAX, 79 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDX] 
XADD RBX, RDX 
MOV AX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RBX] 
TEST RAX, -1027972226 
BTS RSI, RDI 
XOR AL, -12 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DL, DL 
OR AX, -15295 
SETO DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
AND SIL, 17 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], EDX 
TEST RSI, -508076592 
TEST SIL, 26 
BTR RDI, RCX 
XOR AX, 23118 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
MOVSX ESI, CL 
SETP BL 
MOVZX RDX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
