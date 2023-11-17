.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], -294670221 
AND AL, 46 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
MOV EBX, EDX 
SETNO BL 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
CLD  
XCHG CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RBX 
TEST AL, -9 
CMOVLE EDX, EDI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
SETO BL 
CMOVNO RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -3640 
CLD  
XCHG RBX, RAX 
AND EAX, 34529138 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
AND SIL, -17 # instrumentation
SETNLE DL 
AND AX, 9704 
OR EAX, 652669889 
SETNP CL 
CMPXCHG RAX, RAX 
XOR DI, DX 
MOVSX RCX, AL 
CMOVNP RDX, RCX 
BTS RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
