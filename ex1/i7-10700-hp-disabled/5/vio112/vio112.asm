.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, -51 
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
MOVSX RCX, CX 
OR ECX, EDI 
MOVZX DI, CL 
CMOVBE RCX, RSI 
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RAX] 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -35 # instrumentation
SETNBE CL 
CMOVP RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], ESI 
SETNB CL 
STD  
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -1389146213 
CMOVNS DX, DI 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RSI 
SETNS BL 
CMPXCHG BX, DI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTC EDI, -115 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
AND CL, -87 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -91 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
AND DIL, 79 # instrumentation
SETNO SIL 
CMOVO ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RDX] 
CMOVL RAX, RBX 
MOV RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
