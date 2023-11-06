.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
OR CL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
BTC BX, 58 
AND RBX, -46 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], CL 
XCHG EBX, EAX 
CMOVNL DI, DI 
XOR BL, AL 
CMOVZ EBX, EAX 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], -29 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDI] 
OR EBX, -86 
SETNS AL 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
MOV RDI, 9027677577587136885 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 51 # instrumentation
CMOVP RSI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
XCHG RBX, RAX 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
XOR RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDX] 
SETNO DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
MOV RBX, 7418804046796466797 
OR RCX, RSI 
CMOVNL RDI, RDI 
XOR AL, -19 
AND EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
