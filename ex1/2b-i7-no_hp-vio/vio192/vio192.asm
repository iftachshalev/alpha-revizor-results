.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC ECX, ESI 
TEST AX, 25531 
MOVSX RCX, AL 
CMOVNP BX, DI 
AND CL, AL 
NOT CL 
CMOVNZ RCX, RDI 
XOR EAX, 613243666 
SETNLE DIL 
CMOVNO RDX, RCX 
XOR DIL, 108 
BTR RCX, RCX 
AND DIL, -30 # instrumentation
XCHG SI, AX 
SETP BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTR word ptr [R14 + RAX], AX 
CMOVBE RCX, RBX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -40 # instrumentation
SETNS BL 
MOV RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDI] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ECX 
AND RDI, -114 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], -59 
MOVZX RAX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
CWD  
CLC  
MOV AL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
