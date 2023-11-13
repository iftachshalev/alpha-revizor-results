.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 80 # instrumentation
CBW  
SETP DL 
CMOVB EBX, ECX 
CMOVNZ EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], AL 
MOV EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], -60 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EAX 
CMPXCHG SIL, CL 
XOR AL, 26 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, 1749650635 
BTC BX, DI 
AND EAX, 2027428275 
SETNBE CL 
OR BL, AL 
MOV DI, SI 
CMOVZ SI, BX 
XOR AX, SI 
CMOVLE RCX, RCX 
CMOVB BX, BX 
XOR CL, SIL 
AND RDX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDX], 5 
AND DIL, -67 # instrumentation
CMOVS EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RAX] 
XOR RBX, 5 
CMOVB EAX, ECX 
SETB BL 
AND EDX, 51 
TEST AL, 62 
SETO CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
