.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, 45 
XOR SIL, -62 
CMOVO RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 90 
SETNP AL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RAX], SI 
OR RSI, RSI 
XADD DL, AL 
TEST RAX, 1377109384 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], 15 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 6 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 5 
BT ESI, EBX 
AND SIL, -72 # instrumentation
CMOVNO EDI, EBX 
AND AX, 26567 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], 121 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR ESI, -109 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RCX] 
SETLE CL 
CMOVO EDI, EDI 
XCHG EDI, EDI 
AND RBX, -118 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], -10 
BTS ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
XOR CL, BL 
AND RCX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RCX] 
CMPXCHG CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
