.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DIL, AL 
CMOVNBE RSI, RCX 
CMOVZ DX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
CMOVNB CX, CX 
CMOVNLE EDI, EDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 66 # instrumentation
SETNL CL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RBX] 
CWD  
CMPXCHG DI, DX 
CMOVNS RBX, RCX 
CMOVNLE EBX, EBX 
BTC RSI, RSI 
JMP .bb_main.2 
.bb_main.2:
XOR CL, 95 
BSWAP ESI 
AND RDX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RDX] 
CMOVNO RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDX], 6 
SETB BL 
LEA DX, qword ptr [RAX] 
XADD RDX, RDX 
MOVZX ESI, BL 
JMP .bb_main.3 
.bb_main.3:
BT EDI, -12 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RDI 
CMC  
MOVSX ESI, SI 
SETP CL 
CMOVNS RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RCX] 
SETNB DL 
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
