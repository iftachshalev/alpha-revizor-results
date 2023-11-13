.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST BL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
MOV ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
SAHF  
MOV RBX, RAX 
SETP CL 
OR AL, BL 
MOVSX AX, DL 
MOVSX ECX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RBX] 
CMOVNLE RDI, RBX 
OR CX, 0b1000000000000000 # instrumentation
BSR CX, CX 
OR RBX, 94 
XADD CL, AL 
NOP  
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 62 # instrumentation
LEA DI, qword ptr [RAX] 
SETNO DIL 
CMC  
BT EAX, ESI 
AND DIL, -37 # instrumentation
SETS BL 
CMOVNB DX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RSI] 
CMOVP RSI, RDI 
XCHG EBX, EDI 
AND AL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
XADD RDX, RDX 
CMOVLE DX, DX 
SETNL BL 
SETLE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
