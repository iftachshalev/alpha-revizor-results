.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND ESI, ECX 
CMOVBE ESI, EBX 
MOV EAX, EAX 
SETB BL 
TEST AL, -116 
AND EDX, -105 
CMPXCHG CL, CL # instrumentation
CMOVO BX, SI 
LAHF  
CMOVNO RDX, RBX 
XOR AL, 123 
CMOVL RAX, RDI 
MOV DL, -113 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 4 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDX 
OR BL, BL 
BT CX, CX 
AND RBX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RBX], 4 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], SI 
SETS BL 
NOT RDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], ECX 
TEST AX, -20017 
XOR AL, 44 
XOR ECX, ECX 
XOR EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RAX] 
CMOVLE RDI, RDX 
XCHG RSI, RDI 
XOR RAX, 5 
AND AL, 50 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
