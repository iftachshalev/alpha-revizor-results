.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, -30591 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -25609 
CMOVO RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDX] 
CMOVNBE RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -19604169 
SETNB AL 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
MOV DIL, SIL 
AND DI, -40 
CMOVNZ EAX, EDX 
NOT RDX 
SETNB BL 
SETNL DL 
SETNP DL 
MOVSX AX, DIL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 0 
MOVZX EAX, DX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RBX] 
XOR CL, -77 
CMOVNBE RAX, RCX 
CMOVNB RAX, RAX 
AND CL, -4 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
XADD EAX, EDX 
BTS RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
