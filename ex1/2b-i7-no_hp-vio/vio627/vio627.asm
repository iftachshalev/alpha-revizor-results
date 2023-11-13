.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RDI, -95 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RBX] 
SETNL BL 
MOV AL, DL 
NOP  
BTR ECX, -27 
CBW  
AND RDX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDX] 
SETNZ CL 
CMOVB SI, CX 
MOV DL, CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
BTS DX, AX 
AND SIL, 77 # instrumentation
SETB BL 
SETNS DL 
SETNBE CL 
NOT DL 
XOR EDX, EBX 
XADD AX, CX 
CMOVLE RCX, RDI 
BTS RBX, -11 
AND DIL, -125 # instrumentation
CMOVP BX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RAX], AX 
OR AX, -4183 
MOVZX AX, DL 
BTS RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RDX 
SETNS DL 
AND ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
