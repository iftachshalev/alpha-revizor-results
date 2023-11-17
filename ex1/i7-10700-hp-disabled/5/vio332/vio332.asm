.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -17 # instrumentation
MOV BL, -88 
CMOVNZ RSI, RCX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
OR AL, 80 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
SETNP BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], EAX 
AND SIL, -75 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EBX, -1938121016 
AND RDI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDI] 
SETS AL 
MOV CL, AL 
SETNO AL 
MOV CL, BL 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -60 # instrumentation
SETL BL 
AND CL, -55 
CWD  
CMOVNL EAX, EBX 
BT EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], 0 
TEST DL, AL 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], CL 
BSWAP EBX 
LEA RCX, qword ptr [RSI + RAX + 49888] 
MOV DI, -22313 
BTC RDI, RAX 
MOV EDI, ESI 
CMOVZ ECX, EDI 
XOR RAX, -1583891912 
XCHG EAX, EBX 
SETNLE CL 
XCHG EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
