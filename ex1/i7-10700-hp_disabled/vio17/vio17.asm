.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -100 # instrumentation
SETNL DL 
CLD  
NOP  
MOV CL, -27 
CMOVNLE RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
MOV DL, 20 
AND RDX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RDX] 
AND CX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], -94 
MOVZX RDX, AX 
BT RCX, 62 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -1949221182 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
XCHG DL, DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 6 
MOV EBX, -1012170771 
JMP .bb_main.1 
.bb_main.1:
TEST BL, 98 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1843898467 
SETO AL 
XOR DL, BL 
BT RDX, RDI 
AND DIL, 76 # instrumentation
CMOVB DX, CX 
CMOVO RCX, RSI 
XOR AX, -16475 
CMOVNS AX, BX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 3310318 
MOVSX DI, AL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RBX 
OR RAX, 1380500044 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RDX] 
CMPXCHG CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
