.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DX, 64 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RCX 
AND RDX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RDX], ECX 
CWD  
XOR RAX, -1734654782 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -1788328880 
SETO CL 
CMOVNLE ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
BTC RAX, 110 
XCHG AX, DI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
NOP  
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
CMOVL RDI, RCX 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DX 
CMOVLE RSI, RBX 
OR DIL, AL 
CDQ  
TEST RAX, 2064181296 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -58 
MOV EAX, 980512948 
SETB CL 
AND RDX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDX] 
MOV AL, BL 
CMC  
OR RCX, RBX 
NOT AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
