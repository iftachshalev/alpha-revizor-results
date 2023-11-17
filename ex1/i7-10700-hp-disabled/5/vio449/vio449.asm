.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD CL, DIL 
BTC EAX, 43 
CMPXCHG EAX, ESI 
MOVSX DX, DIL 
BSWAP RAX 
CMPXCHG AL, BL 
XADD DL, AL 
CMOVL EDX, ESI 
SETLE CL 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], SI 
SETNP DIL 
SETNL SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 98 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -126 # instrumentation
CMOVO DI, DX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
AND SIL, -90 # instrumentation
CMOVZ BX, DI 
CMOVNLE AX, DX 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ESI 
TEST SIL, 59 
SETZ CL 
CMOVB EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RDI] 
AND BL, 69 
CMOVNO ESI, ESI 
SETNBE SIL 
AND AL, 8 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
CMOVNZ EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 7 
SETNBE CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
