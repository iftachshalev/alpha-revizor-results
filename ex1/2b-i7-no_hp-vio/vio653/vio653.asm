.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -112 # instrumentation
CMOVNP EDI, EDX 
CMOVNS EAX, EBX 
SETLE BL 
CMOVS ECX, EBX 
TEST RAX, -1529972162 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
TEST EAX, 408665455 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
CMOVL RDX, RBX 
NOT EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDX] 
CMOVNZ EBX, EAX 
XCHG EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RAX] 
BTS BX, 7 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 13 # instrumentation
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
MOV ECX, -405207120 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], CX 
MOVSX SI, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
MOV EDI, -1210548256 
AND AX, -12169 
BTS BX, AX 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RCX 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RBX 
AND DIL, 96 
XCHG RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
