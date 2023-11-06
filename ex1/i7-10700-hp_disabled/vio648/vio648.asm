.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -59 # instrumentation
CMOVBE SI, BX 
TEST EAX, 1824076657 
XADD SIL, AL 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RCX] 
MOVSX ESI, AL 
CMOVNBE BX, AX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 117 
LEA EBX, qword ptr [RBX] 
CMOVNS RDX, RCX 
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XOR AL, -10 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RBX 
CMOVNZ CX, AX 
SETB BL 
CMOVNL DI, CX 
CMOVLE RCX, RBX 
MOVSX RAX, CL 
AND RSI, 121 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTR RCX, RSI 
LEA SI, qword ptr [RDX + RAX] 
XOR DIL, 42 
JMP .bb_main.4 
.bb_main.4:
AND SIL, -67 # instrumentation
CBW  
SETB CL 
AND BL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -324429175 
XOR DI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
XOR AX, -120 
OR DI, 0b1000000000000000 # instrumentation
BSR AX, DI 
MOVSX DI, DL 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
