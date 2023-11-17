.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], CL 
AND EBX, ECX 
BT RDI, RSI 
AND SIL, -45 # instrumentation
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], ESI 
OR AX, -15222 
MOVSX ECX, CL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -24590 
SETZ CL 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DIL 
CMPXCHG DIL, BL # instrumentation
LAHF  
SAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RBX 
XCHG RCX, RAX 
SETNBE SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMPXCHG BX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
CMOVNS EBX, EAX 
LEA EAX, qword ptr [RSI] 
MOVSX EBX, DL 
XADD AL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], EDI 
CLD  
CMPXCHG RBX, RDX 
CMPXCHG SIL, DL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, -773097019 
XADD CL, DIL 
MOVSX EBX, CL 
SAHF  
SETNL DL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
