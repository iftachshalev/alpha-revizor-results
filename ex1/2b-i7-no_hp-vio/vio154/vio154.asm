.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RBX] 
BTS RAX, RSI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
CWD  
BTS RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], RSI 
LEA BX, qword ptr [RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], -35 
TEST RAX, 710748586 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
CLC  
AND RDI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RDI] 
SETNB CL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
XADD DL, AL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
CMOVS RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 53 
AND CL, DL 
BT EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -65 
TEST SIL, -102 
AND EAX, -206058648 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
BSWAP RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
CMOVBE BX, DI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
AND AL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
