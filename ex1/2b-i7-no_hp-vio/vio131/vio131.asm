.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -64 # instrumentation
SETO DIL 
OR RAX, 1486729658 
AND EAX, -2014969426 
MOV CL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 4 
CMPXCHG EAX, EBX 
CMOVNB CX, DI 
BTR EDI, -35 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
AND DIL, -69 # instrumentation
NOT DL 
CMOVBE RAX, RDX 
TEST CL, CL 
BTS DI, -64 
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 5 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RAX, -888069421 
XOR ESI, EDX 
XOR AX, 27749 
BTC DI, 82 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RSI] 
TEST AL, 72 
CMOVNBE EDX, EDI 
BT DX, DX 
CWDE  
CBW  
CMPXCHG AL, BL 
SETO BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], 20 
AND RDX, RDI 
BTR ECX, 22 
AND SIL, 36 # instrumentation
CMOVP EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
