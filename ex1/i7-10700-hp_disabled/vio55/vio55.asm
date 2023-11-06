.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RCX] 
TEST AX, 14507 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], BL 
XCHG AL, CL 
XOR EAX, -2069123559 
OR RBX, 107 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDX] 
OR AX, 6248 
LEA CX, qword ptr [RCX + RDI + 45906] 
OR EAX, -108297871 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -73 
AND AL, -69 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RSI] 
CMOVL EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
SETBE CL 
XOR EDI, -14 
AND RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RAX] 
CMPXCHG RDX, RSI 
CMOVNP RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], DI 
MOVSX EDX, DI 
AND AX, CX 
BTC ECX, -119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
