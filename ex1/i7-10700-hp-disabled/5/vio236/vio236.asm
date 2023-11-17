.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, -30 
LEA RAX, qword ptr [RSI + RDX + 1878] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RCX] 
SETNS AL 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
BTR DI, BX 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
XOR AL, 47 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -86 # instrumentation
SETNB DL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
MOV DX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -92 
BTS CX, -123 
AND RSI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RSI] 
MOV DL, CL 
CMOVO EDI, EBX 
BTR BX, BX 
AND SIL, 78 # instrumentation
CMOVL EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDX] 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMPXCHG RSI, RDI 
CMOVO EDX, ECX 
XOR AL, -108 
CMOVNZ SI, DI 
CMOVP RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
OR RAX, 321127643 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 8 # instrumentation
MOVZX RDI, BX 
CMOVNS EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 1 
AND AX, -27689 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
