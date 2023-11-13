.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG DL, BL # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
LAHF  
TEST AL, 113 
XOR SIL, -91 
TEST SIL, 122 
CMC  
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 4 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
SETNBE DIL 
XCHG RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
NOT ECX 
SETB CL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], ECX 
CMOVNZ SI, CX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RDI] 
CMOVNZ CX, BX 
SETNZ BL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], ESI 
SETL DIL 
CLC  
MOVSX EAX, AL 
NOT SI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
CMOVP RDI, RDI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
XOR AX, 12422 
SETNB CL 
XADD RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
