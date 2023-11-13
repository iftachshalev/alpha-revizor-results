.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD RDI, RBX 
BTC ECX, EDX 
AND DIL, 21 # instrumentation
CMOVL RCX, RDI 
CMOVNB RCX, RAX 
SETNBE CL 
CMOVNLE EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDI] 
CMOVNB SI, BX 
BSWAP RCX 
CMOVNS RAX, RDI 
CMOVB RDX, RDI 
CMOVP RDX, RBX 
CMOVS EDI, ECX 
BTR RAX, RBX 
BTR ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EDX, EAX 
AND BX, -45 
LEA RSI, qword ptr [RDX + RAX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
MOV BL, 10 
TEST EDX, ESI 
CMOVNBE RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -31587 
XCHG EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EDX 
CMPXCHG DIL, CL # instrumentation
LAHF  
CMOVNL EBX, ESI 
XCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EAX 
NOT EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
