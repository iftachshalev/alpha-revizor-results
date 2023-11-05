.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -89 # instrumentation
CMOVNLE RBX, RDX 
CMOVP EDX, EDI 
BTS DI, -123 
CLD  
CMPXCHG DL, CL 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], SI 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
SETS BL 
OR BX, -53 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
XOR RCX, RDX 
BTR DI, AX 
MOVZX RBX, SIL 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
LEA EDX, qword ptr [RDI + RAX + 5691] 
XADD CX, BX 
AND RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], BL 
LEA RBX, qword ptr [RDI + RAX + 25891] 
XOR RAX, 883620056 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 55 
CMOVS EBX, ECX 
CMOVS RBX, RAX 
SETL AL 
CDQ  
CMOVNB RAX, RAX 
OR EAX, -1753803867 
BTS BX, -84 
BTS EDI, -92 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
