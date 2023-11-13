.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 72 # instrumentation
CMOVB EDX, EDI 
XOR CL, 110 
NOT BL 
XOR EBX, -30 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
SETLE BL 
CMOVNB EDX, EDX 
CLD  
MOVZX RAX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 18542 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
OR DL, CL 
SETNBE DL 
LEA RAX, qword ptr [RBX] 
CMOVNBE RBX, RAX 
NOT SIL 
SETNO AL 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RBX 
NOT EBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 0 # instrumentation
CMOVO EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 21190 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
MOV RAX, RAX 
MOVZX EDX, DL 
SETB BL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 5007 
SETO BL 
CMOVNL EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
MOVZX EAX, DL 
CMOVP ESI, EAX 
XOR DIL, -68 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
