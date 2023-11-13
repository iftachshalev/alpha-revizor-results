.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
MOVSX RAX, CL 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RCX 
MOVZX RDI, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RBX] 
AND EAX, 1670918472 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], CL 
SETNS CL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG RAX, RDI 
MOV DI, SI 
TEST EAX, 1478989938 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], 70 
CMOVNBE RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
TEST AX, 27853 
CMOVZ SI, DX 
SETBE CL 
SETNS DL 
CMOVZ RCX, RAX 
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
TEST AL, 121 
TEST BL, -2 
XCHG AL, AL 
SETL BL 
AND RAX, RDI 
CMOVLE EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
NOT SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RBX] 
CMOVO EDI, ECX 
BTC RDI, -50 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
