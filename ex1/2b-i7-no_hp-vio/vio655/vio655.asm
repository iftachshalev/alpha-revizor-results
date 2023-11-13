.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
MOVZX ECX, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDI] 
SETS CL 
AND DL, -97 
MOV DL, 17 
SETNL BL 
CMOVBE RDX, RBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
AND DIL, -21 # instrumentation
CMOVO RDX, RBX 
XADD DIL, CL 
NOT CL 
CMPXCHG BX, BX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RSI] 
XOR EDI, EDI 
NOT RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 0 
AND SIL, -51 # instrumentation
MOVSX EAX, BL 
CMOVO ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
XOR RDX, -100 
CMPXCHG RDI, RBX 
SETB DIL 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTC qword ptr [R14 + RBX], RDI 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
BTR EBX, EAX 
BTR RCX, RBX 
AND SIL, 19 # instrumentation
CMOVBE DX, AX 
CMOVNLE DI, DI 
XOR RBX, RDI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
