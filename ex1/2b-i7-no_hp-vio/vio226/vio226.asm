.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, BX 
XCHG RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
BTS RAX, RAX 
AND SIL, -101 # instrumentation
SETL BL 
SETZ CL 
NOP  
TEST AL, -32 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RSI], 5 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], BL 
AND DI, 33 
OR BL, CL 
MOVZX ECX, AL 
BTS DI, 121 
MOV EBX, -1276458256 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
CMPXCHG CL, AL # instrumentation
AND DIL, -102 # instrumentation
CMOVP EDI, EDX 
STD  
LAHF  
BTS RAX, RCX 
AND RSI, RBX 
BT EBX, 77 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -74 
XADD SI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RBX] 
CLC  
XCHG ESI, EBX 
CMOVNP RDI, RSI 
NOP  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
