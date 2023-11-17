.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG SI, AX 
AND RAX, -1660502816 
BTS ESI, 119 
AND SIL, -26 # instrumentation
CMOVP RSI, RDX 
CMOVNL EDI, EAX 
BTR ECX, -53 
AND DIL, 100 # instrumentation
CMOVNLE ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDI] 
NOT DI 
AND EAX, -470083722 
XCHG RSI, RCX 
CMOVO RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
MOVSX ECX, AL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR AL, CL 
CMOVNS SI, BX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
CMOVNLE DI, SI 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
BT ESI, EDX 
OR DI, DI 
AND RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
NOT CX 
CMOVP CX, DX 
OR AL, -86 
MOV DI, 28081 
JMP .bb_main.2 
.bb_main.2:
LEA EDX, qword ptr [RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], 6 
CMOVZ ECX, ECX 
BTR ESI, 97 
TEST RCX, 389532947 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
