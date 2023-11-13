.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DI, 4 
SETNL BL 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 3 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
SETNZ DIL 
CMOVNS DX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 7 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
MOVSX DX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG SIL, AL # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDX] 
XCHG EDI, EDX 
LAHF  
CMOVBE EBX, ECX 
XADD ESI, EAX 
NOT DI 
CMOVB EBX, EBX 
CMOVBE RSI, RCX 
CMOVNBE EAX, EDI 
LEA EBX, qword ptr [RCX] 
BT RDI, 123 
AND DX, 123 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND CL, 5 
SETNP DL 
NOT EDX 
MOVSX ESI, AX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], -122 
SETNO AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RSI] 
MOV AL, -112 
CMOVNBE BX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
