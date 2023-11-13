.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 71 # instrumentation
SETB CL 
CMOVNS RCX, RCX 
BT DX, -30 
AND EAX, 121 
XOR EDI, -11 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
AND AX, -24966 
BTC RAX, RCX 
OR RDX, 44 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -2 # instrumentation
MOVZX RBX, DX 
MOV EDI, -1279378458 
CMOVP RAX, RDI 
MOVSX DI, DL 
XOR AX, -11638 
MOV DL, 21 
CLD  
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], BL 
OR RCX, -46 
BTC ECX, -51 
XOR RAX, 913835617 
NOT RDX 
MOVZX RSI, CX 
AND DX, DX 
SETNO BL 
CWD  
XADD RDX, RBX 
TEST RAX, 1775959679 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
