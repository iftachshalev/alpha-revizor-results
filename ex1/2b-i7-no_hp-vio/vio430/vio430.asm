.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -3 # instrumentation
SETNS DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RBX] 
CMOVBE ESI, EAX 
CBW  
XOR DI, -76 
MOVZX DI, BL 
TEST RAX, -1301660394 
CMOVO EDI, EDX 
TEST DL, BL 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], AL 
CWDE  
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
AND SIL, -53 # instrumentation
CBW  
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX DX, CL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DL 
CMOVNB ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -106 
MOVZX RDI, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], 6 
CMOVB BX, CX 
CMOVB ECX, EAX 
XOR AX, -4685 
BTR RCX, -86 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
MOVSX EDX, DL 
CMOVB ESI, EBX 
CMOVNO RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
