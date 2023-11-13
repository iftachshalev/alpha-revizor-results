.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS DI, SI 
XOR AX, 20366 
CMOVNS ECX, EDX 
AND AL, DIL 
NOT DIL 
XOR RDI, RCX 
CMOVP ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ESI 
MOV RDI, RDX 
CMOVS RAX, RCX 
CMOVNP RBX, RDX 
BTC CX, CX 
BTS CX, 80 
BT AX, -20 
AND SIL, 22 # instrumentation
CMOVNO RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], EDX 
BSWAP ESI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -14 # instrumentation
CMOVNLE CX, SI 
BT ESI, ESI 
AND DIL, -3 # instrumentation
CMOVNLE EAX, ESI 
CMOVO RSI, RDX 
XCHG AX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
CMOVNLE DX, BX 
CMOVZ RCX, RSI 
XOR DIL, -43 
CWD  
AND RBX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RBX] 
BTC EAX, EBX 
XOR RAX, -1955018915 
CMOVNP RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
