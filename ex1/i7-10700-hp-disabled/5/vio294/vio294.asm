.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT CX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD AX, DI 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -82 
MOVZX DX, CL 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RSI 
SETB CL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AX, -25452 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
CMOVNO RAX, RDX 
OR ESI, EDI 
STD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDI] 
MOVZX CX, CL 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], -87 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
CMOVNL SI, DI 
SETP BL 
CMOVB RAX, RDI 
TEST DI, 343 
SETO DL 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], AL 
AND EAX, 639876401 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
BSWAP RDI 
CMOVP AX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
AND AL, CL 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
