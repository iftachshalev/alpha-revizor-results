.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, -31299 
BTC RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
XOR SI, SI 
CDQ  
CMOVNO DI, DI 
JMP .bb_main.2 
.bb_main.2:
BTR ESI, -9 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ESI 
SETNZ BL 
XOR AL, 101 
AND CL, AL 
CMOVBE ESI, EBX 
XOR RBX, RBX 
JMP .bb_main.3 
.bb_main.3:
AND SI, BX 
CMOVNB BX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RBX] 
CMOVO EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], EBX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], SIL 
SETNLE DL 
OR CL, -92 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], 93 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
XOR DI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
