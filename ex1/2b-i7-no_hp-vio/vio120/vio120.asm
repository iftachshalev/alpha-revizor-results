.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -4 # instrumentation
CMOVNS DX, SI 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], 55 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RSI] 
XOR DIL, -26 
AND SI, BX 
SETNP CL 
SETNB CL 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -1932655709 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 116 
MOV SIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 111 # instrumentation
SETO AL 
SETNO CL 
AND RDX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RDX], DI 
TEST CL, CL 
XCHG DL, AL 
CMOVZ EBX, EAX 
OR AX, -11067 
MOVSX RDI, AL 
BTC RSI, 39 
AND DIL, 5 # instrumentation
CMOVNB RDX, RDX 
CMOVO RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
TEST RDI, 917574092 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], CL 
MOV CL, 97 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
BT RBX, 32 
MOVZX DX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
