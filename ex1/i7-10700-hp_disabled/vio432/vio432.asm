.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], 119 
SETP CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
NOT SI 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 104 # instrumentation
SETNS CL 
BTC DI, 10 
AND RDX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDX] 
SETNB SIL 
XOR RDX, -9 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 1898413446 
XOR AL, 77 
SETO BL 
CMOVS RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 16 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], BL 
SETNB AL 
BTR EDX, -105 
OR DIL, -43 
MOV AL, CL 
BT RDI, RDI 
XADD AL, DL 
TEST DIL, -94 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], DL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XADD EBX, EDX 
BT RBX, -75 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
MOVZX RBX, AL 
CMOVZ RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
