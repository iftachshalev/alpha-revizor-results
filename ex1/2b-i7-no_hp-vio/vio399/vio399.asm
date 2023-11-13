.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR SIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], SI 
CMOVNP ESI, EAX 
CMOVB RAX, RDX 
TEST ECX, ESI 
CMOVNP AX, SI 
SETNBE BL 
CMOVS AX, SI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
CDQ  
CMOVNZ DX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 4 
AND SIL, -46 # instrumentation
SAHF  
CMOVNO RDI, RBX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 60 # instrumentation
SETP SIL 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RCX 
MOVZX EDX, AL 
CMOVNP ECX, ESI 
SETNS BL 
XCHG ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
MOVSX DI, CL 
BT EDX, 7 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 3 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
SETNBE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RBX] 
TEST DX, CX 
AND AL, 50 
SETLE BL 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RDI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
