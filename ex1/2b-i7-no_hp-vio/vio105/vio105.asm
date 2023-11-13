.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 22 # instrumentation
SETNL AL 
LEA BX, qword ptr [RAX + RDX + 21890] 
BT SI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
TEST AL, 18 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -47 
MOVSX RCX, CL 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RCX], EDI 
AND RAX, -1641706674 
STC  
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
SETP BL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RAX] 
LEA EDI, qword ptr [RDX + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDI], 6 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR DIL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], -126 
MOVZX DI, CL 
MOV BL, BL 
BTS EBX, 0 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], -19 
XOR DIL, DIL 
CMOVNBE EDX, ECX 
SETP DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 1 
AND DIL, -112 # instrumentation
CMOVBE EAX, EAX 
CMOVNB RSI, RSI 
CMOVP BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
