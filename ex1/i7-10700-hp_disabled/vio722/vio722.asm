.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 36 # instrumentation
SETBE DL 
AND AL, 15 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
CMOVNZ DX, BX 
STC  
BTR BX, BX 
AND AL, AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 19 # instrumentation
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
STD  
CMOVNP DI, DX 
AND RSI, RAX 
BTC EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
AND DIL, -76 # instrumentation
CMOVNS RCX, RDI 
NOT EDI 
BT AX, -46 
AND DIL, -111 # instrumentation
CMOVO CX, DI 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -126 # instrumentation
CMOVO DI, SI 
XOR RDX, RAX 
MOVSX RSI, SIL 
CMOVNL EAX, EBX 
CMOVNL ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], -24 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
CMOVNLE ESI, EDX 
BT DX, -96 
OR DIL, 107 
MOV CX, -4078 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
