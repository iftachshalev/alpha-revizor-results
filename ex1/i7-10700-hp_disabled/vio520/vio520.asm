.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG CL, DL 
CMC  
CMOVL RAX, RDX 
CMOVP RDI, RSI 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], 118 
SETNBE BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
OR DI, 0b1000000000000000 # instrumentation
BSR DI, DI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
AND DIL, 37 # instrumentation
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 816618862 
CMOVNB DI, CX 
BTR ESI, -6 
XOR BL, -90 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -101 
OR EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], AL 
SETP AL 
SETBE SIL 
CMOVNB EDX, EDI 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, 79 # instrumentation
SETLE CL 
SETZ BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
AND AX, -9797 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -66 # instrumentation
STD  
MOV SI, -20305 
SETNP DIL 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
MOV CL, 59 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EDX 
MOV BL, -48 
XADD CL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
