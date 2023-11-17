.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
CMPXCHG ESI, EBX 
CMOVNBE RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
CMOVNZ AX, SI 
OR EAX, 937981409 
TEST AX, BX 
CMOVNBE EDX, ECX 
SETL BL 
SETNL BL 
BTR EBX, -57 
SETZ DL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ECX 
CMOVNS RCX, RDI 
CMOVB RDI, RCX 
STD  
MOVSX ESI, SI 
SETNP DL 
AND SIL, 71 
CMOVB ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
BTR ECX, 50 
XOR DIL, 72 
CMOVL RDI, RDX 
AND EAX, 338151646 
MOVZX EDX, CL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
CMOVS RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
BTC BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
