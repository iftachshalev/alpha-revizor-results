.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], ECX 
MOVZX AX, DL 
AND RDI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BT word ptr [R14 + RDI], CX 
AND DL, AL 
TEST AL, 38 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
OR ECX, -61 
CMOVNZ DI, SI 
OR DIL, -4 
SETNBE CL 
SETNLE CL 
CMOVP RSI, RDX 
CMOVNLE BX, BX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -74 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 87 # instrumentation
SETNS AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], DX 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RBX], BX 
AND SIL, 1 
SETNBE BL 
NOP  
CLD  
XADD DX, BX 
SETNL CL 
XOR EAX, 521835554 
BT BX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
TEST CL, -43 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RBX] 
AND RDX, 31 
AND EAX, -1056505118 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
