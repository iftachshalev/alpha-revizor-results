.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 88 # instrumentation
STC  
CMOVP DX, SI 
SETNO AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
BT RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], AL 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -106 # instrumentation
CMOVL EDX, ECX 
NOT EDI 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ESI 
XOR EDX, 51 
SETP BL 
CMOVNBE EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
XCHG EBX, EAX 
TEST AL, 79 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
STD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RDI] 
CMOVZ AX, BX 
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
AND DIL, 10 # instrumentation
SETL AL 
XCHG CX, AX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 58 # instrumentation
CMOVNL DI, SI 
SETLE BL 
CMOVNL RBX, RAX 
CMOVNLE RCX, RBX 
AND EAX, 1316336472 
AND RDI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDI] 
SETO SIL 
TEST RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
