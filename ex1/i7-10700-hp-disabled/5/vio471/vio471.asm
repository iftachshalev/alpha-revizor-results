.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
AND DIL, -88 # instrumentation
CMOVP RSI, RDI 
CBW  
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
TEST EAX, -2083178882 
BT EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BTR SI, DI 
BT EAX, EAX 
AND DIL, 6 # instrumentation
BSWAP EAX 
CMOVNP RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
CMPXCHG BL, DL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EAX 
CMOVB DX, DI 
BT DX, SI 
BSWAP RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDX] 
CMOVBE DI, CX 
CMOVNZ DX, CX 
OR CL, BL 
XCHG BL, DL 
CMOVNLE AX, BX 
CMOVB RBX, RCX 
MOVZX RBX, CL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 47 
OR AX, -18837 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDI] 
SETNL AL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
AND DIL, 35 # instrumentation
CMOVS RCX, RAX 
XOR AX, -23673 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
