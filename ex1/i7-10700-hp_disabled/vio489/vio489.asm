.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RDX] 
CMOVLE ECX, EBX 
NOT EDI 
AND RAX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], ESI 
AND SIL, 1 # instrumentation
CMOVS RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RSI] 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], -10 
SETO AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], SIL 
CMOVZ EDI, ECX 
XOR DI, SI 
BTC EBX, EDX 
AND SIL, -123 # instrumentation
NOT CL 
SETL CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTR qword ptr [R14 + RBX], RDI 
BT RCX, RDX 
AND DIL, 66 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 117 # instrumentation
BTR EBX, ESI 
CMOVZ RSI, RDX 
MOVSX DX, BL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RAX] 
AND AL, AL 
SETNBE DIL 
CMOVNL SI, BX 
SETNB AL 
BTS EDX, 97 
BT SI, 127 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RCX], RBX 
MOV BX, 27304 
SETNBE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
