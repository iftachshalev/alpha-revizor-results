.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EBX, 93 
CMPXCHG EDI, EBX 
CMOVNL EDX, EAX 
OR DI, 46 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RDI] 
BTR RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], ECX 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], AX 
BTS SI, SI 
XCHG DIL, CL 
CMOVNBE EBX, EBX 
BTC DX, -8 
AND DIL, -120 # instrumentation
XCHG AL, BL 
LEA RSI, qword ptr [RDX + RCX] 
XCHG EAX, EAX 
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -36 # instrumentation
CMOVNZ DX, DX 
AND DX, SI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], ECX 
BTS RDI, -12 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], 4 
SETZ BL 
NOT CL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], -66 
BTC ESI, -115 
AND RDI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RDI] 
AND DL, SIL 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RSI] 
NOT RCX 
MOVZX RSI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
