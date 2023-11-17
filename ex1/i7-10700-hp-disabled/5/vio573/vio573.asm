.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -14 # instrumentation
SETNBE SIL 
CMOVNB CX, CX 
SAHF  
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RDX, -21 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
AND AL, -67 
CMOVBE AX, CX 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RDX], RDX 
AND SIL, 69 # instrumentation
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDI] 
BTR SI, DI 
NOT EDI 
XCHG CL, SIL 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
SETNB BL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EAX 
SETO DL 
MOV DL, 114 
CBW  
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DX 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
SETNL DL 
CMC  
JMP .bb_main.4 
.bb_main.4:
AND SIL, 114 # instrumentation
SETNLE DL 
CMOVS DX, SI 
AND SI, -126 
NOT EBX 
XOR EAX, 66 
MOVZX ECX, AL 
OR DIL, 81 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
