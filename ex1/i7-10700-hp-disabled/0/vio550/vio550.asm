.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 44 # instrumentation
SETNBE BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
CMOVNBE SI, SI 
XCHG ECX, ECX 
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], BL 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR AL, 46 
STC  
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
OR RSI, 1 
CLC  
TEST DX, BX 
CMOVB RSI, RAX 
AND AX, -32341 
TEST RAX, -1037267508 
XOR RCX, RBX 
MOV DL, DL 
AND CX, -29 
SETNZ DIL 
SETNZ DIL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
BTC EDI, EBX 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
XOR SIL, -120 
AND RAX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RAX] 
SAHF  
CMOVO RSI, RBX 
CMOVNB DX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
CMOVZ CX, BX 
SETP SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
