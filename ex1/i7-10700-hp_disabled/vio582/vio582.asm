.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
SETNP BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], DI 
XCHG CX, AX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -13 # instrumentation
CMOVNS CX, SI 
MOV DL, -81 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EDX 
MOV AL, 70 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
XCHG BL, AL 
CDQ  
MOVSX BX, CL 
TEST DL, -36 
SAHF  
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RBX] 
NOT CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND SIL, -87 
JMP .bb_main.3 
.bb_main.3:
OR RDI, RCX 
CMOVNBE RBX, RBX 
BTR AX, CX 
XOR AX, 20325 
BTR EAX, 5 
XCHG ECX, EAX 
XOR SI, DX 
MOV CL, SIL 
BTS AX, AX 
AND EAX, -2027498207 
BTC RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
