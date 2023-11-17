.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EDI, ESI 
AND SIL, 6 # instrumentation
SETZ DL 
SETLE CL 
AND EAX, -1777724647 
BTS AX, -96 
CMPXCHG CX, AX 
XADD CL, DL 
AND CX, -36 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTC ESI, 59 
AND DIL, -70 # instrumentation
CMOVNLE AX, DI 
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
XADD EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], AX 
BTC AX, DX 
XOR AX, 23482 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -52 # instrumentation
SETNP DL 
TEST BL, -6 
CMOVO RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RCX], 4 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
BSWAP RDI 
CMOVNO CX, BX 
BTC RSI, 32 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], -99 
TEST DX, CX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 59 # instrumentation
CMOVNB DX, SI 
XOR DI, 49 
SETO BL 
OR DIL, 44 
CMOVNBE RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
