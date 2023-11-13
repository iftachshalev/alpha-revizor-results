.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 90 # instrumentation
CMOVP CX, DI 
SETNBE DL 
TEST AL, 113 
CMOVNS CX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
SETNLE AL 
MOVSX RBX, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], SI 
MOVZX EDX, DX 
XCHG BL, SIL 
CMOVS EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], -112 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 74 # instrumentation
CMOVBE RCX, RDI 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
XOR EBX, 111 
SETNS CL 
AND RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
MOV BL, 95 
TEST SI, -5267 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -13 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EBX 
CMOVNZ RSI, RAX 
XCHG ECX, EAX 
CMOVNB SI, AX 
AND RAX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RAX] 
CMOVNBE AX, DX 
XCHG RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTR word ptr [R14 + RDI], SI 
AND SIL, 65 # instrumentation
XCHG ESI, EDI 
SETNS DL 
XADD DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
