.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -42 # instrumentation
SETB BL 
XCHG RBX, RAX 
LEA BX, qword ptr [RAX] 
CMOVP ECX, EDX 
MOV EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 2 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 11 # instrumentation
MOVSX RAX, BX 
NOT SI 
CMOVZ RAX, RDX 
CMOVO BX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RCX] 
XOR EAX, EAX 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
XOR BL, AL 
BT ECX, -54 
OR EAX, 36 
NOT DX 
TEST RAX, 1826985077 
OR DIL, 1 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX ESI, AL 
XADD AL, BL 
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
BTC SI, 62 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], EBX 
SETNS CL 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTS ESI, ECX 
AND CL, AL 
BTC SI, SI 
AND DIL, -83 # instrumentation
CMOVNS DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
