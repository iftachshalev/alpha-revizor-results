.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND SIL, -126 # instrumentation
CMOVNZ SI, BX 
CMOVNB EAX, EAX 
XOR RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RBX] 
NOP  
AND RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDX] 
CWDE  
XCHG AL, CL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], SIL 
CMOVLE ECX, ESI 
XCHG RDX, RAX 
XCHG AX, AX 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 1 
BT SI, AX 
XADD DX, SI 
CMOVNP RDX, RDX 
OR AL, -106 
NOT SI 
LEA DX, qword ptr [RCX] 
OR AX, SI 
MOVZX ESI, BL 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], BX 
BTS ECX, -46 
AND AX, -24487 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
XOR EAX, 855551910 
MOVSX RDX, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
