.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, -1757262089 
MOV ECX, -1737371388 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA RCX, qword ptr [RDX + RDI] 
XADD DX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
OR CX, CX 
AND RAX, -406451541 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
AND DI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], 4 
MOVSX EBX, DI 
SETZ BL 
XCHG AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RDI] 
XOR AL, DIL 
CMC  
CMOVNBE RBX, RAX 
NOP  
NOP  
JMP .bb_main.3 
.bb_main.3:
AND DIL, 89 # instrumentation
MOV RDX, RAX 
SETNB BL 
AND AL, -91 
CMPXCHG DL, BL # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
TEST AL, 1 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RDI 
XADD BL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
