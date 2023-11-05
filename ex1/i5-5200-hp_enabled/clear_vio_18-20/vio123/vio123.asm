.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
AND DIL, -77 # instrumentation
SETNLE SIL 
BT CX, BX 
AND RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RCX] 
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDX] 
XOR RAX, 1291025347 
XADD AL, AL 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
XOR RAX, -158972335 
CMPXCHG BX, DX 
CLD  
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
XOR DL, BL 
BT RBX, -119 
MOV EAX, 1997167659 
AND RDX, RBX 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
XCHG CX, CX 
LEA EAX, qword ptr [RAX + RDI] 
CMPXCHG CL, DL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR RDI, -114 
SETNO BL 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDI] 
XCHG EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTR word ptr [R14 + RDX], SI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
CMOVZ RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
