.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP EBX 
OR RSI, RDI 
XOR RAX, 1 
CMOVBE RSI, RCX 
SETL CL 
CWDE  
SETS CL 
XCHG RDI, RAX 
CMOVO EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], SIL 
SETNBE DL 
CMOVNP RCX, RDI 
XOR SIL, 115 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 53 # instrumentation
CMOVP RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -106 
OR DIL, SIL 
SETZ CL 
OR CL, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
CMPXCHG CX, DI 
CMPXCHG BX, DX 
CMOVNL SI, BX 
LEA CX, qword ptr [RBX] 
MOVZX EDI, AL 
TEST SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
SETNB DL 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RAX 
AND DIL, -66 # instrumentation
CMOVS RDI, RDX 
TEST ECX, 1781067305 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
