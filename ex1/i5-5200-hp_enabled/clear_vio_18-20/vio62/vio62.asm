.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
XOR DL, 1 
LEA ECX, qword ptr [RCX + RDI + 36670] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -41 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RDX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD DL, DL 
SETNB DL 
NOT RBX 
XOR DX, DX 
BTC DI, AX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RBX] 
AND DIL, 64 # instrumentation
SETO AL 
SETNO DL 
XOR DL, AL 
AND AX, 1 
AND DIL, 63 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RAX 
SETB CL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 1 
BTR CX, 60 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 110 
AND EAX, 505897179 
AND RSI, RDX 
CMPXCHG AL, CL # instrumentation
SETO BL 
SETLE CL 
LAHF  
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
SETL DIL 
MOVZX RSI, BL 
TEST EDX, -277180571 
BTS EDX, 101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
