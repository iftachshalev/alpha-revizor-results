.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDI, 27 
CMPXCHG ECX, EBX 
SETZ BL 
NOT SI 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
XOR DL, DIL 
CMOVNP RSI, RCX 
XOR DIL, -19 
CMOVS RBX, RDX 
BT RDI, -124 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RCX] 
AND RAX, 767328793 
CMOVP EBX, EAX 
OR EDI, EDX 
TEST RAX, 1454823675 
MOVZX EAX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 97 # instrumentation
CMOVP ESI, EDX 
XOR RSI, 100 
XCHG RAX, RAX 
CMOVP RDX, RDX 
CMOVP ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
CMOVNB EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RCX 
CMOVS BX, SI 
CMPXCHG RDI, RDX 
BTS DI, 79 
SAHF  
BTS ESI, 36 
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
CMOVZ RAX, RCX 
OR RDX, -35 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
