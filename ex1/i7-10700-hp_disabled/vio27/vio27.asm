.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
SETNZ DIL 
SETNZ DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], -123 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], 4 
CDQ  
CDQ  
MOV EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTS BX, -34 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
AND SIL, 43 # instrumentation
CMOVP AX, DX 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
CMPXCHG AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RSI 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -10 # instrumentation
SETNO BL 
CMOVNP RDI, RCX 
CMPXCHG BL, AL 
MOVSX EDX, AL 
BT EAX, -56 
AND DIL, -120 # instrumentation
MOV DI, BX 
SETZ AL 
SETLE BL 
STD  
CMOVNLE ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RSI] 
XOR BL, CL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR BX, DX 
BTR EBX, ECX 
CMPXCHG RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
