.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP RBX 
XOR DIL, 74 
AND AL, CL 
TEST RAX, -1839612532 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 110 
SETLE BL 
CMOVB EAX, ECX 
SETZ DL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RBX] 
MOVSX RCX, SIL 
MOVSX SI, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RBX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR BL, 18 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -91 
CMOVNS RDI, RCX 
BTC CX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -56 
CMOVLE EBX, ESI 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
OR RDI, RDI 
CMOVNB RBX, RDI 
TEST RAX, 746282252 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
TEST RBX, RDI 
XCHG RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTS qword ptr [R14 + RSI], RDI 
AND DIL, -121 # instrumentation
CMOVNS RSI, RSI 
CMOVNP EBX, EDI 
MOVSX RCX, BL 
BTC EDX, -96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
