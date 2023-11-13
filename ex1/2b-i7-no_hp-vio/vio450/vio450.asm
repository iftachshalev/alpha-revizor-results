.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 53 # instrumentation
SETP DIL 
TEST AL, 77 
MOVSX EBX, AL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RCX] 
BT ECX, EDI 
AND SIL, 85 # instrumentation
CMOVNS SI, DI 
BTC SI, AX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
CMOVP CX, SI 
CMPXCHG BX, CX 
SETLE AL 
AND RSI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RSI] 
XOR EAX, EBX 
CMOVP RDI, RAX 
BTC AX, -40 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RSI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST SI, DI 
CMOVZ DI, DI 
BT ECX, -68 
BTR EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
NOT AL 
SETBE AL 
XOR DL, 75 
MOVSX RDI, DL 
AND AX, 30607 
SETNLE SIL 
BT EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
