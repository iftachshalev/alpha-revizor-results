.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AL, DL 
SETNZ DL 
CMOVNL CX, BX 
MOVZX ESI, DX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
AND DIL, -53 # instrumentation
CMOVBE EDI, EDI 
XCHG ECX, EDX 
BTC EBX, EBX 
OR DIL, -13 
TEST AX, CX 
CMPXCHG AL, CL 
BTR EDI, ECX 
CMOVB AX, DI 
TEST SI, DX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], 90 
CMOVZ RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
BSWAP ECX 
BTR AX, DX 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -351738424 
BTC CX, AX 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], -49 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
XOR DL, DL 
CMOVNZ RDI, RAX 
CMOVBE RSI, RBX 
BTC CX, -70 
XCHG ECX, EAX 
XCHG RDI, RAX 
XOR AL, -30 
TEST BX, BX 
XADD DL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
