.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 4 
SETNB CL 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], BX 
CLD  
XOR RAX, 54572656 
XCHG BX, BX 
CMOVNP DI, BX 
MOV RAX, -2124325352680755608 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RAX] 
CMOVLE EDX, ECX 
AND ESI, -65 
CMOVNB AX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], SIL 
CMOVB RAX, RAX 
XCHG BX, AX 
XCHG CX, DI 
TEST AL, -77 
BSWAP EDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 88 
NOT RSI 
XOR EAX, 8 
SETNLE DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
XADD DL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], SIL 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 2 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDX] 
XCHG RBX, RAX 
OR RBX, RDI 
CMOVNO EDI, EDX 
LEA EDI, qword ptr [RBX + RDI + 23606] 
CMOVNB RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
