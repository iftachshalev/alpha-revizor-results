.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -120 # instrumentation
SETNL DL 
OR DIL, AL 
CMPXCHG ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
XOR DL, 14 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RSI], 2 
AND SIL, -47 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 102 # instrumentation
CMOVL RDI, RAX 
SETB SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], DIL 
CMOVP ECX, ESI 
LEA RAX, qword ptr [RBX + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 80 
SETL DL 
CMOVO RDI, RCX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RCX] 
CMPXCHG CL, DL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RDX, RCX 
CMOVLE EAX, EAX 
OR RAX, 28369233 
XADD BL, DL 
CMOVL SI, DX 
AND SIL, 99 
CMOVNP RBX, RAX 
BT EBX, 122 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DL 
CMOVP RDI, RDX 
CMOVS RSI, RDI 
SETB AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
