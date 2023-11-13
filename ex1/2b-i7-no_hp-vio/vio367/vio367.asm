.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 93 # instrumentation
CMOVNS RBX, RDX 
LEA ECX, qword ptr [RDX] 
CMOVNL RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
OR AX, -19265 
CMOVBE AX, DI 
CMOVNL EDX, ESI 
CMOVNLE ECX, EAX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
AND DIL, 76 # instrumentation
SETBE BL 
XCHG DI, AX 
MOVZX EBX, DIL 
SETNL AL 
CMOVP CX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
TEST RAX, -1728250111 
OR SIL, 82 
LEA RSI, qword ptr [RBX + RSI + 32214] 
AND AL, -111 
MOVSX RCX, AX 
CMOVBE EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 42 
CMOVS BX, SI 
MOVSX RCX, CX 
AND EAX, -469851295 
OR BX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
BTC CX, DX 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
MOV AL, BL 
CMOVB EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
