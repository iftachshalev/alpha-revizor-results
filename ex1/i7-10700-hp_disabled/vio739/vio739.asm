.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -39 # instrumentation
MOVZX RDX, CL 
CMOVNS SI, DI 
TEST AX, -31153 
STC  
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RBX 
BTC RAX, -85 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 105 
BSWAP RBX 
SETLE DL 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
BTR CX, 24 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST BL, BL 
CMOVO RDI, RSI 
XADD DL, DL 
SETNZ DL 
XCHG DX, SI 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, 64 # instrumentation
SETNP AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], -107 
CMOVNB DX, DX 
CMOVNP EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
MOV RBX, RBX 
CMOVL EBX, EDX 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
JMP .bb_main.4 
.bb_main.4:
AND AL, -62 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
CMOVNLE SI, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RDI 
CMOVL ECX, ECX 
MOV RSI, -4802289472069531290 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
