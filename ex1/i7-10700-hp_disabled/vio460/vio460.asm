.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RSI, RDX 
XOR AX, 9780 
TEST DIL, 85 
TEST RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
XOR RCX, 40 
MOVZX BX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RSI] 
MOVZX EBX, DL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
CMOVLE EBX, EBX 
MOV AL, 53 
CMOVNP BX, SI 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RAX 
OR AX, -66 
CMOVNBE SI, BX 
BTR EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -3 
MOVZX EAX, DIL 
XCHG RDI, RAX 
CMOVNL RDX, RDX 
SETLE DIL 
CBW  
AND RAX, 121393277 
XCHG BL, CL 
NOT EBX 
TEST EDI, EAX 
OR BL, 15 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RSI] 
BTC RBX, 30 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
