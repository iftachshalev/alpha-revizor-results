.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RAX] 
AND RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
CLC  
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RCX 
SETNLE SIL 
AND AL, SIL 
MOV DIL, 39 
XADD RAX, RDX 
SETNL DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 4 
TEST AL, 111 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC RDX, RBX 
AND SIL, 91 # instrumentation
CMOVNP SI, AX 
AND DI, -13 
SETBE CL 
TEST SIL, 73 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
MOV RSI, -8261807143217952872 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDX] 
CMOVP RCX, RBX 
BT BX, 80 
CMOVNZ SI, CX 
AND RAX, 1759661741 
XOR BL, DL 
AND RCX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RCX], SI 
AND SIL, -42 # instrumentation
SETNLE CL 
BT BX, CX 
AND RSI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], DX 
XOR RSI, 61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
