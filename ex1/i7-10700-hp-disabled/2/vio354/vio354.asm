.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -122 # instrumentation
SETNS CL 
XOR EAX, 1478195951 
LEA RSI, qword ptr [RSI + RAX] 
CMOVBE EDI, EAX 
CMOVL BX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EBX 
MOVZX ECX, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ESI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 48 # instrumentation
CMOVNZ ECX, EBX 
SETNBE DL 
XCHG ECX, ECX 
CMOVNS RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 38 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 108 
BT EAX, -101 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
OR RAX, -774012866 
BTR DI, DX 
CMPXCHG RSI, RSI 
CMOVNL ECX, EDX 
AND EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
TEST RAX, 1528780820 
TEST RAX, 1772836559 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RSI] 
SETP AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
