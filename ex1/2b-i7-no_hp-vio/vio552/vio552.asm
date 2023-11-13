.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
LEA SI, qword ptr [RDI + RDI] 
SETP BL 
XCHG BL, AL 
BT EDI, -111 
TEST RAX, RAX 
BT RDX, RDI 
BTC ECX, ESI 
XCHG RCX, RSI 
BSWAP RBX 
CMOVNZ AX, DI 
SETBE CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], BL 
CMPXCHG DIL, SIL 
BT EAX, EDI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDX] 
BTR RDX, RCX 
AND SIL, -86 # instrumentation
STD  
XCHG ECX, EAX 
CMOVNLE RDI, RDI 
MOVSX AX, SIL 
CMOVP EBX, ESI 
CMOVNS RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RAX] 
SETZ DL 
MOV ECX, EDX 
XCHG DIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
