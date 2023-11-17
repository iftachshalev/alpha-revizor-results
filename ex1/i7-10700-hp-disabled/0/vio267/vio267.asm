.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD DL, SIL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
OR CL, BL 
SETL DIL 
XOR RSI, -36 
OR BX, -92 
AND RDI, -63 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RDX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EDX, -118 
CMOVNL EBX, ESI 
MOVZX RDX, BL 
CMOVNO CX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], -71 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
XOR RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], EAX 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR CL, DIL 
AND RSI, RAX 
CMOVL RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RBX], RAX 
TEST AX, -12002 
TEST AL, 30 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
CDQ  
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
SETNZ BL 
AND DL, 100 
CMOVL RCX, RBX 
BSWAP RCX 
CMOVS DI, DX 
XADD DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
