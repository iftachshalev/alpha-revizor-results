.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -7 # instrumentation
SETNZ CL 
SETNL BL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], SI 
CMPXCHG ECX, EDX 
CMOVS EAX, ESI 
MOVSX RDI, BL 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], -9 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, 3 # instrumentation
MOVSX EAX, SIL 
BSWAP RBX 
CMOVZ DX, CX 
AND RAX, -1132374867 
XOR DL, BL 
CMOVNBE CX, DX 
CMOVNLE RDX, RBX 
OR RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DIL 
XCHG EBX, EAX 
TEST RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], DI 
CMOVLE EAX, EBX 
BTR EAX, -128 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
XOR BL, -119 
XOR CL, DL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR BX, 36 
CMPXCHG ECX, ESI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
BSWAP ECX 
MOVSX RDI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
