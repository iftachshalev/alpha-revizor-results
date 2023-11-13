.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
TEST RAX, 821090302 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
CMOVNZ RBX, RAX 
XOR BX, DX 
MOV ESI, EAX 
BTC RAX, -103 
AND DIL, -23 # instrumentation
CMOVO AX, DX 
SETL DL 
SETNP CL 
CMOVO EBX, ECX 
MOVZX EAX, DI 
MOVSX ECX, AL 
MOV ESI, 2089207560 
CMOVNB RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 6 
CMPXCHG DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -39 # instrumentation
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDI] 
LEA AX, qword ptr [RBX + RDX + 32916] 
SETS AL 
BTR RCX, -126 
BTR RAX, RCX 
AND DIL, 26 # instrumentation
CMOVO EAX, EDX 
SETNO BL 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RSI 
CMOVNZ EAX, EDX 
XOR ESI, EBX 
AND EAX, 2049820110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
