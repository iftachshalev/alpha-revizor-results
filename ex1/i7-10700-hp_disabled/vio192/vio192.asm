.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RAX] 
OR SI, 54 
SETLE DL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
AND DIL, 46 # instrumentation
CMOVBE ECX, ECX 
NOT RSI 
CMOVNS DI, BX 
CMOVS RSI, RDI 
BTR ECX, EBX 
BTS EDX, EDI 
AND DI, 41 
XOR RAX, 1699961909 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
AND SIL, DIL 
AND BX, DI 
TEST BL, AL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDI] 
CMOVO EAX, EDI 
BT CX, AX 
AND SIL, 114 # instrumentation
CMOVNS DX, DI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RCX] 
BT EAX, 76 
BT RDI, -62 
SETNB DL 
MOVSX BX, CL 
MOV RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], DIL 
XOR DIL, -48 
CMOVZ EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 6 
XOR RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
