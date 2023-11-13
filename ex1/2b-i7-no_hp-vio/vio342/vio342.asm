.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND CL, -27 
OR AL, -59 
SETL CL 
OR EBX, 95 
CMOVNZ CX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
MOVZX CX, SIL 
SETO AL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG DL, SIL # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
CMOVNZ CX, CX 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RBX] 
MOV BL, AL 
SETO AL 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], DL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RDI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DL 
XOR RAX, 1227442330 
SETL DL 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], ESI 
SAHF  
CMOVZ ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG DIL, CL # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
LAHF  
MOVSX AX, CL 
OR AX, -14843 
BTC ESI, EBX 
AND SIL, -7 # instrumentation
CMOVNO RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
