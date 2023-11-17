.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 33 # instrumentation
SETL DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
XADD DL, BL 
XOR BX, 118 
MOVSX RCX, DX 
TEST DIL, 44 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 3 
AND RDI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RDI] 
AND RCX, 10 
XCHG RAX, RAX 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR RDI, RSI 
AND SIL, 9 # instrumentation
SETNS AL 
SETLE SIL 
TEST EDI, EDX 
SETS DL 
BTS RAX, 38 
BT EDX, 49 
CMC  
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
XADD DL, DL 
CWDE  
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
CMOVNB DI, DI 
NOP  
MOV RDX, RSI 
MOV RCX, RDX 
CMOVO AX, AX 
AND AL, -95 
CMOVP SI, BX 
BT ESI, 101 
AND SIL, -17 # instrumentation
SETNLE AL 
SETNZ AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
