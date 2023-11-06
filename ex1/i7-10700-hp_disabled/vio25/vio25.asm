.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RSI 
CMOVO RSI, RCX 
SETNO BL 
BTR CX, 86 
XOR DIL, -56 
CMOVNBE EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], 101 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -36 # instrumentation
CMOVNLE RCX, RDX 
SETNL CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RSI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 65 # instrumentation
CMOVNZ AX, BX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], -103 
XADD RSI, RSI 
SETNBE CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], AL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 78 # instrumentation
SETNZ BL 
CMOVB RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RBX] 
MOV DL, BL 
CMOVLE RBX, RSI 
BTS RDI, RAX 
SETBE BL 
SAHF  
XADD RBX, RSI 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVSX ESI, CX 
TEST EAX, 674229717 
CMOVNP DX, CX 
XCHG AX, AX 
XOR CL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
