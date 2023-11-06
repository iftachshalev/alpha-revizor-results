.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, 284450230 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -81 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 117 
MOV EBX, EBX 
CMOVP RCX, RSI 
NOT AL 
NOT RDX 
SETNB CL 
CMOVB EBX, ECX 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -3 # instrumentation
CMOVP RCX, RCX 
MOV BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDI], 7 
AND DIL, 118 # instrumentation
SETNP AL 
TEST AX, -28231 
BTS BX, DI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
AND SIL, -9 # instrumentation
CMC  
XOR RBX, -53 
TEST CX, -13887 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -112 # instrumentation
CMOVBE DI, AX 
MOVZX CX, BL 
CMOVS BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDI] 
MOVSX ESI, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], SIL 
OR EAX, 733965650 
CMOVBE CX, SI 
XOR DL, DIL 
SETP CL 
CMOVZ SI, DX 
CMOVNP SI, CX 
AND RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
