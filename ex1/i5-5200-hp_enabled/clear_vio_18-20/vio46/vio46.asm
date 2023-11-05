.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -120 # instrumentation
CMOVNBE AX, SI 
CMOVO CX, AX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
AND DIL, -38 # instrumentation
CMOVNS RDI, RBX 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RCX], DI 
MOV CX, CX 
CMPXCHG EBX, ESI 
XCHG DIL, SIL 
CMOVS CX, DX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND AL, -9 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST RAX, 114777889 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
AND SIL, 123 # instrumentation
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DX 
SETNO CL 
CMOVLE AX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
TEST DI, 30674 
CMOVNL RBX, RCX 
BTS ESI, EBX 
AND SIL, 9 # instrumentation
SETNS DIL 
OR AL, -125 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDX] 
NOT AX 
JMP .bb_main.4 
.bb_main.4:
AND SIL, -77 # instrumentation
SETB DIL 
CMOVLE ECX, EBX 
CMOVB EDI, EDX 
CMOVP BX, SI 
CMOVNLE RSI, RBX 
XOR AX, 11906 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
