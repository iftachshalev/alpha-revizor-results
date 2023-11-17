.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -39 
CMOVBE RDI, RAX 
CMOVNZ RSI, RBX 
BT ECX, ECX 
OR AX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDX] 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
TEST RDX, -416844295 
CLD  
AND EBX, 31 
BSWAP EDI 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 53 # instrumentation
SETS AL 
CMOVB BX, AX 
SETBE AL 
SETNZ DIL 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RAX], DI 
AND EAX, EAX 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR BL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RCX] 
OR RCX, 33 
LEA RBX, qword ptr [RSI + RAX + 25367] 
MOVSX RCX, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RBX] 
OR RDX, RSI 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX EAX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
TEST AL, 59 
CMOVNLE CX, BX 
OR AX, 15884 
AND AL, 118 
XADD AL, AL 
BSWAP RSI 
AND RAX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
