.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT EDX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
MOVZX SI, SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], CX 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 6 
XOR AX, 3852 
CMOVP RAX, RBX 
CLD  
AND DL, CL 
SETL BL 
MOVZX RCX, DI 
OR AL, -22 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -37 # instrumentation
CMOVO BX, CX 
MOVZX ESI, AL 
OR RDX, RDI 
SETBE AL 
XADD EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
AND DIL, -85 # instrumentation
SETNS CL 
CMOVO EDX, EDI 
XOR AL, CL 
MOVSX RDI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
BTR SI, 126 
MOVZX DI, CL 
AND CX, -28 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
CMOVNB EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
