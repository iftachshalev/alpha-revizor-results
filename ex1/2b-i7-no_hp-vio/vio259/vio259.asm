.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
BTR DX, 31 
BTS EAX, 44 
OR RDX, RDX 
TEST CL, AL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
CMOVP EDX, EDI 
BT RSI, 84 
AND DIL, 13 # instrumentation
CMOVO ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], 99 
CMOVNL RAX, RCX 
SETNL CL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
NOT BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
CWDE  
CMPXCHG DL, DIL 
CMOVNZ CX, BX 
SETLE DIL 
MOV BL, CL 
OR RSI, RDX 
SETLE SIL 
AND RAX, 215699565 
XOR AL, 57 
TEST DIL, 61 
MOVZX EAX, BL 
XOR RAX, 1131497215 
CMOVNZ RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDX] 
CMOVNL RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
