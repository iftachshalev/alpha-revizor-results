.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 88 # instrumentation
CMOVNB SI, SI 
SETNO AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], -116 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RSI] 
CMOVS EDI, EBX 
TEST AX, 28509 
MOVZX RDI, AX 
CWDE  
BTR RCX, 69 
CMOVNB DI, BX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
BTC RSI, -75 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 26 
TEST BL, 113 
CMOVNB RAX, RDI 
MOV EBX, EDX 
XOR AL, 78 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG DIL, CL # instrumentation
AND SIL, 105 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
OR DL, AL 
CMOVO BX, DI 
MOVZX RDX, BL 
BTR AX, AX 
AND SIL, -53 # instrumentation
SETBE CL 
CMOVNZ ECX, EDI 
SETNB BL 
CMOVLE BX, DI 
CMOVB RSI, RDX 
TEST DX, 29557 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
SETLE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
