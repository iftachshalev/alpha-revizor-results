.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -15 # instrumentation
CMOVNS CX, AX 
CDQ  
CMOVBE ECX, EBX 
OR RAX, RDX 
CMOVNL RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDI], 4 
AND DIL, -40 # instrumentation
CMOVNLE RCX, RSI 
MOVSX BX, BL 
TEST DL, 23 
CMOVL AX, DI 
BTC RSI, 82 
BTR EBX, 20 
OR DI, BX 
AND RSI, RDI 
CMOVS RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 48 # instrumentation
CMOVBE EBX, EDX 
NOT DL 
OR DL, 86 
TEST ECX, EBX 
MOV BL, 9 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], EBX 
TEST DL, 102 
AND RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RAX], 5 
XADD RDX, RDI 
MOVZX BX, AL 
OR AL, DIL 
CMOVNLE RDI, RCX 
BTR EDX, ECX 
MOV RDI, 2245044433474473900 
BTS EDI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
