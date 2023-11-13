.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -98 # instrumentation
MOV EDX, -1250869974 
CMOVNL RCX, RBX 
CLD  
SETBE BL 
SETS AL 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], -20865 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 79 
CMOVNZ RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
CMOVNL DX, SI 
CMOVZ BX, DI 
SETNL BL 
SETP DIL 
CMOVNLE RBX, RSI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 64 # instrumentation
CMOVBE RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
SETP BL 
MOVSX RBX, BL 
TEST DL, 65 
MOV CL, SIL 
MOVSX EAX, BX 
SETNO DL 
MOVZX BX, AL 
AND CL, -113 
CMOVP EAX, ESI 
BTS ECX, 92 
CMPXCHG SI, CX 
CMOVNL RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
