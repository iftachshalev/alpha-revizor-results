.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RSI, 259814817 
XOR SI, 50 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTS qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RDX], EDX 
AND SIL, -11 # instrumentation
CMOVO DI, SI 
SETO BL 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -19 # instrumentation
CMOVO RBX, RBX 
CMOVNO DI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
OR EAX, ECX 
BT EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
MOVSX EDX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
NOP  
XCHG AX, DI 
SETNP DIL 
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 4 
CMOVB ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RAX] 
BTC SI, DX 
XOR EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 118 
XCHG EAX, EAX 
SETO BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], AL 
TEST DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
