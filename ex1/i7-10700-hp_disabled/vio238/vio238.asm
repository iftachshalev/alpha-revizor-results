.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 126 # instrumentation
CMOVNO CX, DI 
AND RSI, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
LEA RDX, qword ptr [RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
SETNZ CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DL 
XCHG DX, SI 
TEST DIL, -1 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
TEST RSI, RCX 
XOR EDX, EDI 
OR DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
MOVSX ESI, BL 
TEST EBX, EBX 
XCHG AX, AX 
SETO DIL 
SETS BL 
BTS SI, SI 
XOR EBX, -27 
BTC ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], ECX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTR DI, AX 
MOV EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
BSWAP ESI 
MOV EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], EBX 
SETB AL 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
