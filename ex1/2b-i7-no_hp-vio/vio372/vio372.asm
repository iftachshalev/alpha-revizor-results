.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -23 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVNL ESI, ESI 
CMOVBE ESI, ECX 
XOR RBX, RSI 
CMOVB RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RSI], 4 
AND RAX, 836403568 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
SETNL CL 
XCHG RAX, RDI 
CMOVNZ CX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
CMOVLE CX, CX 
BTR DI, 1 
SETNZ BL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], 82 
CMOVO RSI, RCX 
LEA RAX, qword ptr [RAX + RBX] 
MOV SI, SI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RBX, RAX 
TEST DIL, 97 
SETO CL 
SETO BL 
TEST EAX, -119237341 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], 35 
TEST AL, DL 
CMOVL CX, DI 
MOVZX DX, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
