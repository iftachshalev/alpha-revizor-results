.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], SI 
XOR RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
AND DIL, -68 # instrumentation
SETL SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDX] 
SETNS DL 
MOVZX ESI, CL 
NOP  
MOV CX, DI 
SETBE AL 
SETNZ AL 
CMOVBE RBX, RDI 
MOVZX ECX, BL 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], 72 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 28 # instrumentation
SETNS CL 
BSWAP RCX 
CMOVB AX, CX 
CMOVNZ RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
MOV CL, DL 
BSWAP EAX 
AND EBX, 87 
AND RCX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EBX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
TEST AL, -116 
XOR EAX, -1010323534 
SETO DL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
CMOVNP RBX, RBX 
BTR EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
