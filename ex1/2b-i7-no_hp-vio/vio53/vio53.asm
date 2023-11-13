.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -58 # instrumentation
CMOVO AX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], CX 
CMOVNLE EAX, ESI 
CMOVNS RDX, RCX 
XCHG RAX, RDI 
CMPXCHG DX, DX 
AND AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
CMOVNS RDX, RBX 
AND RAX, 1829266978 
XADD DL, AL 
CMOVBE RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RSI] 
OR EAX, 1557759346 
TEST DIL, 120 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RAX, -1936486758 
CMOVB EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
XOR RSI, RAX 
CMOVNLE BX, SI 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
CMOVNL EDI, EAX 
AND DIL, 108 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], ESI 
XADD BL, CL 
BTS AX, 4 
XOR RBX, 86 
AND CL, AL 
SETL SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
