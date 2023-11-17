.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -51 # instrumentation
SETLE BL 
STC  
AND RBX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RBX] 
CMOVNBE RDI, RDX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
CMOVO EBX, ECX 
MOVSX EBX, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
XOR AL, 49 
CMOVNL DX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
XADD DL, BL 
BTS DI, 92 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -100 # instrumentation
CMOVNB EBX, ECX 
XOR RAX, -783864845 
NOT CL 
XADD ESI, EDX 
CMOVNO EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
BT RCX, RDX 
MOVZX CX, CL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 29 # instrumentation
SETB DIL 
AND RSI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RSI] 
CMOVBE DX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
MOVSX EDI, DIL 
XADD RDI, RBX 
OR DIL, BL 
BTR EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], AL 
CMOVNS CX, CX 
MOV CL, -23 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
