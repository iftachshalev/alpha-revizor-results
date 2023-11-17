.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTC word ptr [R14 + RDX], SI 
AND SIL, 40 # instrumentation
CMOVNP ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], -96 
STC  
CMOVNP RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 32 # instrumentation
CMOVO RDX, RDX 
CMOVNS EDX, EDX 
CMOVZ RAX, RBX 
SETO DIL 
SETB DL 
AND RSI, -24 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NOT SI 
AND DIL, AL 
BTC BX, 48 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
XOR EAX, 1157144510 
OR AL, AL 
XOR SIL, DL 
BT AX, -82 
AND SIL, -105 # instrumentation
CMOVNP EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
CWDE  
MOVSX EBX, CX 
CMOVL SI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDX] 
MOVZX RDI, DIL 
BTC RCX, 104 
NOP  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
