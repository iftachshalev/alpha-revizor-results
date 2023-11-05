.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 44 # instrumentation
CMOVLE RBX, RDX 
CMOVNLE RBX, RCX 
BTR EDI, EDX 
XOR DL, 10 
MOVZX DX, BL 
JMP .bb_main.1 
.bb_main.1:
OR RSI, RAX 
SETS AL 
BT BX, SI 
CMOVNZ RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RSI] 
OR EAX, -971473993 
NOT RDX 
BTS SI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], AL 
SETNLE DL 
XADD DX, CX 
JMP .bb_main.2 
.bb_main.2:
XOR BL, 104 
AND RDI, 73 
SETP CL 
CMOVB SI, CX 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
XOR BL, AL 
MOV BL, -121 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], CL 
XOR DIL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
MOVSX AX, CL 
MOV SIL, 114 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
XCHG SIL, DL 
CMOVLE RBX, RDX 
MOVSX EDX, BL 
SETNB CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
