.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -4 # instrumentation
CMOVLE EAX, EAX 
STC  
MOVSX ESI, SIL 
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], DL 
SETBE AL 
OR AL, 30 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RSI] 
BTR RDI, RAX 
AND SIL, -104 # instrumentation
MOV DX, 13540 
SETNL AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RCX] 
MOVSX ESI, CL 
CMOVNB EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RSI] 
SETNP CL 
TEST CL, 1 
XCHG DI, CX 
MOVSX ESI, CL 
CMOVNP RBX, RAX 
XOR SI, DI 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
CMOVNP BX, SI 
BT AX, CX 
AND DIL, -39 # instrumentation
SETNP SIL 
STD  
CMOVNZ RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
