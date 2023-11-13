.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DL, SIL # instrumentation
AND SIL, -124 # instrumentation
LAHF  
CMOVO AX, AX 
SETNZ BL 
MOVSX ESI, DL 
CMOVP RAX, RDX 
CMOVS BX, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -58 
SETNBE BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], BL 
MOV EAX, EBX 
BT CX, CX 
AND AL, 99 
CMOVZ CX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND AX, AX 
AND SIL, 49 
BTC RCX, -100 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
CMOVS RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
CMOVO EDX, EDI 
LEA RBX, qword ptr [RBX + RSI + 21329] 
AND CL, -100 
SETNS CL 
SETNO AL 
TEST RDX, 184066513 
AND CL, CL 
SETO BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], -67 
TEST DIL, -24 
CMOVS RBX, RDI 
BTR EBX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
