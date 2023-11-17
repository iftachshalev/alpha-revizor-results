.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
SETLE AL 
SETB BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
MOVZX EDX, BX 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 65 # instrumentation
CMOVZ EBX, EDI 
MOVZX AX, DL 
MOVSX EDX, BL 
CMOVP BX, AX 
CMOVLE RBX, RAX 
XOR EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
CMOVLE DI, BX 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -825370444 
TEST EBX, EDI 
CMOVNBE BX, BX 
CMOVNBE EBX, ESI 
CMOVNB EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], RBX 
JMP .bb_main.3 
.bb_main.3:
BT RDX, 90 
BTS RDX, -42 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 5 
MOVSX ECX, BL 
CMPXCHG RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
SETNLE BL 
CMOVNS EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
CMOVB RBX, RCX 
BTR RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
