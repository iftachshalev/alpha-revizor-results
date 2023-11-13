.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 20 # instrumentation
CMOVL RCX, RDI 
XOR EDX, ESI 
TEST AL, AL 
CMOVBE SI, DX 
TEST SI, CX 
BT RDX, RDI 
AND DIL, -89 # instrumentation
CMC  
SETL BL 
SETO AL 
BTR CX, CX 
AND SIL, -73 # instrumentation
LEA EDX, qword ptr [RDX] 
CMOVNZ ECX, ESI 
CMOVNL RSI, RSI 
CMOVNO ECX, ESI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, 57 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
CMOVNLE EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
OR AL, CL 
AND EBX, -29 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
BT EAX, EDI 
AND SIL, 39 # instrumentation
SETNBE AL 
CMOVNP ECX, ECX 
BTC DX, -3 
OR RAX, -176594012 
SETB CL 
AND SIL, -33 
BTC EBX, ECX 
XCHG SI, AX 
TEST SIL, -65 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
