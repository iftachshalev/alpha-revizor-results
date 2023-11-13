.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, -7864 
XADD SIL, DL 
SETZ DIL 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RDX 
MOVSX RDX, DX 
CMOVBE DI, SI 
SETNZ DL 
SETNP AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 3 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
XADD RCX, RAX 
OR CX, 0b1000000000000000 # instrumentation
BSR CX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 2 
TEST EDI, ESI 
CMOVO CX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -6 
CMPXCHG ECX, EDX 
MOV DL, -89 
CMOVNLE DX, CX 
AND BL, 42 
BT EDI, -16 
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
AND AX, 8236 
CMOVBE RAX, RSI 
MOVZX ECX, DX 
CDQ  
OR AL, -62 
TEST RAX, -1745899699 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
