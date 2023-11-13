.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 49 # instrumentation
MOV CL, DL 
SETBE DL 
AND RDI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RDX] 
CMOVNZ DX, DI 
XCHG RDI, RAX 
AND CL, CL 
MOVSX RSI, SI 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -63 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
CMOVO RDI, RDI 
BT RCX, -62 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], -30 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 519 
XOR AL, -77 
CMOVO BX, DI 
CMOVNL EBX, EDX 
BT EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RAX 
AND DL, -4 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
CMOVL ECX, ESI 
XCHG CX, AX 
XOR EAX, -414458328 
SETL DL 
OR DIL, SIL 
CMOVNZ ESI, EAX 
XCHG EBX, EAX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RAX 
BTS RCX, -29 
AND SIL, -28 # instrumentation
SETNZ SIL 
SETNS AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
