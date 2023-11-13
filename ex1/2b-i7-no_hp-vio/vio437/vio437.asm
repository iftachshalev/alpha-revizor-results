.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], AL 
XCHG RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RSI 
OR EAX, 1360018969 
SETNZ BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
BTS BX, -8 
AND EAX, 1935043266 
AND SI, AX 
CMPXCHG DL, BL 
MOVZX ECX, BL 
MOVSX SI, SIL 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 1 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 7159 
MOVZX RDX, AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], DI 
SAHF  
CMPXCHG CX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
CMOVZ RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
CMOVNS RDX, RAX 
SETNB AL 
XOR SIL, SIL 
STC  
MOV RAX, RDX 
XOR DIL, 36 
CWD  
CMOVP SI, DI 
XADD CL, BL 
XOR DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
