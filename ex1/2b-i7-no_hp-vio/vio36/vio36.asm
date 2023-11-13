.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -18 # instrumentation
CMOVNS RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], CX 
SETNO AL 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
XCHG CX, AX 
BTC CX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
XOR CL, CL 
AND AX, -5292 
CMOVNO RSI, RAX 
TEST AL, 95 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], ESI 
AND SIL, -59 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RAX] 
AND CL, DIL 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
SETNBE CL 
TEST SI, -27232 
CMOVO RCX, RSI 
SETNS SIL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
NOT BL 
MOV RCX, 4955357692619022826 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EDX 
CMOVNBE ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], 66 
XOR DIL, -112 
BTR EBX, ESI 
CMOVNBE ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
AND SIL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
