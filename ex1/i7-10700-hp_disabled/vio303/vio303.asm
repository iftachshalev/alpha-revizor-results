.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC EAX, 35 
AND DIL, -70 # instrumentation
CMOVL RAX, RDI 
XOR ECX, 101 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], BL 
NOP  
SETNLE DIL 
CMOVO RDX, RAX 
NOP  
OR EAX, -1542681110 
SETNO AL 
CMOVL ESI, EDX 
OR EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], RDX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, -2100510695 
BT ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
BT EBX, ECX 
CMPXCHG ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
OR AL, -16 
CMOVS RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RBX], ESI 
XADD DI, DX 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], BL 
XOR EAX, EDX 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
MOV SI, 2059 
CMOVNZ RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
