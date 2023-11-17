.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
JMP .bb_main.1 
.bb_main.1:
OR AL, -69 
CMOVNBE RAX, RSI 
SETNS SIL 
STD  
CMOVB DX, CX 
OR EAX, 1950324107 
CWDE  
CMOVNBE AX, SI 
JMP .bb_main.2 
.bb_main.2:
TEST SI, -24607 
XOR EDX, -27 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ECX 
CMOVNLE BX, AX 
SETNS DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], 95 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -126 # instrumentation
SETLE BL 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
MOVZX RDI, DL 
CMOVNP ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 17 # instrumentation
CMOVBE SI, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 6 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], DI 
CMPXCHG RDX, RDI 
XADD CL, DL 
AND RDI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDI], RAX 
XCHG DIL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], SIL 
XOR EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
