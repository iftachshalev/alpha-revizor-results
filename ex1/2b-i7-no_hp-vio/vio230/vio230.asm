.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC ECX, EDI 
AND DIL, -114 # instrumentation
SETNL CL 
BTC ECX, ESI 
TEST BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
XCHG ECX, EAX 
XOR AX, -26 
NOT EAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DI, DI 
AND CX, -58 
SETNB AL 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], ESI 
TEST AL, -90 
TEST SIL, -62 
XADD EAX, EDX 
XOR ECX, -22 
XOR AX, 119 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], SIL 
XOR RAX, 447625243 
MOV BL, 68 
OR AL, 27 
CMOVNLE RDX, RBX 
TEST CL, -2 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
CMOVNO EDX, ECX 
OR DL, SIL 
CMOVNB EBX, ESI 
NOT DL 
MOVSX RAX, DL 
BT RBX, 51 
XCHG CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
