.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 25944 
CMOVB SI, CX 
OR AX, 27949 
LEA EDI, qword ptr [RDI + RDI + 35223] 
TEST RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], -17 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], -18 
SETNBE AL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 10 # instrumentation
SETBE AL 
CDQ  
OR RAX, 927628713 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], 0 
XOR BL, BL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
SETL BL 
MOVSX RAX, DI 
SETLE CL 
SETLE DL 
CMOVNZ RAX, RDX 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, 87 # instrumentation
MOV ECX, 1400034955 
BT AX, 118 
MOV BL, 103 
CMOVNBE SI, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], SI 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR RAX, 623436842 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], BL 
TEST AL, -49 
BT BX, DX 
XOR DX, 63 
MOVZX DI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
