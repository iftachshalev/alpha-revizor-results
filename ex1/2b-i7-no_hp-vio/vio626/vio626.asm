.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ESI, 691870257 
BTS RAX, -75 
CMPXCHG EBX, ECX 
TEST RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RDI] 
CLC  
MOVZX EBX, BL 
SETL CL 
NOT AX 
CMOVL EDI, EBX 
OR EAX, 654074978 
MOVZX DI, AL 
SETNZ AL 
OR RAX, -1926507566 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RSI] 
XCHG EAX, EAX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV ESI, EDX 
XOR RAX, RDX 
XCHG ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDI] 
CMOVNLE DI, DX 
TEST AL, -46 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 105 
MOVSX EDI, CL 
SETP DIL 
MOVZX EAX, DL 
CMOVNS RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDX] 
BT RBX, RDI 
AND DIL, 93 # instrumentation
SETNP AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
