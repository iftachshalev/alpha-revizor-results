.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DIL, -41 
NOT DI 
BTR CX, 10 
AND SIL, -34 # instrumentation
SETLE SIL 
STC  
NOP  
SETP CL 
CMOVNB DI, DI 
XCHG AL, CL 
OR BL, BL 
AND RDX, 39 
XCHG AX, DX 
XOR EAX, 1383956036 
BTR EDI, EDI 
SETZ BL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], 7 
AND SIL, 87 # instrumentation
SETS CL 
CMOVZ DX, DX 
CMPXCHG ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 29208 
BTC EDI, EAX 
XADD SIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], -85 
MOV ESI, EBX 
MOV RAX, -5663355877664496234 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RDI], EDX 
AND SIL, -35 # instrumentation
MOVSX RAX, SI 
NOT CL 
MOVSX EDI, CL 
CMOVNS RSI, RAX 
CMOVP RDI, RAX 
XADD EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
