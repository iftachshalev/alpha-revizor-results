.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
NOT RCX 
XADD BL, DL 
BT EDI, -37 
BT RAX, -33 
OR DL, 30 
CMPXCHG EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RAX] 
MOV AL, 44 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
XOR ECX, -78 
AND EAX, EBX 
CMOVP EDX, EBX 
SETZ BL 
CMPXCHG SI, CX 
MOV SI, -12569 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RDX, 2099796988 
SETLE BL 
AND RBX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RBX] 
XCHG RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
CMC  
MOVSX EAX, AX 
NOT EAX 
SETB SIL 
MOVZX EDI, CL 
AND DX, 90 
BT RCX, 91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
