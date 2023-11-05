.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, -42 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -24 
SETLE CL 
CMOVNBE EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], EBX 
XOR DIL, -25 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -104 
MOVZX RSI, DI 
OR RAX, -2144799913 
AND RAX, -1888348444 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SAHF  
SETP DL 
CMPXCHG CL, DL 
SETO CL 
AND DX, CX 
XOR ESI, -61 
LEA BX, qword ptr [RDI] 
CMOVP RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RSI] 
BTR BX, 94 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RSI], EBX 
AND EAX, -356741674 
JMP .bb_main.2 
.bb_main.2:
OR EAX, 96153520 
BT CX, 41 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
BTC SI, BX 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RAX 
CMC  
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
