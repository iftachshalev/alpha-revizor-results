.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
MOVSX EBX, AL 
XADD BX, CX 
TEST RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
BTS AX, -10 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -973708162 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -101 
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
CMOVLE ESI, EDI 
SETL BL 
CMOVNB RAX, RDX 
LEA RSI, qword ptr [RBX + RDX + 51476] 
BTC ESI, 40 
AND SIL, 87 # instrumentation
SETNP AL 
CMOVNP ESI, EAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
CMOVNO RDI, RSI 
CMOVO DX, CX 
XCHG BL, BL 
CMOVL AX, SI 
SETNO AL 
AND DI, AX 
XOR EDX, EAX 
SETNL AL 
SETP BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
