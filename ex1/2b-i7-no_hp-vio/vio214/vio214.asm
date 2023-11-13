.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
MOVSX ECX, BL 
BSWAP EDX 
AND RBX, -23 
AND AL, 40 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], AL 
LEA EBX, qword ptr [RAX + RDI + 25485] 
BTC RDI, RSI 
OR RCX, 111 
SETS AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RSI], SI 
TEST AL, AL 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 7 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG CL, AL 
BTR RBX, RAX 
MOVSX ECX, AL 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTR word ptr [R14 + RAX], SI 
BTC RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
BTC SI, -121 
AND SIL, 89 # instrumentation
CLD  
CMOVNP EDX, EDI 
BTC SI, CX 
CMOVB ECX, EAX 
TEST AL, -72 
CMOVS RAX, RAX 
AND DI, 66 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
BT RBX, RCX 
AND SIL, -12 # instrumentation
SETZ DL 
CMOVNP RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
