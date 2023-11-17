.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ESI, DI 
TEST CL, -96 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RBX], EBX 
OR RAX, 1053279984 
TEST RAX, -1262814925 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], 109 
CMOVNZ RCX, RAX 
CMOVNBE CX, BX 
CMOVP RSI, RDI 
JMP .bb_main.1 
.bb_main.1:
MOVSX EDI, DIL 
OR EAX, EAX 
SETNZ CL 
CMOVS AX, CX 
OR EDX, 92 
CMC  
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], 64 
CMOVL RCX, RDX 
TEST AX, 9551 
SETNZ DL 
CMOVO DX, DI 
OR DL, CL 
TEST DX, -1290 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR DX, DI 
SETP SIL 
BTS CX, SI 
LEA AX, qword ptr [RBX + RAX] 
OR RAX, -1368000928 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
CMOVLE DX, CX 
XOR EAX, 913588611 
CMOVS CX, DX 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
