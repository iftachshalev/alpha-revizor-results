.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RCX, RAX 
TEST EAX, 118855269 
SETNZ SIL 
CMOVBE RDI, RCX 
SETL BL 
XOR AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
MOVZX CX, CL 
AND SI, DI 
CMPXCHG DIL, AL # instrumentation
LAHF  
BTC ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
NOT RDI 
TEST AL, -98 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RCX 
XCHG DI, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RSI] 
CMOVNZ DI, DX 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ECX 
SETO SIL 
MOV EBX, EDI 
CMOVP ECX, ESI 
OR CL, BL 
CMOVNLE BX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -110 
TEST AX, -6794 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 6 
BTR RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
OR ESI, -83 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
