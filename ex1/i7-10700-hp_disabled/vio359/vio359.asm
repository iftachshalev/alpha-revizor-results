.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -33 # instrumentation
CMOVZ DX, BX 
AND SIL, -23 
SETP SIL 
SETZ BL 
NOT AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -79 # instrumentation
MOVZX RDX, SIL 
SETP DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -49 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR RSI, 94 
NOT BL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RAX 
OR RCX, RAX 
CMOVL EBX, ESI 
CMOVNB RSI, RDI 
OR DIL, -12 
XOR DIL, -1 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RCX], 6 
BT EBX, EDX 
AND DIL, 5 # instrumentation
MOVZX EBX, AL 
CMOVP EDI, EAX 
CMOVBE RCX, RSI 
XOR AL, 50 
XCHG BL, CL 
SETNP DL 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG RBX, RAX 
BTC RDX, RSI 
MOV BX, -27838 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RCX] 
MOVSX EBX, DIL 
SETLE DL 
BTC RCX, -122 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
