.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -86 # instrumentation
SETNL CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -97 
XCHG DL, AL 
AND DL, -43 
CMOVBE EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
TEST DL, -37 
SETNS DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 57 
MOVSX ECX, AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDI 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RDX 
TEST AL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 45 
TEST RAX, 538239497 
BT RBX, RSI 
CMPXCHG SIL, DIL # instrumentation
AND SIL, -69 # instrumentation
CMOVBE CX, CX 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
OR EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
CMOVNLE RCX, RAX 
XOR DIL, 43 
BTS RAX, -47 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RCX 
SETS DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR SIL, DIL 
CMOVZ RCX, RDX 
XCHG RDI, RSI 
MOV CL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
