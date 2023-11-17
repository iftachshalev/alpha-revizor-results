.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 22 # instrumentation
CMOVZ EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RBX] 
OR RCX, RCX 
CMOVLE RCX, RDX 
TEST DIL, 18 
CMPXCHG BL, BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
XADD CL, BL 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 6 
AND SIL, -6 # instrumentation
SETNL DIL 
CMOVB AX, DX 
CMOVNP ECX, EAX 
CMOVNS EDI, EDI 
TEST AL, 108 
CMOVNO DX, DX 
STC  
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], EDI 
AND SIL, 118 # instrumentation
CBW  
SETO CL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV EBX, 2031050950 
MOV DX, -20225 
NOP  
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
TEST CX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
TEST RDX, -299879669 
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
CMOVB RCX, RAX 
MOV CX, SI 
AND ECX, ECX 
BTC ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
