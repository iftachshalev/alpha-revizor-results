.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RBX] 
CMOVNL DI, DX 
STD  
LEA RSI, qword ptr [RBX] 
BTC RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
MOV RCX, 7637598346252736477 
AND ESI, 72 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ESI 
SETNBE DL 
MOVZX BX, BL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 1057080866 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], CL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 111 # instrumentation
CMOVL EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RAX], 5 
OR AX, 10 
CMOVBE EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RSI], EAX 
TEST EDI, EAX 
XOR AX, 7010 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
BTS RCX, RSI 
BTS AX, DX 
AND DIL, -4 # instrumentation
SETNZ DL 
CMOVNS EDI, ECX 
OR AL, DL 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RCX] 
BTS DI, 72 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND AL, 81 
CMOVNS EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
