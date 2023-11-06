.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EDX 
SETS AL 
SETB DIL 
CMPXCHG DI, DI 
BTR EDX, EDX 
CBW  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -106 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 114 # instrumentation
CMOVLE CX, SI 
TEST BL, BL 
SETLE AL 
CMOVO RBX, RSI 
NOT AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
TEST BL, CL 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RCX] 
BTR EDI, EAX 
SETB BL 
BTC EBX, EDX 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
CMPXCHG ECX, EAX 
CMOVNLE ECX, ESI 
CMPXCHG DX, SI 
OR ECX, -17 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RSI] 
CMOVNZ SI, SI 
NOP  
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
AND SIL, 88 # instrumentation
CMOVNL EDI, EDX 
XOR SIL, -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
