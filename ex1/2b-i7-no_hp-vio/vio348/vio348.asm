.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -71 # instrumentation
SETS AL 
XOR BL, -120 
MOV DL, -27 
CMOVLE EAX, ESI 
SETZ DL 
CMOVZ RDX, RDX 
SETL AL 
XOR RSI, RDX 
SETNB CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], DL 
MOV ECX, EBX 
OR RAX, 94 
XCHG BL, SIL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
SETLE SIL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DIL, AL 
BSWAP EBX 
BTR CX, AX 
MOVZX DI, CL 
SETNB DIL 
XOR DI, DX 
OR EAX, 92899921 
XOR CL, AL 
CMOVNP RDI, RAX 
XOR CL, -65 
OR BL, AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND SIL, 20 # instrumentation
CMOVP RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
SETB SIL 
MOVSX RDX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
