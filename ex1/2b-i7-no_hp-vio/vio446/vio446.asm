.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -34 # instrumentation
CMC  
CMOVNL EDX, EBX 
AND EAX, ECX 
CWD  
AND BX, -87 
SETNLE DL 
BTC RAX, 18 
BTR CX, -14 
AND SIL, 81 # instrumentation
SETNP DL 
CMOVNB EDX, ECX 
CMOVNS DX, BX 
CMOVLE RDI, RAX 
SETS AL 
AND RAX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RAX] 
CMOVP RAX, RDI 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 62 # instrumentation
SETNS BL 
SETNBE DL 
XOR AX, -25532 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
AND RAX, 97 
SETNZ DL 
CMOVNS AX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DIL 
MOVZX RSI, CL 
CWDE  
NOT RBX 
BT SI, CX 
SETNBE SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
