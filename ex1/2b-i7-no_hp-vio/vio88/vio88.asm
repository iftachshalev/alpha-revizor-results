.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RCX] 
CMOVO DI, CX 
CMOVB EDX, EDI 
AND DX, DX 
XADD CX, DX 
AND RDI, 105 
CMOVNS EBX, EBX 
BTS RBX, RBX 
BSWAP EAX 
SETBE DL 
OR BL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
CMOVNL RDI, RDX 
MOV AL, 15 
SETS AL 
CMOVNP EAX, EDI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], SI 
BTR ECX, 93 
AND DI, AX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RBX 
CMOVNP BX, AX 
CMOVNLE EDI, ECX 
XOR SI, 95 
CLC  
CMOVO RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RSI] 
XOR AX, 10696 
MOV SI, -6601 
AND AL, AL 
MOV RDX, 7156515648156117029 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
