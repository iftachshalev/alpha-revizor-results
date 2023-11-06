.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, -583325672 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
LEA ECX, qword ptr [RCX + RBX] 
CLC  
TEST EAX, 834276952 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], CL 
LEA ECX, qword ptr [RCX] 
CMOVL EDX, ESI 
MOV DIL, 103 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
CMPXCHG RCX, RDI 
XCHG ESI, EAX 
XCHG CL, AL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -88 # instrumentation
SETNZ DL 
CMOVS ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], -110 
CMOVNB DX, BX 
CMOVNS ECX, EDX 
NOT RBX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -110 # instrumentation
CMOVNB BX, BX 
XADD DL, AL 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 6 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -122 
AND RCX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTS qword ptr [R14 + RDX], RDI 
LEA RCX, qword ptr [RBX + RSI] 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTC qword ptr [R14 + RDI], RBX 
AND DIL, -31 # instrumentation
MOV BL, -101 
CMOVNLE SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
