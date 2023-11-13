.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 52 # instrumentation
CMOVL EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RSI] 
CMOVNBE RAX, RCX 
CMOVS EAX, EBX 
TEST EBX, -1135158828 
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
BTC EBX, EDX 
CMOVZ SI, SI 
MOVZX SI, CL 
OR AL, -121 
CMOVNP RDI, RBX 
XADD CX, AX 
SETNL CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS RBX, 26 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
NOT AL 
CMPXCHG SIL, SIL 
BTS RDX, RDX 
AND DIL, 124 # instrumentation
CMOVL EBX, ESI 
TEST AX, 25352 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RBX] 
XCHG AL, AL 
TEST DX, DX 
MOV DL, 101 
STD  
SETB DL 
TEST SIL, DIL 
XCHG ESI, EAX 
CBW  
OR AX, 30675 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
