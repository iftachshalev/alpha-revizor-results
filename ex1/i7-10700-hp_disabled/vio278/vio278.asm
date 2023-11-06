.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EAX, 1873272842 
OR DI, -79 
JRCXZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDX] 
BT RDI, 84 
MOV DL, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 122 # instrumentation
CMOVNL RAX, RAX 
MOV CL, 25 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 11 
CMOVL RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
TEST EDI, 1490729542 
CMOVO RDI, RSI 
JMP .bb_main.3 
.bb_main.3:
LEA RSI, qword ptr [RAX + RSI] 
BT ECX, -86 
AND SIL, -79 # instrumentation
XCHG SI, AX 
CMOVL RBX, RDX 
CMOVNBE EDI, ESI 
AND EAX, ESI 
TEST DIL, -105 
CMOVS SI, DI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RCX] 
AND SIL, -74 # instrumentation
CMOVB CX, BX 
MOVZX EDX, CL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -41 # instrumentation
MOV RDX, RBX 
CMOVNBE EDX, ECX 
CMOVNL EDI, EAX 
CMOVBE DI, SI 
CMOVNBE EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], CL 
SETLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
