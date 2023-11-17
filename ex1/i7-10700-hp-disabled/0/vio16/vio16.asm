.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG SIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
OR AX, -30044 
SETB DIL 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 108 # instrumentation
XCHG RDX, RAX 
NOT DIL 
CMC  
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], CL 
MOV RDI, -8845633376025448554 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 115 # instrumentation
SETNZ AL 
OR EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -79 
SETO AL 
TEST EDI, -1114178880 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -99 # instrumentation
SETNBE BL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
BT CX, SI 
BTC RBX, RDX 
BT RDI, RDX 
AND SIL, -95 # instrumentation
CMOVS RDX, RSI 
CMPXCHG ESI, EAX 
XADD DL, DL 
CMOVNLE ECX, EDX 
SETNP DL 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -115 # instrumentation
LEA RDI, qword ptr [RDX + RBX] 
CMOVL DI, SI 
MOVZX ECX, AX 
CMC  
BT RSI, RBX 
MOV BL, CL 
AND EAX, -1604179963 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
