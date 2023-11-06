.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD CL, SIL 
AND DIL, CL 
CMOVNB DX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], -9 
CMOVO EDX, EDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS ESI, 127 
XOR AL, SIL 
CMPXCHG CL, DL # instrumentation
LAHF  
XADD ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RSI] 
AND EAX, -123 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DX 
MOVSX CX, DL 
OR ESI, ECX 
JMP .bb_main.2 
.bb_main.2:
AND AL, 68 
CMOVLE RDI, RBX 
LEA RSI, qword ptr [RBX] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], BL 
SETNS SIL 
BTR RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
CMOVNO SI, AX 
SETNZ BL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -94 # instrumentation
SETNZ CL 
AND AL, -67 
SAHF  
CMOVNL ESI, EAX 
NOT RAX 
XOR AX, -37 
CMOVL CX, DX 
MOVSX EBX, AL 
CMOVNP RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
