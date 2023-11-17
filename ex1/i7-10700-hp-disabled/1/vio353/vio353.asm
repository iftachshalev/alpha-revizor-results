.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, 889283622 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RSI] 
TEST AX, -4931 
TEST SIL, AL 
CMOVB AX, BX 
TEST AL, 100 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
BTS AX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDX] 
XCHG ESI, EAX 
XOR SIL, -104 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG AL, AL # instrumentation
CMOVO EBX, dword ptr [R14 + RDI] 
LAHF  
XOR DL, CL 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
MOV CL, DL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DIL 
CMOVNP RCX, RCX 
CMOVNP EBX, EDX 
AND CL, DIL 
BT AX, -60 
AND DIL, -126 # instrumentation
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -42 # instrumentation
CMOVB AX, BX 
XADD EAX, EBX 
OR AX, SI 
SETNO CL 
XCHG DL, BL 
JMP .bb_main.4 
.bb_main.4:
MOV DX, DI 
BTR DX, SI 
TEST RSI, 720669340 
BTR EDI, EAX 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
