.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, AL 
CMOVNO SI, DX 
XOR AX, 10836 
AND EAX, -776848657 
MOVZX RCX, CX 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
XOR AL, 108 
SETNLE CL 
MOVZX RSI, DX 
BTC DI, CX 
AND DIL, 108 # instrumentation
CMOVNO SI, CX 
AND RBX, -45 
SETZ DL 
XOR SI, 28 
OR SI, SI 
CMOVNLE EDI, EDI 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, 24 # instrumentation
SETNBE SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RSI] 
SETLE DIL 
SETLE AL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
CMPXCHG CX, DI 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], -117 
CMOVNZ DI, SI 
AND ECX, ECX 
BTC RDI, 83 
CMOVNB BX, CX 
JMP .bb_main.4 
.bb_main.4:
AND AX, 26966 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
CMOVP RAX, RBX 
CMPXCHG RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
