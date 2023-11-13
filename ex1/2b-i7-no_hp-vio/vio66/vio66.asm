.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 101 # instrumentation
MOVZX RBX, CL 
SETBE CL 
SETNB AL 
XCHG RDI, RAX 
XCHG EDI, EDX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND DIL, -27 # instrumentation
CMOVP DX, DX 
CMOVNL AX, SI 
MOVSX BX, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], BL 
CMOVBE ESI, EBX 
MOVZX RAX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RCX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
TEST CL, -117 
OR CL, -16 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], -125 
NOT RBX 
TEST RSI, -2068835708 
XCHG ESI, EAX 
CMOVNS RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 108 
BTR RDX, RSI 
CLD  
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
MOV EAX, 1305379481 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RAX] 
SETNZ SIL 
AND RDX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDX] 
XADD CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
