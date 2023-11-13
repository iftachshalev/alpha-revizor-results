.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG SIL, CL # instrumentation
AND SIL, -45 # instrumentation
MOVZX EDX, CX 
LAHF  
TEST AL, 88 
XOR ESI, -43 
BSWAP RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
CMOVNLE RSI, RDI 
OR ECX, 13 
CMOVB RBX, RSI 
BTR ECX, ESI 
AND DIL, 43 # instrumentation
CMOVLE EDI, ECX 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], BL 
XOR DIL, 8 
TEST AL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS DX, 11 
AND EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
CMOVL RCX, RDI 
BTS BX, CX 
CMPXCHG DX, DI 
BTS EAX, ESI 
BTC EAX, 114 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], CL 
CLD  
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], RSI 
MOVSX BX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
