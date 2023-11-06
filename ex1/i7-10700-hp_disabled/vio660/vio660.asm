.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 4 
XOR DL, AL 
CMOVNP RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 1841674748 
MOV BX, 18390 
CMOVNP ECX, ECX 
TEST EDX, ECX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, -105 # instrumentation
CMOVS RBX, RSI 
OR AX, -8780 
MOVSX ECX, DIL 
SETL BL 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
MOVZX DI, AL 
MOV SIL, AL 
TEST SI, SI 
JMP .bb_main.2 
.bb_main.2:
OR AL, 112 
XADD DX, AX 
MOVZX EBX, BX 
CMOVP EDI, EDX 
XADD ESI, ESI 
TEST CX, -23563 
TEST AL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
SETL CL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CDQ  
JMP .bb_main.3 
.bb_main.3:
XADD AL, CL 
AND DL, BL 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -91 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 40373746 
STC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
