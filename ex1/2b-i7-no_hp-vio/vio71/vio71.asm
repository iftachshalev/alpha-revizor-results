.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 94 
CMPXCHG CL, BL 
AND RBX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RBX], 5 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
TEST EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 5 
XADD EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RCX] 
OR AL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
OR AX, 23960 
CMOVNZ DI, SI 
SETS CL 
OR RCX, 60 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], AX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], ESI 
XOR EAX, 1468486942 
TEST AL, CL 
BTC RAX, 60 
AND AL, -118 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], -113 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EDX 
OR AL, BL 
MOV CL, SIL 
BT BX, DI 
CMOVB EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], 1 
MOV CL, -16 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
XCHG RSI, RAX 
CMOVZ RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
