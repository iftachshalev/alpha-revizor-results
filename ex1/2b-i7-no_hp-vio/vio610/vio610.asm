.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, 74 
CMOVS RSI, RSI 
XOR ECX, -75 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 25376 
CMOVNLE EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], 44 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
AND AL, CL 
SETNO SIL 
MOVSX DX, AL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RDI 
MOVSX EDX, BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RCX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RAX] 
CMOVNB RBX, RBX 
XADD CX, DI 
NOT SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
XCHG EAX, EDX 
MOVZX RSI, DI 
CMOVS RBX, RDI 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 4 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
TEST ECX, -1150970132 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RAX], 2 
XADD EDX, ECX 
MOVSX AX, AL 
MOV CL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
