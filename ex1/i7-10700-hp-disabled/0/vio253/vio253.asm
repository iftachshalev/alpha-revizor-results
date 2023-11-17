.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RAX, RCX 
AND SIL, 61 # instrumentation
CMOVP SI, DX 
MOVZX EDX, CL 
BTC ESI, 119 
AND SIL, -125 # instrumentation
SETNO CL 
CMOVNP RDI, RAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RBX] 
XOR AL, AL 
SETNZ BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], AL 
XOR AX, -31624 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], 48 
CMOVNB ECX, EDI 
SETNL DIL 
BTR BX, SI 
BTC SI, DX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], DI 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 1042464507 
XOR EDI, 52 
XOR RAX, -913776909 
BTC AX, 114 
AND SIL, 52 # instrumentation
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XADD AL, BL 
MOV RDX, RDI 
AND BX, -119 
XOR RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], CX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], -45 
OR AL, -105 
MOVZX RDX, DIL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
TEST AL, -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
