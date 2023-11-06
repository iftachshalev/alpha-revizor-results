.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -1 # instrumentation
CMOVNO RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EDI 
CMOVB AX, SI 
CMOVL ECX, EBX 
BSWAP RAX 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
XOR CL, 103 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 1 
CMOVBE SI, BX 
MOVZX ECX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
MOV ECX, -63641449 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
AND DIL, 89 # instrumentation
SETO SIL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 85 # instrumentation
SETLE CL 
CMOVNL RDX, RBX 
XCHG DI, AX 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], BL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 29 # instrumentation
SETO SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ECX 
OR EAX, -1138899458 
CMPXCHG DIL, AL # instrumentation
SETNLE AL 
LAHF  
TEST AX, 23171 
AND CX, 34 
MOVZX AX, CL 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -86 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDX] 
CMOVP DX, SI 
AND BL, SIL 
CMPXCHG DL, SIL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
