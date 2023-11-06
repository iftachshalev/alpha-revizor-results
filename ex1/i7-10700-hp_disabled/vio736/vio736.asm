.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT EAX 
OR RBX, -33 
MOV RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
TEST AX, -5593 
XOR EAX, ECX 
NOP  
AND RDI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RDI], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], AL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 81 # instrumentation
SETP AL 
TEST DIL, 52 
SETBE CL 
TEST EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RAX] 
CMOVNB DX, AX 
CMOVNO CX, BX 
JMP .bb_main.2 
.bb_main.2:
OR EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], RBX 
OR DIL, 35 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RAX] 
LEA DX, qword ptr [RSI + RDX] 
BTC EBX, 65 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 70 # instrumentation
SETNB AL 
SETP AL 
MOV RCX, RDI 
XOR AX, -17864 
SETLE CL 
CMOVNS EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
