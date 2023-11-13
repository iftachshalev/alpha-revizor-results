.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EDI 
XCHG RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
BTC RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RCX] 
SETNBE CL 
BTS AX, CX 
CMOVB AX, DI 
AND DL, AL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], CL 
CMOVB RDI, RAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
CDQ  
SETZ BL 
SETNS AL 
TEST AX, 29351 
AND RAX, 61 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 5 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
CMOVNL AX, BX 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RBX], BX 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 7 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
CLC  
MOV BL, 91 
MOVZX EDX, AX 
AND RSI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RSI], RAX 
XOR RAX, -170235887 
AND RAX, 1442781867 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
