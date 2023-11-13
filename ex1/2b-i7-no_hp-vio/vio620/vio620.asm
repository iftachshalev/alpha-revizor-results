.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, -47 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 78 
CLC  
BTR RSI, 7 
BTS RCX, -83 
CLD  
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
CMOVNLE EBX, EDX 
AND BL, DL 
BTR CX, -70 
MOVSX BX, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDI] 
TEST ESI, EDI 
CMPXCHG DL, AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
AND AL, 58 
MOVZX EAX, DI 
CMOVNB EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DIL 
CMOVNLE AX, DX 
CLC  
SETNZ AL 
XOR EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RBX 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 2 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDI] 
BTC DI, SI 
AND DIL, 121 # instrumentation
SETNZ CL 
SETNLE BL 
OR EAX, 1628311028 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
