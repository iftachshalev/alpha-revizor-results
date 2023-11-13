.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
OR DL, CL 
SETNLE SIL 
XOR AL, CL 
OR CX, DX 
XOR AL, -115 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
SETNS DL 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EDI 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 0 
BT ECX, 108 
BTR CX, 127 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND DIL, -12 # instrumentation
CMOVNS ECX, EDX 
XCHG SI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RSI 
CMOVNBE AX, DI 
CWD  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -38 # instrumentation
CMOVL DI, AX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], 18 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND DIL, 4 # instrumentation
SETNL AL 
CMOVS EDX, ECX 
SETB CL 
CLD  
TEST EDI, EDX 
AND DIL, -85 
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
CMOVO RSI, RDI 
OR EAX, 293065927 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
