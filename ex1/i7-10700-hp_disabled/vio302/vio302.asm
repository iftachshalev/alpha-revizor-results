.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT DX, -100 
XADD RAX, RSI 
SETNB BL 
SETNL DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], AX 
XCHG ECX, EDX 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -107 # instrumentation
CMOVP EDI, EBX 
CMOVNBE RBX, RCX 
SETS BL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RDX 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
CMOVNZ ECX, EAX 
BTC RDX, -39 
JMP .bb_main.2 
.bb_main.2:
BTS ESI, EDI 
TEST EDX, 1621357384 
TEST AX, -28963 
OR EDI, -124 
XCHG DL, SIL 
BTR EBX, ECX 
TEST ECX, 300120675 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 25 # instrumentation
SETNZ SIL 
SETNP AL 
SETNLE AL 
NOT EBX 
TEST ECX, EDI 
MOVZX RDX, AL 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
CMOVNL RSI, RAX 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND DIL, 27 # instrumentation
CMOVNBE RSI, RDX 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
