.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], AL 
TEST ESI, EDI 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG SI, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], DX 
XCHG RCX, RBX 
CMOVLE DI, SI 
CMOVS SI, CX 
CMPXCHG RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], -66 
CMOVNBE DI, AX 
CMOVO ECX, EBX 
JMP .bb_main.2 
.bb_main.2:
XCHG CX, AX 
BTC DI, -77 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
TEST AL, -54 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 7 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVZX EBX, SI 
XOR AL, -41 
OR DL, -115 
XOR RAX, -845817792 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
SETZ AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -39 # instrumentation
SETNL CL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RSI] 
XOR BL, DL 
CMOVO CX, DI 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EDI 
AND SI, SI 
XCHG AX, DI 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
