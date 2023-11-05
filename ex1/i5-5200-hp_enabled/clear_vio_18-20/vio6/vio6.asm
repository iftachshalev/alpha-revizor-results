.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ESI, -1946352180 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DIL 
XCHG ECX, EAX 
XCHG BL, BL 
LEA BX, qword ptr [RAX] 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR EBX, EDI 
CMOVLE BX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RSI] 
BT CX, BX 
AND AL, -33 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 112 # instrumentation
MOV AL, SIL 
CMOVBE DX, DI 
BTC RSI, RSI 
MOV AL, 107 
XCHG DX, SI 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RAX] 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR EAX, -351169857 
XOR DIL, 123 
CMPXCHG RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
SETL AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RBX] 
MOVZX RCX, SI 
MOV EAX, ECX 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -22 # instrumentation
SETNB AL 
AND DL, AL 
SETNS AL 
OR DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
