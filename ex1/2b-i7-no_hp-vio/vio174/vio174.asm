.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 90 # instrumentation
CMOVNO EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
CMOVNP EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
SETNS AL 
CMOVL DI, AX 
AND RCX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
BTS BX, -79 
AND CL, CL 
XCHG SIL, DL 
SETP BL 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
TEST SI, DX 
CMOVL EDX, EDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 92 # instrumentation
XCHG BL, BL 
CMOVNL SI, BX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
AND SIL, -88 # instrumentation
SETNS AL 
AND RBX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDI] 
TEST AX, -7172 
OR SI, BX 
BTR EDI, 9 
SAHF  
XADD EDX, ECX 
CMOVBE ECX, EBX 
CMOVB SI, DX 
MOVZX SI, AL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
