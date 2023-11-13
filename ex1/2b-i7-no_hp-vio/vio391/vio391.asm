.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RDX, -121 
AND DIL, 19 # instrumentation
SETB CL 
NOT AL 
SETNO AL 
OR RAX, 322810423 
SETNL DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND DIL, -93 # instrumentation
NOP  
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RDX 
AND DIL, -111 # instrumentation
CMOVLE ESI, EDI 
OR SIL, 18 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDI], 6 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
XOR AL, AL 
OR EBX, -68 
SETNBE AL 
SETZ DL 
CMOVNO EBX, EBX 
CMOVNL RAX, RSI 
BTR RCX, 111 
AND SIL, 85 # instrumentation
SETLE BL 
OR CX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
BT AX, -85 
MOV DX, -26549 
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
AND AX, 28792 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
