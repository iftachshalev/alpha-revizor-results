.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 1 # instrumentation
CMOVO SI, DI 
XCHG DX, SI 
CMPXCHG EAX, ESI 
CMPXCHG BL, DL 
OR ESI, -103 
CMOVNS DI, DX 
CMOVBE DX, AX 
TEST CX, DX 
SETNLE SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DIL, AL 
AND RDX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RDX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
AND SIL, 126 # instrumentation
SETNO DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RAX] 
MOV CL, -93 
CMOVNB DI, SI 
TEST BL, DIL 
BTS AX, -80 
AND RAX, 939657635 
AND AL, 98 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -31 # instrumentation
MOV EBX, 1734204122 
CMOVZ ECX, ECX 
OR RAX, 1038771619 
SETNB DL 
AND BX, -105 
CMOVS RCX, RDX 
XOR EDX, ESI 
AND AX, -13998 
CMOVBE EDI, EAX 
BTC EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
