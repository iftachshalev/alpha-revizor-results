.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 60 # instrumentation
MOVSX AX, AL 
CMOVLE DI, CX 
AND SIL, 70 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RBX] 
TEST AL, -5 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD CL, CL 
SETBE DL 
BTR EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RSI], 5 
XOR RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 22 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -11 # instrumentation
SETNO SIL 
CMPXCHG AX, SI 
SETB CL 
CMOVLE BX, DI 
AND DX, -11 
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
NOT DI 
XCHG RBX, RAX 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -79 # instrumentation
CMOVBE SI, SI 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], EDI 
MOVZX SI, BL 
XADD SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RSI] 
XOR DL, BL 
SETB CL 
MOVSX RCX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
