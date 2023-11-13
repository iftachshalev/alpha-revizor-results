.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 64 # instrumentation
NOT SI 
CMOVLE RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 6 
OR BL, CL 
CMOVLE EBX, EAX 
MOVSX EDX, CL 
TEST RDX, RCX 
CMOVNZ SI, DI 
CMPXCHG BL, BL 
CMOVLE EDI, EBX 
BTC RAX, RBX 
AND AL, -57 
LEA RDX, qword ptr [RSI + RDX] 
CMOVS RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DI, 31 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
BTC BX, -120 
MOV EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDX] 
TEST CL, -56 
BTR AX, 3 
AND BL, -118 
NOT EBX 
MOVZX ECX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RDX] 
NOT DI 
XOR DIL, -95 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 7 
AND DIL, -97 # instrumentation
CMOVLE EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
