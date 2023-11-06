.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
BTC BX, -76 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
SETL CL 
XOR SIL, 97 
CMOVNBE EBX, EDX 
MOV SI, 2357 
AND BX, -98 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
TEST DIL, -107 
CMOVNLE EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], BX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RCX] 
CMOVLE BX, DI 
CMPXCHG DIL, AL 
SETLE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
OR AL, 5 
CMOVNS RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
AND AX, 14401 
CWD  
TEST SIL, -83 
CMOVLE RBX, RBX 
TEST SIL, -124 
SETL BL 
BTR EDX, EDI 
CMOVNZ EDX, ECX 
XOR DX, DX 
SETNS DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
