.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -5287 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDX] 
CMOVNP EDX, EDX 
BTR AX, -95 
MOVSX RAX, DIL 
JMP .bb_main.1 
.bb_main.1:
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RAX] 
SETB CL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 5 # instrumentation
SETZ AL 
XCHG RDI, RAX 
AND DL, SIL 
MOVZX RBX, BL 
XOR RBX, -89 
TEST AL, -77 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
XOR RAX, 54224762 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], SIL 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 654356414 
JMP .bb_main.4 
.bb_main.4:
AND BL, CL 
SETBE DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -122 
AND RDX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], EAX 
AND SIL, -16 # instrumentation
CMOVNS EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
BTC SI, -21 
SETNBE DL 
TEST RAX, -174018929 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
