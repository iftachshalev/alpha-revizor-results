.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 78 # instrumentation
CMOVNLE ESI, EAX 
CMOVNLE DX, DX 
CMOVO RSI, RAX 
SETZ DIL 
XADD AL, AL 
BSWAP EDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RDX, DX 
BTS ECX, 19 
BTC RDI, 43 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], 6 
SETBE CL 
NOP  
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RAX 
CMPXCHG DIL, CL # instrumentation
AND SIL, 18 # instrumentation
LAHF  
TEST EBX, EBX 
MOV AL, BL 
CMOVLE EBX, EBX 
CMPXCHG BL, BL 
OR AL, 123 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ESI 
JMP .bb_main.3 
.bb_main.3:
AND ECX, EBX 
CMOVB RSI, RSI 
AND EAX, -1246354554 
SETNO DL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
SETZ DL 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RBX], BX 
XOR SIL, -90 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
AND DIL, -66 # instrumentation
MOVZX RBX, SI 
SETP DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
