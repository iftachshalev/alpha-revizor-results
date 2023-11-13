.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
MOV EDI, EDX 
XOR SI, DI 
BTC EDI, ECX 
XOR BL, AL 
AND RAX, -346024076 
BT DI, AX 
SETZ DL 
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 5 
AND SIL, 31 # instrumentation
SETNLE DL 
XCHG CX, DX 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDX] 
TEST SI, -3278 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
SETS AL 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -113 # instrumentation
CMOVB EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RSI] 
AND AL, -58 
TEST AL, CL 
XCHG RBX, RAX 
TEST AX, 7699 
CMPXCHG AL, DIL # instrumentation
LAHF  
CMOVNL EBX, ECX 
CMOVLE EBX, EDI 
TEST RAX, 774457682 
CLC  
NOT RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDX] 
MOVSX ESI, BX 
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
