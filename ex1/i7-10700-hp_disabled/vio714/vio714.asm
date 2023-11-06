.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, -570613142 
CMOVZ RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -1 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -47 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RSI] 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], EDX 
MOVSX EBX, BL 
BTS ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], CX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
SETNS CL 
SETB CL 
SETP DL 
CMOVNBE ECX, ECX 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMPXCHG DX, BX 
CMOVLE EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], AL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
AND SIL, -61 # instrumentation
SETNP DIL 
CMOVNZ RDX, RDX 
CMOVP EAX, EAX 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], SIL 
OR RBX, RAX 
TEST DL, -104 
CMOVNL EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RCX] 
CMOVB RDI, RCX 
BTS RCX, 9 
TEST RCX, -1197915201 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
