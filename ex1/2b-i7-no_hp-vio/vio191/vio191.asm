.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
MOVSX ECX, AL 
BSWAP RDI 
CMPXCHG CL, AL 
CMOVL EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
SETS AL 
SETP DIL 
CMOVO EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], DI 
SETNS DL 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
MOVZX DI, SIL 
BTC SI, -26 
AND SIL, 119 # instrumentation
CMOVNP EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
MOV BL, 55 
OR AL, -76 
CMOVNBE EAX, ESI 
CMOVL BX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 7 
CMOVZ DI, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], CX 
BTR RDI, 101 
TEST DIL, -90 
CMOVNL DI, DX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
