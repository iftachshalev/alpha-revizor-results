.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
BTC AX, AX 
AND SIL, -114 # instrumentation
SETS AL 
CMOVP RDI, RDI 
CMOVP EBX, EBX 
XOR EAX, 1270365587 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -54 # instrumentation
SETLE SIL 
AND RDI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDI] 
SETZ BL 
CMOVBE RCX, RAX 
CMPXCHG BL, DL 
SETNB DL 
AND BL, BL 
STC  
AND BL, DL 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, 64 # instrumentation
CMOVS ESI, EBX 
XOR CX, 99 
OR RSI, 80 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
SETO AL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
CMOVNO RDX, RAX 
MOV CL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
SETB DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -8 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -36 # instrumentation
MOV DIL, -36 
CMOVL RSI, RDI 
CMOVZ AX, AX 
SETZ BL 
MOVZX ECX, DL 
CMOVNS RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
