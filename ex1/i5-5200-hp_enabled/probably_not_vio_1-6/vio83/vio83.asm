.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 45 # instrumentation
MOV AX, DX 
CMOVNO EAX, EDI 
CMOVNLE AX, DX 
CMOVS AX, DI 
CMPXCHG RSI, RAX 
NOP  
AND RDI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDI] 
XOR AX, AX 
TEST SI, -29384 
MOVSX ECX, BX 
CMPXCHG CL, SIL 
SETBE AL 
SETP AL 
CMOVL DX, DI 
CMOVO EAX, ESI 
CMOVNS RDI, RBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS EDI, 120 
MOVSX AX, DIL 
AND RCX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RCX] 
CMPXCHG RDX, RDI 
CMOVNLE RBX, RCX 
CMOVNBE DX, DI 
BTR ESI, 40 
SETNBE CL 
XOR SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 7 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RBX] 
CMOVBE EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
TEST AX, 8391 
XOR EAX, -1341138073 
MOVZX ECX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
