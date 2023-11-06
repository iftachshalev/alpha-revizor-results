.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EAX, -101 
SETNP CL 
BTC EAX, -84 
AND SIL, 66 # instrumentation
SETNS DL 
SETLE DL 
MOVSX EDX, BL 
CMPXCHG CL, AL 
CMOVNB ESI, ESI 
MOVZX RSI, AL 
NOT AL 
TEST AX, -26179 
SETB AL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BTR EBX, EAX 
XOR EDX, EBX 
SETNB DL 
AND AL, BL 
SETS AL 
MOV RDI, 4001469733269889711 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], -60 
CMOVNLE DI, DI 
JMP .bb_main.2 
.bb_main.2:
OR CL, BL 
LEA AX, qword ptr [RAX + RCX] 
OR AX, DI 
AND CL, DL 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RBX 
AND EAX, EAX 
CMOVBE RCX, RCX 
CLC  
CMOVNL DI, AX 
CMOVNS EBX, EDX 
MOVZX RAX, BX 
MOVZX SI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
