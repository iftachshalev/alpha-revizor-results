.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, -7873 
CMOVO AX, SI 
XOR DIL, -110 
XOR EDI, 87 
MOVZX AX, AL 
MOVZX ECX, DI 
BSWAP RBX 
CMOVL DI, SI 
CMOVNS EDI, EAX 
NOT ECX 
CMC  
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
SETNO DL 
SETNZ CL 
XOR DI, DX 
CDQ  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 66 # instrumentation
CMOVNL CX, CX 
TEST EBX, EDI 
CMOVNP CX, SI 
CMOVP RSI, RAX 
CMPXCHG BL, DL 
CLC  
BTR EAX, EAX 
TEST AX, -22288 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 106 
BTC CX, -80 
CMC  
AND DIL, -90 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
