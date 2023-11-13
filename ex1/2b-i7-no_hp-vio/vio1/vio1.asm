.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RBX] 
SETB DL 
CMOVS AX, CX 
AND EAX, -581419036 
CMOVL RBX, RBX 
CMOVL AX, DX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RCX], RDX 
SETO CL 
SETP DL 
OR EDX, ESI 
SETS BL 
XADD BL, CL 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], BL 
XADD DX, BX 
LEA CX, qword ptr [RSI + RSI + 26960] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], 5 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG AL, DIL # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVNL EAX, ECX 
MOV AX, DI 
LAHF  
CMOVP BX, CX 
XOR EAX, -556034662 
CBW  
BT RDI, 121 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], EDX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DIL 
TEST DX, -16716 
TEST RCX, -281371909 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
