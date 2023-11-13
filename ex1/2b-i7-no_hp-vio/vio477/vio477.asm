.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC BX, 77 
OR DIL, AL 
CMOVB RSI, RDX 
SETNZ DIL 
SETS DIL 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
SETL DIL 
SETBE AL 
AND BL, -25 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG SIL, AL # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
MOV BL, DL 
CMOVB SI, CX 
LAHF  
OR DX, BX 
AND RDX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDX] 
CMOVP RSI, RDI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC ESI, EDI 
AND SIL, 35 # instrumentation
CMOVNO RBX, RCX 
TEST ECX, 2003712002 
OR RAX, -2081754306 
SETZ DL 
CMOVL BX, DX 
CMOVO RCX, RDI 
NOT AL 
BT SI, DX 
AND SIL, -63 # instrumentation
NOT SIL 
CMOVL ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 10 
CWD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
