.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 83 # instrumentation
NOT DIL 
SETNO CL 
NOT CL 
CWDE  
XOR EAX, 1803239174 
XCHG RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], 40 
XOR SIL, CL 
CMOVNO SI, AX 
SETNL CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], -18 
CMOVNP EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RCX], RDX 
BT BX, -46 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
OR ECX, ESI 
CMOVNP EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RCX] 
MOVZX RSI, DI 
SETB CL 
OR DL, -96 
AND RAX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RAX], BX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 46 
SETNB DL 
BTC BX, DI 
AND DIL, 62 # instrumentation
CMOVL RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], -115 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -87 
BT EDI, ESI 
BTC EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
