.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 10 
OR CL, CL 
CMOVNLE RCX, RSI 
CMPXCHG RBX, RCX 
SETO AL 
OR BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
OR RAX, 789751165 
SETB AL 
CMOVNB EDI, EDI 
XCHG DX, CX 
BTS EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RSI] 
CWDE  
SETS SIL 
SETNS AL 
CMOVNS EDI, EDI 
AND SIL, 57 
AND RBX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RBX] 
STC  
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 14811 
NOT DI 
CMOVO EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], EDI 
BSWAP RAX 
SETS SIL 
TEST SIL, -63 
SETS AL 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
CMOVO EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
