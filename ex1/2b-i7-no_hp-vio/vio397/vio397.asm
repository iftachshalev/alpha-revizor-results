.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, 806469996 
CMOVNS RSI, RBX 
XOR SIL, -10 
CMOVNS RDX, RDX 
XOR DL, CL 
XCHG EAX, EAX 
MOVZX DX, AL 
SETL BL 
XOR ECX, 118 
AND RCX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RCX] 
CMOVNO RAX, RSI 
XCHG RDI, RDX 
AND AL, -95 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], 76 
BTR RDI, -111 
OR SI, -118 
CMOVBE DX, CX 
SETNO CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -27 
CMOVP RDX, RAX 
CMOVNB EDX, ESI 
SETO CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
BTR ECX, EDI 
MOVZX DX, AL 
MOV DX, -16311 
OR AL, 87 
BTC AX, -121 
XOR RDX, 23 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
