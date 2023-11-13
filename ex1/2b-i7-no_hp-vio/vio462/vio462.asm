.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 55 
CMOVLE CX, DX 
CMOVP ESI, EAX 
SETNZ BL 
AND DI, DX 
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RSI] 
MOVSX ESI, BX 
XOR AX, -4785 
NOP  
NOT SI 
TEST RAX, -582838944 
CMOVNP EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RSI] 
SETNB CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, -53 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RAX 
CMPXCHG BX, DI 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
CMOVS DX, DX 
CMOVNP RBX, RCX 
BTR RBX, -28 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDI 
XADD DI, SI 
CMOVL EDX, EAX 
MOVZX RCX, DI 
OR RSI, RCX 
MOV RCX, -1076756215264505141 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], 61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
