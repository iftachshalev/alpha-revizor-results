.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR SI, -102 
XADD BL, BL 
TEST CL, CL 
TEST AL, 123 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RAX 
STC  
BSWAP EDX 
SETBE CL 
OR EDX, EDI 
CMPXCHG DIL, SIL # instrumentation
CMOVP AX, DI 
LAHF  
CMOVBE RBX, RAX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND CX, 61 
BTC EBX, -34 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RSI 
CMOVB RAX, RDI 
NOT RAX 
XADD EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RCX] 
XOR DIL, 0 
SETL CL 
AND EBX, EBX 
XCHG EDI, EAX 
CMOVS RDI, RDI 
XCHG ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
SETNL DL 
OR DX, 0b1000000000000000 # instrumentation
BSF BX, DX 
TEST RAX, RSI 
CMOVBE SI, SI 
BTR EBX, -30 
TEST DL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
