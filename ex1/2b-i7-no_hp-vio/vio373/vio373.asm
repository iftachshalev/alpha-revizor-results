.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RDI, RDX 
SETNBE DIL 
SETBE DIL 
AND AX, 9173 
CMOVS SI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RAX] 
CMPXCHG EBX, EBX 
CMOVS BX, AX 
CMOVB AX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
AND AX, -66 
TEST AX, -10891 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 3 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RDX, -115 
XADD CL, SIL 
CMOVB ECX, ESI 
TEST RAX, -233323484 
TEST AX, 24694 
SETNB BL 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], -50 
XCHG RSI, RCX 
TEST SIL, -105 
AND AL, DL 
CMOVB RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
CMOVNZ RBX, RAX 
BTC EBX, -120 
TEST BL, DIL 
OR EAX, -1168062061 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
OR RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
