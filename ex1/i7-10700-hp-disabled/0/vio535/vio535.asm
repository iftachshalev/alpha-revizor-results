.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR SIL, -30 
SETS AL 
BTR EDX, EDI 
TEST DIL, 122 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 70 # instrumentation
BSWAP EAX 
MOV RAX, 6345679025640041800 
NOT EDX 
MOV BL, -90 
SETNP CL 
MOVZX EBX, BL 
XOR EAX, -169910203 
XOR SI, DI 
BTC EDX, EAX 
MOVSX EBX, AX 
JMP .bb_main.2 
.bb_main.2:
MOVZX EAX, CL 
TEST AL, -35 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], BL 
AND AX, 102 
CMOVBE CX, DX 
CMOVBE SI, DX 
SETNP DIL 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EAX 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RAX 
BTR RDI, -25 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 7 
MOV ECX, 1464714314 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RAX] 
CMOVLE DI, DI 
MOVZX DX, CL 
XCHG RDX, RAX 
CMOVS RDI, RSI 
XADD ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
