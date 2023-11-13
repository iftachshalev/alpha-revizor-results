.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, -1329718910 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RCX] 
CMOVNO EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], -35 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RSI] 
SETNP CL 
XOR AX, -31924 
AND RAX, 479731410 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 
CLC  
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AL, 109 
SETNZ CL 
CMOVNB RDI, RCX 
SETLE CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
TEST EAX, 443188981 
AND RDX, RDI 
XADD CL, AL 
CMOVNS CX, DX 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTC qword ptr [R14 + RCX], RBX 
BTS CX, BX 
AND SIL, -79 # instrumentation
SETO DL 
MOV SI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], -19 
CMOVP RBX, RBX 
BTS RAX, 65 
AND SIL, -84 # instrumentation
SETNS CL 
OR ECX, EDX 
XOR SI, AX 
BTR RBX, RSI 
BT AX, DI 
AND DIL, 117 # instrumentation
SETO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
