.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, 78 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 457529708 
CMOVNZ EAX, EDI 
TEST EAX, -368781663 
BTC RBX, -59 
AND RSI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RSI], 6 
TEST DIL, -67 
SETS BL 
SETNP BL 
TEST ECX, 101923242 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], AL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RDX 
CMOVNO SI, CX 
CMOVP RDX, RSI 
TEST SIL, 24 
BTS ECX, -86 
CMOVBE ESI, ESI 
MOVZX EAX, CL 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RBX 
AND DIL, 28 
MOV ECX, 101266866 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDX] 
BTC RDX, RBX 
CMOVNB RSI, RDX 
MOVSX ESI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
MOVSX RDX, AX 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RBX 
BTC RDI, 38 
AND SIL, 35 # instrumentation
CMOVLE RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
