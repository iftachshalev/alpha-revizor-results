.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT CL 
TEST SI, -14361 
MOVZX RSI, DIL 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
SETNS BL 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
AND SIL, 91 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
BTS CX, BX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], -124 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -101 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EAX 
NOP  
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 8 # instrumentation
SETO CL 
CMOVBE RAX, RAX 
MOV RDX, -1653007365857381782 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], -99 
MOV AL, -110 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 7 
CMOVNBE RSI, RSI 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
LEA DI, qword ptr [RAX + RAX + 2567] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
CMOVNO BX, AX 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTS dword ptr [R14 + RSI], ESI 
AND DIL, -120 # instrumentation
CMOVNLE SI, CX 
BTR EBX, 118 
JMP .bb_main.4 
.bb_main.4:
MOVSX EBX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
NOP  
XCHG RDX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
