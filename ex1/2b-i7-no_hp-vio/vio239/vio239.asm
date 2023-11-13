.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], SIL 
CMOVBE RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -123 
MOV DX, DI 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], AL 
CMOVNL EDI, EDX 
SETLE AL 
LEA ESI, qword ptr [RAX + RBX] 
CMOVNBE ESI, EDX 
SETNBE AL 
MOV DX, AX 
CMOVLE RDX, RBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -36 # instrumentation
CMOVNS EAX, EDX 
TEST AL, -72 
CMOVNBE EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 6 
STD  
BT DI, DI 
MOV EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 6 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
TEST RBX, 939199684 
TEST CL, 37 
CBW  
AND ESI, 70 
CMPXCHG CX, CX 
AND AL, -117 
SETNO DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDI] 
CMOVZ SI, BX 
XCHG ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
