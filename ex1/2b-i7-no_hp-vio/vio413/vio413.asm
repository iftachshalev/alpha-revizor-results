.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -109 # instrumentation
CMOVNL RAX, RDX 
SETNL CL 
MOV AX, 18832 
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 3 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RDI 
SETB AL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
AND EDX, EDX 
SETB DL 
MOVSX ECX, SI 
SETO SIL 
SETNP AL 
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
BTR RBX, 90 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, -751849465 
AND AL, 36 
MOV EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
XOR AL, 57 
MOVZX BX, CL 
SETZ CL 
BTC AX, 37 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EBX 
NOT RCX 
MOVSX SI, BL 
BTS RDX, 105 
MOV CX, 24398 
NOT AL 
MOVSX EDX, AX 
CMOVBE RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
