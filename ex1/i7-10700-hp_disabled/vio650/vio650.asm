.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -55 # instrumentation
XCHG RDI, RAX 
CMOVS DX, BX 
XOR RSI, RCX 
CMPXCHG CL, AL # instrumentation
CMOVO DX, BX 
CMOVL DX, AX 
LAHF  
LAHF  
SETNBE BL 
SETO CL 
JMP .bb_main.1 
.bb_main.1:
CMPXCHG ESI, EAX 
XCHG CL, AL 
CMPXCHG AL, AL 
XOR DL, 64 
MOV BL, CL 
BTR DI, -72 
AND DIL, -71 # instrumentation
SETNS AL 
NOT DL 
TEST DL, -70 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -40 # instrumentation
CMOVNB BX, CX 
CMOVBE RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 113 
SETNP SIL 
SETNO BL 
CMC  
SETNBE DL 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], -82 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RDX] 
MOVZX EBX, AL 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND EDX, -109 
XCHG EAX, EAX 
SETP AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
