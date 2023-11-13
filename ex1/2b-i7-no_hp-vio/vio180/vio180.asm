.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 3 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
SETBE AL 
BTR AX, -33 
AND SIL, -76 # instrumentation
CMOVNS EBX, ECX 
AND BL, 19 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
XOR RAX, 626682096 
BT EDI, EDX 
BTS RCX, RDX 
AND EAX, -472587561 
CMOVNO EBX, ECX 
TEST CL, AL 
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EBX 
BTS BX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RSI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC ECX, EDX 
AND SIL, -126 # instrumentation
SETNLE SIL 
XOR RBX, RDI 
CMOVNL RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
SETB CL 
MOVZX RDX, CX 
BTC DX, -24 
AND SIL, -18 # instrumentation
CMOVLE EBX, EDI 
CMOVNZ DI, AX 
CMOVNO RDX, RDI 
XCHG BL, BL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], DI 
BTS EBX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
