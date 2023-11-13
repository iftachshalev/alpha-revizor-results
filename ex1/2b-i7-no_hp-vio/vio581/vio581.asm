.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, 18948 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
BT EDI, 123 
XOR RSI, 104 
NOT ESI 
AND RAX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DL 
BT RCX, RSI 
AND SIL, -55 # instrumentation
SETNP DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], BX 
MOVZX DI, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
SETB CL 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RSI] 
SETNL DL 
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 20 
SETNL DL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
MOV RDI, 4646377499235933562 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RCX] 
SETS AL 
XADD RDI, RDX 
SETBE AL 
CMOVNS EAX, EAX 
MOVZX RDX, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
CMPXCHG RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
