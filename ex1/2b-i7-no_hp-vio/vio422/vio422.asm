.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, -95 
SETNO DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RAX] 
CMOVS RAX, RDI 
CMOVNL RDX, RDX 
AND EBX, -20 
CMOVLE EDI, EDI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG ECX, EAX 
MOVSX ESI, AL 
BTR DI, AX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
SETNB BL 
AND RSI, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RSI] 
XCHG RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
MOV EAX, -806794193 
AND RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
XADD AX, DI 
CMOVLE RSI, RDX 
MOVSX DI, BL 
CMOVNO RBX, RBX 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 29944 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
CMOVNB SI, AX 
BTS RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
