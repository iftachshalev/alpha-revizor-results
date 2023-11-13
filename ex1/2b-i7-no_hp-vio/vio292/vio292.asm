.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, -1893469424 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], 1 
CMOVNB DI, DI 
TEST EAX, 572882964 
XOR CL, DL 
CMOVP SI, CX 
CWDE  
BT AX, -113 
XOR EAX, 665143887 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 102 # instrumentation
SETNL BL 
MOV RBX, -8736591385951308321 
OR RAX, 462603932 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
XCHG EAX, EBX 
BT ECX, 59 
BTR RAX, 5 
AND DIL, -94 # instrumentation
STC  
SETP DL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RDI] 
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], 0 
AND SIL, -9 # instrumentation
CMOVLE EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
XOR EAX, 320260540 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
BTC RCX, 56 
XOR DI, -46 
MOVZX AX, AL 
TEST RAX, 915168815 
STC  
CMOVZ ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
