.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 1 
TEST EAX, 1482671452 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDI] 
NOT ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], BL 
SETNO DL 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CMPXCHG RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RBX 
AND BL, CL 
TEST DL, -98 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -20 # instrumentation
CMOVP EBX, EDI 
TEST EAX, 1821043095 
CMOVL SI, DX 
AND ECX, 14 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 7 
OR DIL, CL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
OR RDX, RDI 
XADD DL, AL 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
MOV DIL, 16 
XCHG RCX, RAX 
OR EDI, EDX 
SETL CL 
OR SIL, 33 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 7 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RSI 
CMOVNS DX, BX 
TEST RDX, 459528822 
SETLE DIL 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
