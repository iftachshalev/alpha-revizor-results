.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], 81 
AND EAX, 1201803546 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 50 # instrumentation
CMOVS RAX, RDI 
CBW  
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RBX] 
CMPXCHG BL, AL # instrumentation
AND SIL, 127 # instrumentation
LAHF  
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
CMOVNBE RCX, RDX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -124 # instrumentation
SETNO AL 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 6 
CMPXCHG CL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
BTR CX, -76 
BTC EAX, 20 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
OR SIL, DL 
CMOVNBE ECX, EDX 
CMOVNL EAX, ESI 
OR EAX, 772992026 
CWDE  
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
XOR DX, 60 
AND RAX, -408764653 
MOV DIL, CL 
XOR RBX, RDX 
NOT EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
