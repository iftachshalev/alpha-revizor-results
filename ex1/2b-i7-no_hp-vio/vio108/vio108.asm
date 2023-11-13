.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -3 # instrumentation
SETO AL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -367007473 
SETNBE DIL 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
MOVSX AX, AL 
AND AL, -111 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -75 
XCHG ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 107 
SETLE CL 
BTR RSI, -103 
CMOVB EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
SETP CL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -108 # instrumentation
CMOVNL EDI, EDX 
CMOVLE AX, SI 
TEST EBX, 833829898 
CMOVP EBX, EDX 
MOV AL, DL 
BTR EBX, EAX 
AND SIL, -7 
BT CX, 85 
AND DIL, -10 # instrumentation
SETNL CL 
XCHG ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], CX 
BT AX, CX 
LEA DI, qword ptr [RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDX] 
XCHG SI, AX 
SETNL DIL 
XOR RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
