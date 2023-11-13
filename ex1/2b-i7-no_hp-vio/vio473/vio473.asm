.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
SETLE BL 
SETNS CL 
TEST EDX, 365423381 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
OR DI, DI 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
AND SIL, 60 # instrumentation
SETNZ AL 
CMOVL EDI, EDX 
SETNZ DL 
LEA CX, qword ptr [RCX] 
CMOVNLE SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ECX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD AL, AL 
CMOVB EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RAX] 
BTS RSI, RAX 
BTC SI, 86 
AND SIL, 111 # instrumentation
NOP  
STD  
CMOVL BX, DI 
XOR BX, -77 
CMPXCHG DL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 6 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], 67 
CMOVNS AX, CX 
OR BL, 0 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], 77 
BTS DX, BX 
AND DIL, 105 # instrumentation
CMOVO ESI, EDX 
BTS RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
