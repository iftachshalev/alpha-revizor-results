.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, 2027628782 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 7 
AND RBX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RBX] 
XADD SIL, SIL 
OR SIL, 126 
OR RAX, RBX 
MOVSX EDX, BX 
XCHG DL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], 23 
CMOVNL EAX, EDX 
CMOVP RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RBX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], AL 
CMOVBE ECX, ECX 
XADD BX, DX 
CMOVZ RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], BL 
SETBE BL 
SETLE DL 
BT DI, BX 
CWDE  
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND DIL, -59 # instrumentation
STD  
NOT EDX 
SETS SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], 106 
AND RDX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTS dword ptr [R14 + RDX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
