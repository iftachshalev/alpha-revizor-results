.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT CL 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND EAX, EBX 
CMOVBE RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
CBW  
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], AX 
CMOVLE SI, BX 
SETLE SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], 6 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD EDI, ESI 
CMOVNLE RCX, RBX 
SETLE DL 
CLC  
CMOVO RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDX] 
CLC  
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 2 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
LEA SI, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
CDQ  
MOV RDX, 7150519771575644153 
TEST EDX, EAX 
CMOVZ RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], CX 
OR DL, -20 
TEST DIL, 55 
CMOVNS RDI, RDX 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
