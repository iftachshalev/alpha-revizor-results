.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -3 # instrumentation
SETB BL 
CMOVNS RSI, RAX 
BTR RBX, 106 
CMPXCHG DI, SI 
CMPXCHG BL, CL 
CMOVZ EDX, EDI 
SETNS AL 
OR RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
CMOVNBE RCX, RDI 
OR RAX, 95 
CMOVNS RBX, RCX 
OR AX, -3462 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
SETZ DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 63 
XCHG DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EDI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 7 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], CL 
OR DI, 0b1000000000000000 # instrumentation
BSF BX, DI 
AND RBX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RBX], 7 
CMOVNBE BX, DX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDX] 
AND ESI, 115 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RSI] 
OR SI, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], SI 
AND AL, -59 
CMOVS ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
