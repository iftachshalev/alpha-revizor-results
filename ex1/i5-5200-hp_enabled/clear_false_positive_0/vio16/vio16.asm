.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -87 # instrumentation
SETNLE SIL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RDX] 
BTS ECX, -87 
BTS ESI, EDI 
AND DIL, -98 # instrumentation
SETNO CL 
OR EAX, -294755445 
MOV EDI, 1468913428 
OR AL, -88 
JMP .bb_main.1 
.bb_main.1:
TEST AX, 5025 
BTC RCX, RSI 
OR DX, 53 
NOT BL 
STD  
MOVSX RDI, CL 
TEST AX, -18328 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RAX] 
MOVSX ECX, AL 
XCHG BL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], 91 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -68 # instrumentation
BTS RCX, -91 
CMOVNZ RDI, RAX 
CDQ  
BSWAP EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
TEST RDX, RDX 
CMPXCHG DL, SIL # instrumentation
LAHF  
XOR SIL, 6 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], -53 
SETP BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
