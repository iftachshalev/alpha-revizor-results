.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
BTS RAX, RCX 
CMOVNB RDX, RSI 
XOR AX, 14328 
SETB DL 
AND BL, CL 
CMOVNBE RBX, RAX 
CLD  
AND RAX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RAX] 
MOV BL, BL 
SETBE CL 
CMOVNBE RCX, RDX 
CMOVL BX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 20 # instrumentation
CMOVNZ RCX, RDI 
SETBE BL 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EAX 
CMOVNP EBX, ECX 
MOVSX EBX, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RDX 
XCHG BX, AX 
BTC CX, CX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
CMOVNBE EDX, EDI 
BT DX, -116 
BT RAX, 122 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -31 
SETNB DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RAX] 
OR RAX, -994926517 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
