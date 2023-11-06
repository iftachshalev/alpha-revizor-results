.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, -1 
CMPXCHG AL, CL 
LEA EDI, qword ptr [RSI + RDX] 
NOT DX 
OR EBX, -95 
AND RBX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RBX] 
SETNL CL 
SETB AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], 11 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
MOVZX EAX, AL 
MOVZX EDX, AL 
MOV AX, BX 
SETNZ BL 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RSI 
CMOVNB BX, CX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 107 # instrumentation
SETNLE AL 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RDX 
TEST AL, 4 
CMPXCHG EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 31 # instrumentation
SETNL DIL 
BTC EDI, 47 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RAX] 
AND RAX, -795705936 
BTS EDX, -52 
XCHG AX, AX 
CMPXCHG DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 0 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], EDX 
BTR RSI, RSI 
AND DIL, -96 # instrumentation
CMOVLE RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
