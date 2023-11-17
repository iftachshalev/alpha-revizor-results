.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 13 # instrumentation
SETNP CL 
TEST EAX, -346435547 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], CX 
BTC AX, BX 
CMOVB BX, SI 
AND EAX, 1223539646 
OR BX, 67 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVNB DI, BX 
OR CX, -24 
CMPXCHG CL, AL # instrumentation
LAHF  
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND EAX, 1114997029 
MOV CX, BX 
SETNO CL 
SETBE BL 
CMOVNL EDI, EAX 
AND AX, -15070 
CMOVNB RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], 6 
XOR BL, 95 
OR AL, -85 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR RDX, 40 
XOR ESI, -101 
XCHG CL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DL 
SETLE CL 
CMOVNLE DI, DI 
CMOVP EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
CMOVS CX, DI 
CMOVNO CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
