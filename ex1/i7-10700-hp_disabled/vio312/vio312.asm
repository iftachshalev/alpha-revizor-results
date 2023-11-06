.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, CL 
BT EDX, 126 
LEA DX, qword ptr [RBX + RBX] 
XOR AL, AL 
CMOVL BX, DI 
SETNP AL 
MOV RAX, 2543434802764075922 
SETNB SIL 
BTR DX, AX 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RAX] 
BT EAX, -61 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -48 # instrumentation
CMOVNBE EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
TEST RAX, -1764066230 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RCX] 
CMC  
CMOVNL ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
SETLE AL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDX] 
SETBE CL 
CMOVNS ESI, EDX 
MOVSX RCX, AL 
SETNO BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], -63 
CMOVNLE RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
MOVSX ESI, SI 
SETL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
