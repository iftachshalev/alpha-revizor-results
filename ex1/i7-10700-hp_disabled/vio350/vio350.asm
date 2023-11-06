.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RBX], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDX] 
CMOVNS AX, CX 
XOR CL, CL 
MOV AX, CX 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
CMOVNS RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
MOVZX RBX, DX 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
CMPXCHG RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RCX] 
SETL BL 
CMOVP EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
XOR EAX, -70 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EBX 
CMOVB ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
BT SI, -94 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RAX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, 93 # instrumentation
SETLE BL 
SETS DL 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
TEST CL, -81 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EDI 
BTS DX, 4 
AND SIL, -97 # instrumentation
SETNLE CL 
TEST RBX, RDX 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
