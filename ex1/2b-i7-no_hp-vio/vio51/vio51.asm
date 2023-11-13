.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 13 
AND RDX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDX], 5 
CMC  
AND RCX, RCX 
SETNLE AL 
CMOVLE EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RDX], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DX 
CMOVNB RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RDX] 
CMOVL EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], 35 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], DL 
CMOVNB AX, CX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 847172810 
CMOVNL EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
CMOVL SI, DI 
CMPXCHG RSI, RBX 
OR EAX, -114 
CWD  
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RDX 
TEST SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RDX], ECX 
XOR RAX, -2094433566 
MOV RBX, RDI 
CMOVNLE EDI, ECX 
XOR RAX, 1789780245 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], SI 
OR AX, -9083 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
CMOVNS DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
