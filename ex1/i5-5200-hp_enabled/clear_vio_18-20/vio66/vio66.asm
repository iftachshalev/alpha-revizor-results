.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -34 # instrumentation
CMOVL ECX, EDI 
SETBE BL 
STC  
TEST AL, -1 
XOR DL, 34 
OR AL, 70 
CMOVNO EAX, ESI 
BTR RDX, -89 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -14 # instrumentation
NOT CL 
SETNP SIL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
OR RAX, 1803379345 
SETNB BL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XCHG CL, DL 
CMPXCHG EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 124 
SETBE DIL 
CMOVNB EDX, EAX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BT BX, AX 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
BTS RAX, -102 
OR SI, -105 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], EDX 
AND SIL, -122 # instrumentation
SETS AL 
MOV EAX, EAX 
JMP .bb_main.4 
.bb_main.4:
XOR DIL, 11 
XOR AL, BL 
OR DX, 125 
CLC  
CMOVNBE RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
