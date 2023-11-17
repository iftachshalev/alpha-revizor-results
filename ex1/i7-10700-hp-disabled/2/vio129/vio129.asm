.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 127 # instrumentation
CMOVZ SI, AX 
BTR RDI, 70 
SETZ SIL 
NOT EAX 
BT EDX, EDX 
SETNBE BL 
XOR EBX, ESI 
BT RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], AX 
CMOVS AX, DX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 29 # instrumentation
CMOVBE RCX, RDI 
CMOVZ RCX, RAX 
SETP DL 
OR RDX, RDX 
CMOVNS ESI, EDI 
BT EAX, -112 
CWD  
CDQ  
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
SETNL BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
MOVZX RAX, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
CMOVLE ESI, ESI 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND CL, -64 
CMOVBE ECX, EDX 
AND RDI, -126 
CMPXCHG AL, AL 
AND AL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
