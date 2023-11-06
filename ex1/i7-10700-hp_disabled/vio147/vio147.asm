.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -56 # instrumentation
CMOVNBE RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
CMOVBE RDI, RAX 
AND EAX, 98 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP EDX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDI] 
CMOVNP DI, DX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], -92 
XOR AL, -54 
XADD CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RSI 
CMOVZ ECX, ECX 
BTR EDX, ESI 
TEST CL, AL 
XCHG AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RBX], 5 
BT SI, 36 
CMPXCHG CL, DIL 
JMP .bb_main.2 
.bb_main.2:
TEST AL, 72 
BT ECX, EAX 
XOR RDX, RDI 
TEST SIL, -114 
CBW  
NOP  
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -19377 
OR EAX, 1784929572 
CBW  
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
CDQ  
AND RAX, -384132582 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
