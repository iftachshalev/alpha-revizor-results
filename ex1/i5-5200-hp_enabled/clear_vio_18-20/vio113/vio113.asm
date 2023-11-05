.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX AX, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
CMOVS EDX, ECX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -36 # instrumentation
CMOVNS RDX, RAX 
AND SIL, DL 
CMOVLE DX, CX 
BTC BX, -81 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RAX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -34 # instrumentation
LEA DI, qword ptr [RDX + RBX + 17856] 
CMOVO ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
CMPXCHG SI, SI 
AND RCX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RCX] 
BTR RBX, 112 
XADD ECX, EDI 
XOR RAX, 594076515 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -25 # instrumentation
CMOVZ ECX, EDX 
SETS AL 
SETNP BL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DL 
BT RDI, -77 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDI 
TEST EDI, EDX 
CMOVNZ RDI, RBX 
SETNBE BL 
CMOVNP RSI, RSI 
NOT BX 
BSWAP RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
