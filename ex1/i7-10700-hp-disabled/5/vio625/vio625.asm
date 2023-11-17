.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -115 # instrumentation
LEA ESI, qword ptr [RBX] 
CMOVBE RCX, RSI 
MOVSX EDI, CX 
XADD RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
AND AX, 1034 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RCX 
XADD ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
SETP AL 
SETNZ BL 
BTR RBX, RDI 
AND SIL, -104 # instrumentation
CMOVO RBX, RDI 
XADD CL, DL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], ECX 
MOV EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
XOR EAX, -1752964771 
OR AL, 105 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 0 
AND RBX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RBX] 
OR DL, -91 
OR DX, DI 
CMOVO EDX, EDX 
BTR RDI, RCX 
AND SIL, -84 # instrumentation
CMOVP CX, DX 
AND CX, DI 
XOR AL, 56 
AND CL, AL 
SETNS DIL 
BTR RDX, -104 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
