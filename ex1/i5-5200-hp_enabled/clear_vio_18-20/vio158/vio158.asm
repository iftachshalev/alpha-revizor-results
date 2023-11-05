.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 57 # instrumentation
CMOVNZ SI, DX 
MOVZX ECX, BX 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 4 
MOVSX ECX, BX 
CMOVNZ EBX, ESI 
SETB BL 
CWDE  
CMOVZ EDI, ESI 
BTR EAX, 90 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], ESI 
XCHG RAX, RAX 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -53 # instrumentation
CMOVNO DI, CX 
CMOVNS EAX, ESI 
MOV BX, SI 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
SETNB AL 
SETNS AL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RAX] 
CMOVNBE BX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], 3 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
CMOVNO DX, DX 
BT RDI, RDX 
BT ESI, ESI 
BT EAX, ESI 
SETB DL 
XCHG DX, SI 
AND RDX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTS word ptr [R14 + RDX], CX 
XCHG EBX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
