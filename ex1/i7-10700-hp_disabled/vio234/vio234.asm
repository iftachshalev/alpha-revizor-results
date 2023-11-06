.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DX, BX 
XCHG RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], -84 
XOR AX, -9489 
XOR EAX, 212029793 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 93 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX RCX, DX 
BTS DI, 99 
AND SIL, 22 # instrumentation
CMOVLE EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EDI 
SETP DIL 
AND AL, 97 
CMOVLE EAX, EBX 
AND SI, 0 
JMP .bb_main.2 
.bb_main.2:
NOT BX 
AND RAX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RAX] 
OR CL, -68 
AND RAX, -502672161 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
BTS EBX, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RCX] 
MOVSX AX, SIL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
XCHG DIL, BL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -766409455 
LEA RDX, qword ptr [RSI] 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
