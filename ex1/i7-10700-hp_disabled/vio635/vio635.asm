.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RCX, RSI 
CMOVNP EBX, ESI 
XADD RDX, RDI 
CMOVP ECX, ECX 
CMOVL SI, BX 
BTR RSI, -72 
OR ESI, EAX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX EAX, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RSI] 
MOV EAX, -475005158 
BSWAP RAX 
CMOVZ EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDI] 
CMOVZ AX, BX 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG AL, DL 
CMOVZ DX, CX 
SETNP AL 
CMOVP ESI, EBX 
CMOVBE CX, DI 
CMOVZ EDI, EDI 
CMOVL CX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
CMPXCHG AX, CX 
TEST EAX, -108506498 
BT DX, SI 
AND SIL, -61 # instrumentation
SETB DL 
CMOVNBE ESI, EDI 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 7 # instrumentation
CMOVLE RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RBX] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
