.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
BTR RCX, RAX 
TEST DIL, 39 
CMOVNS RDI, RDI 
MOVZX EDX, DL 
SETBE BL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DL 
TEST DL, 93 
XADD DI, AX 
MOV DI, DI 
CMOVZ RSI, RDI 
AND AL, -61 
MOVSX DX, CL 
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], AX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -17 # instrumentation
SETB BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
TEST EAX, EAX 
BT SI, BX 
AND DIL, -39 # instrumentation
SETO AL 
AND CL, 84 
CMOVNO DI, SI 
CMOVNZ RDX, RCX 
SETNZ DL 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], 29 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], DL 
CMOVNL RDI, RBX 
BTS EBX, ECX 
CWD  
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], 72 
BTR ESI, EDX 
AND AL, -102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
