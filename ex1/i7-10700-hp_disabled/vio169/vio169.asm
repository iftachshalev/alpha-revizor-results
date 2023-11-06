.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR SIL, 58 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVNL ECX, EDX 
OR EDX, ESI 
MOVZX RAX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG AL, AL # instrumentation
NOT byte ptr [R14 + RAX] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
SETL AL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], AX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -81 # instrumentation
CMOVNLE RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 90 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -82 
BSWAP RCX 
BTC ESI, 93 
AND SIL, -2 # instrumentation
CMOVNO CX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -107 
AND AX, -4499 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], BL 
CMOVS SI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
CMOVZ EDI, EBX 
BSWAP ECX 
SETNBE BL 
NOT DL 
AND SIL, -101 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
CMOVNS ESI, ECX 
XCHG BL, CL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RCX] 
AND SIL, -61 # instrumentation
CMOVL RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
