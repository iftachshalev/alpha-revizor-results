.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -43 # instrumentation
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], -1 
CMC  
TEST EAX, 1298757458 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], -39 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], AX 
SETB BL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
AND DIL, 6 # instrumentation
CMOVNL CX, DX 
NOT BL 
SETBE SIL 
JMP .bb_main.1 
.bb_main.1:
MOVSX EDX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
BTC SI, DI 
MOVSX ESI, BX 
LEA DI, qword ptr [RSI + RBX] 
BT CX, AX 
CMOVNB ESI, EAX 
OR AL, -61 
XOR ECX, 49 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
XCHG CX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], RSI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], DI 
SETS BL 
MOVSX CX, CL 
XCHG DX, AX 
BTR RSI, RDI 
AND DIL, 34 # instrumentation
CMOVNLE EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
