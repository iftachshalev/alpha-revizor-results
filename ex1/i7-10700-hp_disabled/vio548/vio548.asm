.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
CMOVNP CX, DX 
XOR CX, AX 
OR EDI, 75 
JMP .bb_main.1 
.bb_main.1:
XCHG SI, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
CMOVB EDI, EDI 
CMOVNL RDX, RBX 
MOV CL, 117 
AND EDI, 44 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -68 # instrumentation
CMOVNP RAX, RBX 
CMC  
CLC  
OR RAX, -1790746288 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ESI 
BTR RSI, RBX 
AND SIL, -23 # instrumentation
CMOVL CX, DI 
SETZ AL 
XOR EAX, -1505387256 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -120 # instrumentation
SETP DL 
SETNP AL 
CMOVLE EDX, EBX 
TEST DIL, CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDI] 
BTS EDI, EDX 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 3 # instrumentation
CMOVNZ BX, DX 
SETP DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], AL 
CMOVNBE AX, CX 
CMPXCHG ESI, ESI 
CMOVP ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
