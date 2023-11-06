.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 14 # instrumentation
SETNBE CL 
CMOVNP DI, SI 
TEST DI, AX 
CMOVNL RAX, RDI 
OR EDI, 98 
SETNB CL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], SIL 
CWDE  
CMOVNLE SI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
MOV RCX, -2451630076316531973 
SETO DL 
BTS ECX, 55 
OR EBX, EDI 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -107 # instrumentation
CMOVNLE RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], DL 
XOR DIL, 29 
CMOVNS EAX, EAX 
MOV DL, AL 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], CL 
MOVZX ECX, CL 
XOR AL, BL 
CMC  
CMOVNL RCX, RBX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
XCHG BL, DL 
TEST RDI, RDI 
CMOVNBE EDI, ECX 
MOV BL, -65 
SETBE AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
