.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
CMOVBE RAX, RAX 
MOVSX EAX, CX 
SETNL BL 
CMOVNB RAX, RDI 
SETB AL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
NOP  
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG BL, BL # instrumentation
SETP byte ptr [R14 + RAX] 
CMOVB RSI, RBX 
CWDE  
LAHF  
SETNP DL 
OR AL, DL 
CMOVNLE EDX, EDX 
CMOVBE AX, BX 
CBW  
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -45 # instrumentation
SETBE BL 
OR EAX, 83 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
OR EAX, -1417584272 
CMOVO DX, CX 
BT DX, 118 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RDX 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
AND DIL, -82 # instrumentation
CMOVBE RBX, RDI 
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
TEST EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
