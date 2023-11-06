.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -79 # instrumentation
MOVZX DI, CL 
SETL CL 
MOV CL, BL 
CMOVNZ RAX, RSI 
XOR EBX, -48 
CMOVBE RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], AL 
BT EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
CWD  
AND AL, 96 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
TEST SI, 21112 
CMOVO BX, AX 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], ESI 
AND SIL, -34 # instrumentation
CMOVO RAX, RSI 
XCHG SIL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], CL 
MOV BL, BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
CMOVO RAX, RCX 
TEST DIL, 64 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RAX] 
MOV SI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDX] 
MOV RAX, 8837263086459249508 
CMOVB RCX, RDX 
LEA ECX, qword ptr [RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 22 
BTC RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
