.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 55 # instrumentation
SETNS BL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -77 
SETZ SIL 
CMOVNO AX, DI 
XADD SI, DX 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], EBX 
XOR EDX, 45 
BTC DX, BX 
AND DIL, 113 # instrumentation
MOV AL, 69 
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], BX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 22 # instrumentation
CMOVNBE DI, DX 
OR RAX, 630210857 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RBX] 
MOVZX RDX, BL 
MOV RBX, -2935237140223976234 
MOVSX RSI, DX 
TEST RAX, 682703254 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 0 
MOVZX RBX, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RCX] 
CMOVNP RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], -36 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
CMPXCHG SIL, DL 
SETNBE DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
