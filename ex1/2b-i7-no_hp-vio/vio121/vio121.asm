.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -55 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RDX 
MOVSX EDX, BX 
BTR RAX, 75 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -85 
TEST EBX, 955465582 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
MOVSX RDI, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 1 
CMOVNB AX, BX 
XOR ESI, EBX 
STD  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], BX 
CMOVO DI, DI 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], BX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 33 # instrumentation
CMOVZ RCX, RDX 
OR AL, -10 
SETZ AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], 86 
AND SIL, -105 
BTC RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RAX] 
CMOVNZ AX, BX 
BTR DX, -120 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], CL 
XCHG AX, AX 
XOR EAX, 639163853 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RAX 
XOR BX, SI 
OR AX, CX 
SETNP BL 
CMOVNO RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
