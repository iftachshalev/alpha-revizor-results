.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -120 # instrumentation
NOT RCX 
CMOVNZ CX, DX 
AND BL, 125 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], DL 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 22911 
AND ECX, EAX 
CMPXCHG AL, CL 
TEST RAX, -2058648261 
CMOVP BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
AND AX, -15256 
CMOVNZ EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG BL, CL 
CMOVNZ BX, AX 
SETNZ CL 
OR AX, DI 
MOV ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 113 # instrumentation
LEA RSI, qword ptr [RCX] 
CMOVNB SI, DI 
CMOVNB RSI, RAX 
AND AL, -88 
SETL DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
OR EAX, -1800846774 
XOR RBX, -119 
MOV DIL, 31 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -56 
NOT SIL 
CMPXCHG CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
