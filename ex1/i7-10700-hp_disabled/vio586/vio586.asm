.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, 186321390 
CMOVNS RSI, RAX 
XOR EAX, -582833894 
XOR BL, AL 
CMC  
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RCX] 
SETO DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 116 # instrumentation
CMOVNBE RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RBX] 
MOV BL, 20 
TEST DI, AX 
AND RSI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RSI], 7 
CMOVNZ EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 5 
STC  
BT RDI, RDI 
XCHG RDI, RAX 
XOR ESI, ESI 
MOV RCX, 746495553964042192 
CMC  
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], BL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 117 # instrumentation
SETNL DL 
CMOVNB DI, DI 
XADD AL, CL 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -124 
MOVSX RBX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDX] 
MOV EBX, ECX 
BTS DI, 125 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
