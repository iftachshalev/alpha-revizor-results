.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
XCHG RSI, RAX 
BTC DI, CX 
XCHG BL, DIL 
JMP .bb_main.1 
.bb_main.1:
CMPXCHG CL, SIL # instrumentation
AND SIL, 117 # instrumentation
MOVZX AX, DL 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -24 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], DL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RAX, 1038334112 
AND RAX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 1 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RSI 
TEST CL, BL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -2017647014 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
TEST AL, CL 
CMOVZ RSI, RDX 
XOR AL, 39 
OR EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EDX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], DI 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 53 # instrumentation
CMOVNP EAX, ESI 
MOVZX DI, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
OR EDI, EDI 
BTC CX, SI 
AND SIL, 83 # instrumentation
CMOVNLE RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
