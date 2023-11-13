.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -24 # instrumentation
SETNO CL 
OR RAX, -1781304888 
CMPXCHG BL, AL 
SETNBE DL 
CMPXCHG RDX, RAX 
CWDE  
CMPXCHG CL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
TEST AX, -17126 
OR BL, -98 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDX 
CMOVP RDX, RBX 
BTS SI, -12 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EBX 
MOV EAX, -2043710878 
CMOVNZ ESI, ESI 
BTR EDI, 6 
XOR BL, DL 
AND AX, 20200 
CMOVNS SI, AX 
BT DX, DI 
AND SIL, 79 # instrumentation
CMOVLE DI, AX 
AND EAX, 101 
CMPXCHG ESI, EDX 
TEST EAX, EDX 
SETNP DL 
MOVSX EAX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -24 
CMOVL RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RCX] 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
