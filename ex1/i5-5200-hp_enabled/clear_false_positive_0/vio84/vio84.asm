.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -115 # instrumentation
CMOVNLE AX, DX 
BT DX, 30 
OR ECX, 107 
OR DX, -68 
CMOVNO ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -102 
NOT BL 
CMOVL RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND DIL, AL 
CMOVLE DX, CX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
XOR EBX, -37 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
BTS EDX, EDX 
AND SIL, -71 # instrumentation
CMOVNP EDX, ESI 
XOR SI, -71 
AND RDX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
OR AX, 23235 
BTC CX, 40 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
XOR RAX, 791737999 
CWDE  
NOT RDX 
AND EAX, -1429863851 
XCHG SI, AX 
NOT EBX 
SETNBE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
