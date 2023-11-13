.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 126 # instrumentation
CMOVNS BX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
SETP BL 
BTR RCX, -1 
TEST CL, -27 
OR AX, -13078 
AND RBX, -6 
CMOVO AX, AX 
SETNP CL 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], 24 
NOT AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RBX 
MOVSX DI, CL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RAX] 
AND SIL, 58 # instrumentation
CMOVNB EDI, EBX 
BTR RAX, RCX 
SETNB DIL 
CLC  
AND RSI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RSI], 5 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], 7 
AND DIL, 77 # instrumentation
SETNP CL 
AND AX, -1199 
SETNS AL 
XADD RBX, RAX 
CMOVNZ DI, AX 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
XCHG BL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
OR DX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
AND CL, CL 
TEST ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
