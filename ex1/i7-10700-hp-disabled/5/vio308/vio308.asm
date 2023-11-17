.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG CL, CL 
CMPXCHG CL, AL 
OR BL, -95 
MOVZX ECX, SI 
CMOVO EAX, ECX 
AND AL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], -54 
CMOVS ESI, EAX 
XCHG RSI, RDX 
CMOVB DX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], -21 
BTS RAX, RBX 
TEST ESI, EAX 
AND RBX, 6 
XADD AL, CL 
CWD  
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
BT BX, -108 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 5 
MOVZX EBX, BL 
XOR RDI, RAX 
CMOVL RCX, RDX 
CMOVZ RDX, RDX 
OR DL, CL 
XOR SIL, -94 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -60 # instrumentation
CMOVNBE AX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RBX 
CMOVNL DX, DX 
CMOVP CX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMPXCHG BL, BL 
SETNB DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
