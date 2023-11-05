.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -69 # instrumentation
SETNO CL 
OR RAX, -417576469 
CMOVP EBX, ECX 
XADD CL, AL 
SETNL CL 
AND RCX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RCX], DI 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BSWAP EDI 
OR RAX, 576844612 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
OR CL, AL 
BTC EBX, 44 
AND SIL, 8 # instrumentation
CMOVO DI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], AL 
JMP .bb_main.2 
.bb_main.2:
XOR RDI, RDI 
AND DI, 28 
MOVZX BX, SIL 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -19 # instrumentation
CMOVNBE CX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
TEST AX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], -1 
AND AL, 115 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 76 
CMOVB DX, AX 
CMOVO RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
NOT ECX 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RAX 
TEST DL, -98 
BTS ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
CMOVBE EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
