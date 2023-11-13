.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 20 # instrumentation
SETNB CL 
BTC CX, DX 
NOP  
AND AX, -23009 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
TEST AL, 111 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RAX] 
BT RSI, -9 
AND DIL, -28 # instrumentation
CMOVLE SI, SI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RAX] 
AND RAX, 664942810 
CLD  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC DX, DI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
CMPXCHG DL, DL # instrumentation
AND DIL, -94 # instrumentation
LAHF  
CMOVB BX, DX 
CMOVNL EDI, EDI 
SETP AL 
AND EDX, 84 
XOR ESI, 126 
MOV EDX, ESI 
XCHG CL, CL 
XCHG AX, AX 
AND SIL, 122 
CMOVO BX, DI 
SETP DL 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], 3 
XOR RDI, 29 
NOT DIL 
CMOVNLE EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
