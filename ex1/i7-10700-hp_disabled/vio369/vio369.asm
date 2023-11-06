.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 60 # instrumentation
SETNS AL 
SETLE AL 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
CMOVP RDI, RSI 
CMOVBE RDI, RBX 
MOVZX EBX, DL 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], 72 
NOT CL 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, 100 # instrumentation
CMOVNP EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RSI] 
MOV AL, 111 
AND RDI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDI] 
MOVZX RAX, DI 
AND ECX, 102 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -14 # instrumentation
CMOVLE RDX, RSI 
STC  
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EAX 
SETZ CL 
MOVZX DI, SIL 
SETP AL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
OR AX, 27820 
AND BL, DL 
XADD RSI, RAX 
CMOVBE DI, CX 
CMOVL RAX, RDX 
TEST BL, DL 
AND AL, 63 
CMOVL AX, DI 
SETNBE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
