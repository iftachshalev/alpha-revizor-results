.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, -105 
MOVSX EBX, BL 
BTS DI, 43 
MOVZX ECX, BX 
XOR AX, -64 
BTC EBX, 51 
LEA CX, qword ptr [RDX + RDI + 32334] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], AL 
XCHG RDX, RCX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 109 # instrumentation
CMOVNB RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], SI 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTS qword ptr [R14 + RBX], RBX 
CMOVNBE RBX, RSI 
OR RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RSI] 
XOR BL, DL 
MOV DX, 28440 
SETNL AL 
CMOVNO RDX, RSI 
SETZ BL 
AND RDI, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RDI] 
CMOVZ DX, DX 
SETZ BL 
CMOVNB RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 0 
BTC RAX, RBX 
MOVSX CX, CL 
BTC RDX, -90 
STD  
NOT ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
