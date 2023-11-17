.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
NOT BL 
CWDE  
CMOVNO EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
CMOVNB RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RSI] 
SETNZ SIL 
CMOVNP EBX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RCX 
XOR EAX, -1108150750 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], 2 
BTS BX, DI 
XADD CL, DIL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], ECX 
SETB BL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTC EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], CL 
CMOVO RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
OR AL, -25 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
XOR AL, -3 
CMPXCHG CL, CL 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR DX, SI 
XADD DIL, CL 
BTC RAX, -57 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
XOR AL, 50 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
