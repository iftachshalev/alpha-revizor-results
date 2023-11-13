.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, 55 
XCHG BL, BL 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], SI 
OR BL, AL 
CLC  
CMOVNS EBX, EBX 
TEST DL, AL 
CMOVNL ECX, EDX 
CMOVNLE ESI, EAX 
CMOVNBE ECX, EDI 
BTR BX, SI 
CMOVNZ RSI, RAX 
SETNZ BL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
SETO AL 
CMOVP ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND AL, -35 
SETNL SIL 
XOR RSI, 123 
CMPXCHG DL, BL 
CMOVZ EDX, ESI 
BTC ECX, ECX 
XCHG RAX, RCX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
XOR RAX, 1920999998 
AND RAX, 71630141 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND DIL, -62 # instrumentation
CMOVNLE RCX, RDX 
MOV SIL, SIL 
OR ESI, 18 
CMOVP DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
