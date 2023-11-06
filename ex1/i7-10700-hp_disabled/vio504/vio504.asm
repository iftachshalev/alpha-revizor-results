.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 67 # instrumentation
SETBE CL 
CMOVBE EDI, ESI 
MOVSX ECX, CL 
BTR EDI, -20 
AND SIL, -23 # instrumentation
CMOVLE RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RSI], DI 
TEST BL, AL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR RDX, -70 
XCHG EDI, EAX 
BTC ESI, EDX 
OR AL, DIL 
SETO DIL 
OR BX, 0b1000000000000000 # instrumentation
BSR SI, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -262858200 
CMOVS EBX, EAX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], SI 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], AL 
SETNZ CL 
CMOVNL RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RSI] 
BTC RCX, RDX 
AND SIL, 74 # instrumentation
SETNLE CL 
CMOVZ EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
MOV RDX, RDX 
OR RCX, 26 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -51 # instrumentation
CMOVNBE EAX, EDX 
MOVZX RDX, SI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DL 
XADD AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
