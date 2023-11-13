.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDX] 
NOT RSI 
CMOVNB RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
BTC RSI, 103 
NOT EDI 
BT DX, AX 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EAX 
AND SIL, 101 # instrumentation
SETNZ DL 
CMOVNO SI, DX 
OR ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
CMOVBE DI, CX 
SETBE SIL 
XCHG DIL, AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
SETNP BL 
MOV CL, DL 
TEST CL, CL 
TEST RAX, -611744206 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -65 
BTR ECX, -86 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RSI] 
SETNBE AL 
AND RDI, RSI 
XCHG CX, AX 
XOR DI, -62 
SETBE BL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 2 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
