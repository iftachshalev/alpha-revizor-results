.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
SETZ BL 
CMPXCHG DL, AL 
CMOVO EAX, ESI 
TEST AX, 402 
BTR RDI, 60 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], BX 
AND SIL, -113 # instrumentation
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
BTS RCX, 111 
MOV CL, -117 
XOR EDX, 82 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
CMOVLE EDX, EAX 
CMOVL BX, CX 
OR DI, -99 
SETZ CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], -49 
BTC RDI, RSI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -104 # instrumentation
NOT AX 
CMOVZ ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
MOV DL, 99 
CMOVS RDX, RBX 
NOT EDI 
NOT DL 
OR EDX, ECX 
XOR AX, -7 
CMOVNB RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
OR RDI, -61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
