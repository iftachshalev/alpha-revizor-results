.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 57 # instrumentation
BTS EAX, ESI 
CMOVBE RCX, RAX 
BTR AX, -11 
TEST EAX, -1722694901 
TEST BL, SIL 
CMOVNS SI, DX 
XOR AX, 28833 
AND BX, DX 
SETO CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], ESI 
CMOVLE RSI, RDX 
MOVSX EDX, DIL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
MOV AX, -28488 
CMOVBE EAX, EBX 
CMOVNO EDX, ECX 
TEST ESI, EDX 
SETBE DL 
CMOVB BX, SI 
CMOVO AX, DX 
CMOVB RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EDI 
OR AX, -21078 
AND DI, 52 
CMOVZ BX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CMOVNS BX, SI 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 1758715680 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
CMOVP RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
