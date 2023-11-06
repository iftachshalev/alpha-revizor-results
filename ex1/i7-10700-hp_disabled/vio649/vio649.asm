.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND BL, -78 
MOVZX RDI, DL 
CMOVB CX, BX 
CMOVNL RSI, RAX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], -49 
AND CL, CL 
XADD SI, AX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
XOR RSI, 66 
CMOVNL BX, AX 
BT RSI, 33 
AND DIL, -49 # instrumentation
CMOVNS EAX, EDX 
XADD BL, BL 
SETB DIL 
MOVZX BX, BL 
JMP .bb_main.2 
.bb_main.2:
STD  
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 7 
XADD RSI, RCX 
CBW  
MOVZX EDX, AL 
TEST AL, 80 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], 1972360088 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RSI] 
AND EAX, -1344548377 
XCHG RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
SETL DL 
XCHG SIL, AL 
TEST SIL, 108 
BTC EBX, -83 
AND DIL, 81 # instrumentation
SETNP DL 
TEST DI, 14730 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
