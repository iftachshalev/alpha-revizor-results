.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DIL, -127 
SETP BL 
MOV BL, CL 
AND AX, 19442 
XOR ESI, 121 
OR RSI, -111 
CMOVNB RAX, RAX 
AND ESI, EAX 
OR SI, -100 
CMOVNO AX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RCX] 
OR RSI, RBX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG BL, AL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RBX, 40 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 2 
AND SIL, 84 # instrumentation
CMOVO ESI, EDI 
CMOVNZ EAX, ECX 
SETS SIL 
XCHG DI, AX 
SETZ CL 
XOR EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RCX] 
CLD  
AND CL, -87 
XOR DX, DX 
CMOVNP DX, BX 
MOVZX SI, BL 
XADD RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RAX] 
CMOVNL EAX, EAX 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
