.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, -54 
XADD AL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], 90 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR DL, CL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDI] 
AND SIL, 28 # instrumentation
SETNL AL 
TEST DIL, -69 
CMOVNL EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RBX 
AND AL, 50 
XADD CL, AL 
OR AL, -4 
XADD DI, BX 
AND RDX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDX] 
SETZ CL 
CMOVO BX, SI 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 58 # instrumentation
MOVZX DI, DIL 
CMOVNZ CX, BX 
BTS ECX, -42 
AND RAX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -98 
CMOVLE SI, DX 
JMP .bb_main.4 
.bb_main.4:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
SETO CL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
TEST AX, -32558 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
