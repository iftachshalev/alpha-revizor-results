.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DX, BX 
CMOVNLE DX, CX 
XADD CL, SIL 
SETLE BL 
CMOVNBE SI, AX 
CMOVS CX, SI 
XOR RAX, 1261608924 
XOR EAX, 120383181 
MOVZX RBX, DX 
OR SI, 37 
MOVSX EDX, DI 
OR EBX, -91 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
BTS AX, -128 
XADD BL, DL 
OR CL, 27 
MOV DL, 14 
AND EAX, 795738000 
SETNLE AL 
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
CMOVNP RCX, RSI 
LEA RDI, qword ptr [RDI] 
SETNB CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
OR EAX, -2091006670 
STD  
SETNP AL 
AND RDX, 112 
OR RDI, RAX 
SETO DL 
BTR SI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
