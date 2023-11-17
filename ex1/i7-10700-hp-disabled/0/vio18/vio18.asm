.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
LEA EDX, qword ptr [RDI] 
NOT RDX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
OR EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS DI, -31 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
LEA RBX, qword ptr [RSI + RSI + 54478] 
XADD CL, BL 
OR RCX, -15 
CMOVNP RDI, RCX 
BT DX, DX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -9 # instrumentation
SETLE DL 
CMOVBE ESI, ECX 
XOR EDX, EDI 
LEA AX, qword ptr [RDX] 
XADD DX, AX 
MOVSX EAX, DX 
XOR RAX, 47 
CDQ  
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV SIL, -126 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
BTS RCX, 47 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 18 
CMOVNBE BX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RDI] 
XADD BL, SIL 
TEST ECX, -1857873139 
CMOVZ EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
