.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AX, 7241 
CMPXCHG DL, AL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RAX 
AND SIL, -102 # instrumentation
SETNLE DL 
AND AL, 118 
CMOVNL RDX, RSI 
CLC  
SETL AL 
MOVZX RDI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
TEST AL, BL 
SETNS DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 22 # instrumentation
CMOVS ECX, EDI 
CMOVNB EDX, EAX 
OR AL, -14 
XOR RBX, -60 
CMOVL ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], AX 
SETO DL 
CMOVBE RBX, RBX 
CMOVLE CX, AX 
XCHG RDI, RCX 
BTS EBX, 76 
XOR EAX, -1451582883 
XOR CX, BX 
CMOVNO RBX, RDI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
AND EAX, -1414101268 
TEST CX, -22570 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
