.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
AND EBX, 4 
CMOVNL EDX, ESI 
XCHG BX, AX 
MOV DL, CL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
TEST AL, BL 
CMOVL RDX, RCX 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DL 
OR AX, -27485 
TEST DL, AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
LEA BX, qword ptr [RDX] 
AND RAX, -110 
CMOVNO AX, DX 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
CMOVNP RDI, RCX 
BSWAP RSI 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -45 # instrumentation
SETO AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
TEST RDI, -1641076909 
OR AL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 2 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -40 # instrumentation
MOVSX EBX, AL 
SETNP CL 
BTR RSI, -118 
CMOVBE ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -66 
CMPXCHG SIL, BL # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], -76 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
