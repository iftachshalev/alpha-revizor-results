.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], 58 
XCHG AL, SIL 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 2097520954 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
SETBE AL 
MOV RCX, 8022302578454272485 
BTR ECX, EAX 
CMOVBE RCX, RBX 
OR EAX, 1680871573 
SETNB BL 
NOT DIL 
CMOVZ CX, CX 
CMOVNO RDX, RDI 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RCX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA RDX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDI] 
XADD EDI, EDX 
CMOVNS RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], EAX 
CMOVNP EDX, EBX 
OR DX, -59 
OR CX, 0b1000000000000000 # instrumentation
BSF AX, CX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RSI 
MOV RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
SETLE SIL 
XOR AX, -14331 
XCHG RBX, RAX 
SETP CL 
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
