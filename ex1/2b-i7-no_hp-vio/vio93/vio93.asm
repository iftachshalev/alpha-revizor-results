.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 34 # instrumentation
NOT EDI 
CMOVS RAX, RDI 
XCHG DX, BX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], -83 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RBX] 
CWD  
TEST AX, -26263 
OR DI, 15 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], DIL 
LEA DI, qword ptr [RDI + RBX + 55377] 
XOR DIL, 20 
MOVZX RCX, DI 
XCHG EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
CMC  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 31 # instrumentation
SETNBE AL 
SETL BL 
AND RDI, -93 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTR qword ptr [R14 + RDX], RBX 
AND SIL, 47 # instrumentation
CMOVL EAX, EDI 
XADD DL, BL 
XADD BL, CL 
BSWAP EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], DL 
SETB BL 
XOR AL, -103 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
BTS EDI, ECX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
AND DIL, 41 # instrumentation
CMOVLE RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
