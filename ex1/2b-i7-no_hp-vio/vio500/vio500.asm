.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 76 
CMOVB ECX, EDI 
MOV EDI, -1499195639 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
MOVZX CX, SIL 
CMOVNS ESI, EDI 
AND CL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], EDI 
AND SIL, -108 # instrumentation
CMOVO EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], CL 
SETNO AL 
BTR RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EAX 
CMOVP EDX, ESI 
BTR CX, DX 
CMPXCHG AL, DL 
XADD SIL, AL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, -2058143732 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
SETNB AL 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], DL 
XOR ESI, ECX 
BTC BX, -75 
SETNB SIL 
BTS RSI, -89 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RDX 
SETL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
