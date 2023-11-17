.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DIL, DIL 
BSWAP RDX 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 5629 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
SETS CL 
BTC RDX, 66 
AND AX, -7132 
CMOVBE RBX, RBX 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
LEA RCX, qword ptr [RSI] 
OR SI, -85 
AND AX, 20932 
CMOVNLE RCX, RAX 
MOV BX, -19893 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], -106 
SETZ CL 
CMOVNB EDI, ESI 
TEST RAX, 1136194183 
JMP .bb_main.2 
.bb_main.2:
TEST AL, 48 
AND AL, 124 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RSI] 
OR RAX, -1832631154 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -53 # instrumentation
CMOVLE SI, DX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RBX] 
CMOVNL EDI, ECX 
CMOVP CX, SI 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EDX 
AND SIL, -50 # instrumentation
SETLE AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
