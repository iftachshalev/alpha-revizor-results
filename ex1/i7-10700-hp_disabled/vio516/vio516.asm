.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, RCX 
CMOVNP DX, AX 
BTR RSI, RCX 
BTR AX, -93 
OR CL, CL 
CMOVNP RAX, RSI 
CMOVLE EAX, EDI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 48 
XCHG AL, BL 
OR RAX, RCX 
CMOVO ECX, ESI 
MOVZX ECX, AL 
MOV AX, BX 
CMOVNBE ECX, EDI 
OR AL, -82 
CMOVNLE RCX, RAX 
CMOVZ ESI, EAX 
XCHG EBX, ESI 
BT RBX, -18 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -24 # instrumentation
MOVSX ECX, BL 
SETNL AL 
LEA RBX, qword ptr [RSI + RDX] 
CMOVNZ ESI, EDX 
BTC ECX, -123 
TEST DIL, -2 
CMOVNL AX, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDX] 
MOVSX ECX, CL 
SETNL DL 
XOR AL, CL 
CMOVNL DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
