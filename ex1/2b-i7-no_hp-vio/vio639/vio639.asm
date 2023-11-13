.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 90 # instrumentation
CMOVNBE RBX, RBX 
CDQ  
SETNP DL 
LEA RBX, qword ptr [RDI + RAX] 
CMOVNS RCX, RDX 
TEST DL, 8 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], 70 
CMOVNB RDI, RDI 
SETNP CL 
TEST CX, CX 
CMOVNS RBX, RDI 
SETB DL 
BTR EAX, -26 
CMPXCHG DI, BX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 737023181 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], CL 
XCHG EBX, EAX 
AND AL, 68 
XADD DIL, AL 
TEST RAX, -217363394 
CWDE  
CMOVLE DI, AX 
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
SETNP DIL 
OR EDI, EDI 
CMOVNLE ECX, ESI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
