.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, -34 
MOVZX AX, DL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
BT RSI, RDX 
XADD AX, DX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -14 # instrumentation
MOVSX EAX, CL 
SETP CL 
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RDX], RDX 
AND DIL, -99 # instrumentation
CMOVLE RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -104 
AND RSI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RSI] 
BTS EDI, EAX 
AND SIL, -117 # instrumentation
SETNS AL 
CMOVNZ SI, BX 
TEST AX, -11669 
CMOVP RCX, RBX 
SETNB DIL 
TEST RCX, 1709091414 
CLD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
AND RDX, RCX 
SETNS CL 
MOV EDX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RBX], SI 
CMOVNB RBX, RAX 
AND SIL, -81 
CMOVNS CX, DX 
OR ESI, ECX 
CMPXCHG RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
