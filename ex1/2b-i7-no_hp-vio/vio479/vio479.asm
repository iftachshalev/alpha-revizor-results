.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
OR RAX, 13563620 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
CLC  
CMOVLE BX, CX 
AND RBX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], EDX 
AND DIL, -9 # instrumentation
CMOVNP DI, BX 
TEST DIL, SIL 
MOVZX RDX, AX 
BTS DI, 47 
OR RSI, 111 
XOR AL, 93 
MOVSX RSI, DL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
SETNLE DIL 
BTS SI, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
TEST RBX, 142167212 
OR RDI, 83 
CMPXCHG SIL, BL # instrumentation
LAHF  
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR CL, AL 
OR DL, -17 
AND RSI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RSI] 
CMPXCHG AL, DL 
XOR RDI, 24 
BTR EDX, 45 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
OR AX, -16949 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
AND DIL, -109 # instrumentation
SETNLE DL 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
MOV AL, -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
