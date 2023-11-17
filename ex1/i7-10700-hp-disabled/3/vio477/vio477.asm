.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 22251 
OR RDX, RAX 
CMOVS BX, BX 
CMOVLE ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], CL 
SETL CL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], -26 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RBX] 
NOT DL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -24 # instrumentation
CMOVNBE EAX, EAX 
MOVSX EDX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RAX] 
MOVSX ECX, DX 
BTS ESI, -39 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], AL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 10 # instrumentation
SETBE BL 
SETNS BL 
BTS DX, -43 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
XCHG AX, AX 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], RCX 
BTS RBX, RSI 
OR RAX, 1127223921 
CMOVNO EAX, ESI 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EDX 
XCHG ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EBX 
MOV EDX, EBX 
XCHG RSI, RAX 
BTC RCX, RSI 
AND DIL, -94 # instrumentation
SETO DIL 
CMPXCHG EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
