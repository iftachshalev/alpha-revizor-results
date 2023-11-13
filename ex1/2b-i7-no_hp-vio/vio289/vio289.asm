.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RDI 
CMOVLE BX, DX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], EDX 
CMOVP DI, DX 
CMOVNP EDX, EDI 
BTR RBX, 25 
OR BX, AX 
OR RBX, 17 
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
STC  
BTC RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -23 # instrumentation
CMOVNZ RCX, RDX 
CMOVNP CX, DI 
SETL CL 
CMOVLE RAX, RDX 
AND RAX, 918717149 
CMPXCHG DL, DL # instrumentation
LAHF  
SETNZ DL 
SETNS BL 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RCX], 4 
AND RCX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RCX], 2 
TEST DIL, -57 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], DL 
XCHG RBX, RBX 
TEST AX, 2127 
XOR EAX, 1589853870 
XOR DL, -7 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
