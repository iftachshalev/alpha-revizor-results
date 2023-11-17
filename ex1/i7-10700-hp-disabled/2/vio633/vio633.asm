.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -20 # instrumentation
SETNBE AL 
SETNS AL 
XADD AL, SIL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND SIL, -57 # instrumentation
CMOVBE AX, CX 
XOR AL, 5 
CMOVZ BX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
CLC  
BTS EAX, EDX 
MOVZX DI, AL 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
AND CX, DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RCX] 
SETNZ CL 
MOVZX ESI, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RCX] 
SETZ DIL 
XOR RAX, -1756261288 
XOR SI, DX 
TEST ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
SETNLE BL 
AND RAX, -111 
STD  
SETZ DIL 
XADD EDX, ESI 
TEST AX, -25344 
AND RAX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RAX] 
TEST BL, CL 
XCHG AX, AX 
CMOVLE RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
