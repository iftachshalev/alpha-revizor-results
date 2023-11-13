.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 48 # instrumentation
CMOVZ EDX, EDI 
AND AL, 30 
BSWAP RDI 
CMOVB RAX, RAX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
AND DIL, 120 # instrumentation
LEA AX, qword ptr [RCX] 
SETP CL 
AND DIL, -86 
BTR EDX, -1 
AND DIL, 58 # instrumentation
SETNP DL 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
SETNS DIL 
CMOVL EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
NOT AL 
SETNL DL 
XOR DIL, -45 
SETNLE BL 
BT DI, -37 
AND SIL, 87 # instrumentation
CMOVL RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], CL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -17 
SETS CL 
CMOVNLE SI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
CMOVNZ EAX, ECX 
BTR EAX, 18 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RCX], RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], 7 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 4 
OR AX, -115 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
