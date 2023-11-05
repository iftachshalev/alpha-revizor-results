.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RAX], 7 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
MOVZX DX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
OR EAX, 2102760115 
SETNO DIL 
BTR RSI, 102 
AND CX, DI 
CMOVO EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR DI, -9 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RSI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
AND SIL, -63 # instrumentation
SETLE CL 
TEST AX, 25918 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RCX 
CMOVZ AX, BX 
LEA EDX, qword ptr [RAX + RDI + 3178] 
AND RSI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RSI], 0 
TEST RDI, RDI 
CMOVNBE RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -1581187046 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EDX 
SETBE DL 
CMOVNBE DX, BX 
CMOVP ECX, EDX 
XCHG EDI, ECX 
CMOVZ CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
