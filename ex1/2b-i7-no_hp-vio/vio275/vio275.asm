.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, 74 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
SETLE BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
XOR RAX, -31 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
CMPXCHG SIL, BL 
BTS SI, 119 
XOR EAX, 478999806 
AND RBX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RBX] 
CMOVNLE RDX, RAX 
XCHG DIL, BL 
TEST AL, -72 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], -108 
CMOVNO DI, DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -39 # instrumentation
CMOVNLE SI, SI 
AND EDI, ESI 
CMOVB EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
MOVSX DX, DL 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 2 
AND SIL, -52 # instrumentation
CMOVNO ECX, ECX 
MOVZX RDX, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDX] 
BTR AX, DX 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 3 
XADD BL, AL 
CLC  
SETNB BL 
XOR AL, 112 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
