.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, 1784748650 
MOVZX CX, CL 
CMOVNO AX, DX 
CMOVNB SI, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], -107 
XCHG ESI, EAX 
SETLE BL 
CMPXCHG EAX, ECX 
AND DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -76 
SETNO AL 
SETNP DL 
NOT CL 
SETL AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDX] 
MOV BL, 101 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], ESI 
XCHG DX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], CL 
MOV AL, 117 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
OR EAX, -1932203061 
SETS AL 
LEA RSI, qword ptr [RSI + RBX + 25331] 
BTR AX, -111 
BT EDI, -117 
MOVSX EBX, DIL 
BTS AX, BX 
TEST ECX, 29599913 
SETNS CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
