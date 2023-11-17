.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RSI, -1629583675 
XADD RSI, RDX 
OR AX, -18889 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDI], 2 
AND DIL, -15 # instrumentation
SETNS DIL 
BTR ESI, EDI 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RSI] 
XADD ESI, ESI 
OR RAX, 1519924678 
TEST AX, CX 
CMOVB EAX, ESI 
BT EBX, -63 
CWD  
JRCXZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XADD RSI, RCX 
CMPXCHG DIL, DL 
XOR RBX, RDX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -106 # instrumentation
CMOVP SI, DX 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
XOR EAX, -725615422 
OR BL, BL 
NOT BL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
CMOVNLE EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -108 
LEA ESI, qword ptr [RDX + RDX] 
XCHG BL, AL 
AND RBX, RDX 
CMPXCHG DL, AL # instrumentation
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
