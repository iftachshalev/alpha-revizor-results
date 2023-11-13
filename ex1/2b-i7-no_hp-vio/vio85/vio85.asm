.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -28 # instrumentation
CMOVLE DX, DI 
CMOVNBE EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 66 
SETL SIL 
XCHG DX, AX 
MOVSX DX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], 88 
TEST ECX, 1413979435 
MOVSX DI, SIL 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 4 
AND DIL, 45 # instrumentation
CMOVNP ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
BTR ECX, 87 
AND DIL, 91 # instrumentation
XCHG CX, AX 
CMOVNLE DX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], AL 
BTC RCX, -107 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 28 # instrumentation
CMOVNL EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDI] 
BT BX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND DX, AX 
XOR ESI, EAX 
TEST RAX, 1515173763 
CMOVNLE AX, SI 
MOV BX, AX 
SETNB AL 
BTC RSI, 13 
AND SIL, -29 # instrumentation
CMOVO DX, BX 
XOR AX, -2323 
XOR RAX, 96343454 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
