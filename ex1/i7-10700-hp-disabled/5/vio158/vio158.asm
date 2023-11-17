.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EDI 
CMOVS RAX, RBX 
BT RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -1595268608 
CMOVNS EAX, EBX 
MOVSX RDX, AX 
MOV ESI, 372458396 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], 104 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -5 
XOR AL, 52 
XOR CL, 56 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RCX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RCX] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, 51 # instrumentation
MOV EBX, ECX 
SETP CL 
CMPXCHG RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EDX 
OR EBX, 65 
TEST SIL, -91 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
MOV RCX, 1793038691202576657 
STC  
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
MOV ECX, -762687647 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 39 # instrumentation
MOV AL, -78 
MOVSX EDI, DIL 
SETB SIL 
TEST DIL, -61 
AND RSI, 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
