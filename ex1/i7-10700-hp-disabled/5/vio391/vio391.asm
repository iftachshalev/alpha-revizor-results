.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DI, SIL 
TEST AX, DI 
AND CX, -105 
OR AX, SI 
AND EAX, -738666301 
TEST RAX, 196702517 
BT BX, SI 
NOP  
MOVSX DX, AL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RAX 
AND BL, CL 
TEST CX, 22168 
BT RSI, RBX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND SIL, -92 # instrumentation
SETNO CL 
XADD BL, DL 
CMOVZ EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -1 
NOT RAX 
SETL SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RDX 
NOT RCX 
TEST AX, -29963 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
AND EBX, 16 
MOVZX ECX, SIL 
TEST RBX, -219192479 
TEST RAX, -1855916097 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
