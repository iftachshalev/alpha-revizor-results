.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RBX, -45 
BT EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
CMOVNB CX, CX 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 5 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, 11 # instrumentation
CMOVS BX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
TEST ESI, EBX 
NOT EBX 
CDQ  
OR RSI, RSI 
AND AL, 95 
AND AX, -2936 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -10 # instrumentation
CMOVO EDX, EAX 
CMC  
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RAX 
CMOVS ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
XOR CX, 79 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], SIL 
XCHG AL, DL 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], ESI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDX] 
OR CX, -60 
MOVZX AX, DIL 
BTC RDX, 121 
AND DIL, -61 # instrumentation
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR BL, DL 
CMOVNS RSI, RSI 
SETZ DL 
BTR SI, BX 
BTC EBX, -96 
AND DIL, 49 # instrumentation
SETO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
