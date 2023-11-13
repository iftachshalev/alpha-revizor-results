.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT BL 
OR DL, 52 
SETNS CL 
OR AL, DL 
SETP BL 
TEST AX, -8118 
CMOVO EDX, EDI 
SETNB CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -25 # instrumentation
SETS AL 
BTS EDI, EDI 
TEST AX, -25908 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RBX] 
MOVSX EDI, CL 
MOVZX ESI, CL 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
MOVSX CX, SIL 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
MOV DI, SI 
MOV RAX, 4665116844622980156 
CMOVL RSI, RDI 
NOT CL 
CMOVO RBX, RDI 
BTS AX, -105 
XADD RSI, RDI 
CMPXCHG RBX, RAX 
CMOVNLE RAX, RBX 
CLD  
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
XCHG EDI, EAX 
TEST DIL, 100 
MOV DL, 7 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
