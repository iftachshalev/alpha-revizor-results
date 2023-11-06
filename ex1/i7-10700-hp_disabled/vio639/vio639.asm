.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 1 # instrumentation
NOP  
SETP CL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], AL 
CBW  
XCHG ECX, EDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 68 # instrumentation
CMOVNLE ECX, ESI 
SETNP SIL 
SETP DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RSI] 
MOVSX RDX, DIL 
AND EDX, 107 
JMP .bb_main.2 
.bb_main.2:
BTS EAX, 56 
AND SIL, -20 # instrumentation
CMOVO RCX, RSI 
MOVZX DX, AL 
CMPXCHG BL, AL 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -1544940245 
SETLE BL 
CMOVLE CX, SI 
JMP .bb_main.3 
.bb_main.3:
TEST BL, BL 
TEST DIL, 18 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
SETO SIL 
JMP .bb_main.4 
.bb_main.4:
MOVSX CX, CL 
XOR RDX, RSI 
BTS ECX, EAX 
OR AX, 25813 
BTR RAX, 8 
AND SIL, 0 # instrumentation
SETP AL 
CMOVNO RDX, RAX 
OR EAX, EAX 
XADD DL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
