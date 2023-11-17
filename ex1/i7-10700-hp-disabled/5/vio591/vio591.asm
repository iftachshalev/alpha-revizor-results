.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 36 # instrumentation
CMOVB DI, CX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 10 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -69 
XOR RCX, -1 
CMOVNS RDI, RDI 
SETO DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
MOV BX, -29846 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RAX 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], RDI 
AND BX, -51 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], BL 
TEST BL, 57 
MOVSX EAX, SIL 
MOVZX RSI, DX 
MOVZX EDI, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], 4 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTC EDX, 116 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], EBX 
TEST RSI, -390198729 
XOR AL, -11 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -49 # instrumentation
CMOVBE RDX, RDX 
BT BX, CX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDX 
XADD AL, SIL 
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
SETLE BL 
AND DIL, 7 
CMOVNO RAX, RBX 
XOR EBX, -35 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
