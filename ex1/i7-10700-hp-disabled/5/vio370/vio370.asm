.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 30 # instrumentation
SETS BL 
MOV BX, AX 
SETNS BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], EAX 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDI] 
MOVSX RCX, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RBX] 
CBW  
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
SETP CL 
MOVZX EAX, BX 
XOR EAX, -291522016 
OR EAX, EDX 
OR EAX, ESI 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV BL, AL 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 4 
AND SIL, 84 # instrumentation
CMOVZ EAX, EDI 
CMOVNL BX, CX 
XADD EAX, ECX 
NOT SI 
AND BX, BX 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
OR RAX, -1894008230 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTS RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], -81 
STC  
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RSI], 3 
TEST CX, DI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
