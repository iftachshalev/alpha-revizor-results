.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 8 # instrumentation
CMOVLE EDI, ESI 
BSWAP RCX 
OR CL, BL 
CMPXCHG CL, SIL # instrumentation
SETNZ BL 
MOVZX RAX, DIL 
SETNP AL 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RSI] 
XOR SIL, -24 
TEST RSI, RAX 
SETNBE SIL 
MOV RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -45 # instrumentation
SETNB DIL 
SETO DL 
BTC CX, -78 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
BT RDI, -9 
SETBE CL 
STC  
XOR SIL, DL 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 2 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
XOR RAX, -693423867 
SETS DL 
BTS EDX, EDI 
AND SIL, 107 # instrumentation
SETO BL 
CMOVS RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
