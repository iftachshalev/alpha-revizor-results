.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 121 # instrumentation
XCHG DL, DL 
SETNLE DL 
XOR CL, CL 
TEST AL, AL 
SETBE AL 
LEA EDI, qword ptr [RBX] 
BTR RDX, 110 
XOR AX, 1986 
STC  
AND EAX, 904110265 
OR EDI, -75 
MOVSX SI, CL 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDX] 
CMPXCHG CL, DL # instrumentation
CMOVS EDX, EDI 
LAHF  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 72 # instrumentation
XCHG BX, DI 
CMOVBE RCX, RDI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
AND DIL, 48 # instrumentation
CBW  
CMOVNBE EBX, EDX 
TEST RAX, -933153238 
XOR RDX, RDX 
CMPXCHG DX, DX 
CMPXCHG AL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], DX 
XCHG DL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], ESI 
TEST EBX, 1568726376 
CMOVNBE AX, DI 
AND BX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
