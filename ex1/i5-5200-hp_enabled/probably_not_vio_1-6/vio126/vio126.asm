.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG DIL, CL # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
XCHG SI, AX 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
OR CL, 30 
MOV CL, CL 
TEST DX, SI 
OR AX, 11244 
MOV DL, 38 
CMOVBE EAX, ESI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], SI 
BT EAX, EAX 
BTS RDX, 84 
TEST AL, -5 
BTC RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], 2 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
SETNS BL 
CMOVNZ EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
TEST AL, DIL 
JMP .bb_main.2 
.bb_main.2:
BTC CX, SI 
AND SIL, 30 # instrumentation
BSWAP RDI 
CMOVO EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
TEST RDI, 917699282 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND DIL, -27 # instrumentation
MOV EDI, EBX 
SETL AL 
CMOVNLE RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
