.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RBX] 
TEST BL, -54 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EAX 
TEST EAX, -752273428 
CMOVNP SI, BX 
AND CX, CX 
CMOVB EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], ECX 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
MOVZX RDX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
TEST ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], DX 
CMOVP EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RAX 
NOP  
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWD  
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -527511023 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], AL 
MOVSX EAX, SIL 
AND DL, 47 
CMOVZ BX, DI 
SETP DL 
SETNBE BL 
TEST DX, 18818 
NOT DI 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
XOR AX, -70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
