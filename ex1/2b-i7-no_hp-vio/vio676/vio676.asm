.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RAX] 
OR BL, BL 
AND SIL, -83 
CMOVZ EAX, EBX 
XCHG CL, DL 
BTS DX, -95 
XOR SIL, -96 
XADD CX, AX 
CMOVLE BX, CX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
XCHG RCX, RAX 
OR AX, 17710 
SETB DL 
CMOVNP RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
XCHG BX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
AND EAX, -154946796 
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
CDQ  
AND EDI, -77 
BTR ECX, -68 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RSI] 
SETNO SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RCX] 
AND AL, -52 
BTR ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RAX] 
TEST SIL, DL 
XOR CL, -121 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
