.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DL 
CMOVZ AX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
BT ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
BTR RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
SETBE DL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 94 # instrumentation
SETS DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
CMOVNS ESI, EAX 
CMOVP DX, CX 
CMPXCHG DX, AX 
CMOVNL EAX, EAX 
OR EBX, EBX 
SETO CL 
CMOVS RBX, RAX 
SETNL CL 
CMOVNO RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDI] 
CMOVP ECX, ESI 
XADD BL, DL 
NOT AL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -7 # instrumentation
CMOVNS EBX, EAX 
XCHG DL, BL 
XCHG CL, CL 
CMOVP BX, DI 
AND EAX, -1694977466 
CMOVNBE RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], EDI 
CMOVNLE EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
