.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
SETBE CL 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -122 
LEA ESI, qword ptr [RDX + RAX] 
SETNL AL 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
SETBE DIL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
AND SIL, 2 # instrumentation
CMOVLE AX, DX 
NOT AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], SI 
AND RAX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RAX], 4 
AND RCX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RCX] 
BTS SI, DI 
OR CL, BL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 81 # instrumentation
CMOVS RDI, RDI 
TEST AX, -7737 
XCHG EDI, EDI 
SETO CL 
CMOVNS CX, AX 
SETS DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDX] 
MOVSX AX, BL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 26 # instrumentation
CMOVNL RDX, RDI 
MOVZX EAX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], EBX 
XADD EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RSI] 
XOR AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
