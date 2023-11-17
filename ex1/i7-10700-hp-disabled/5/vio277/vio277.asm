.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND BL, DIL 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDI], 1 
BTC EDX, -16 
AND DIL, 114 # instrumentation
CMOVNLE ESI, EDX 
XCHG DL, AL 
CMOVNBE RDI, RDI 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BT ESI, -95 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -88 
TEST AL, BL 
XCHG CL, AL 
CMOVO SI, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
BTR RDI, -68 
AND SIL, 82 # instrumentation
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -12 # instrumentation
CMOVNS RCX, RDX 
SETNL BL 
SETZ BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
STD  
CWD  
MOVSX EDX, DX 
AND RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 127 # instrumentation
SETBE BL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
OR AL, -122 
XOR SI, DX 
XOR EAX, -1944874844 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -524467051 
TEST CX, -28733 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
