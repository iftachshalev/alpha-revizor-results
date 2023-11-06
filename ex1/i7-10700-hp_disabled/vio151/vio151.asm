.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
XCHG EAX, EBX 
BTS SI, DI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], -79 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
TEST RDI, RDI 
MOV BL, 120 
SETO BL 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -120 # instrumentation
SETNBE DL 
AND RAX, -731202890 
BT ESI, -105 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], BL 
AND BL, DL 
AND RDX, -12 
MOVZX SI, CL 
AND DIL, -2 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR EDX, ESI 
MOVSX EBX, DL 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
XCHG DX, AX 
CMOVNO RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RBX 
XCHG DX, DX 
XADD AL, AL 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -44 # instrumentation
XCHG EAX, ESI 
SETNBE AL 
BTC RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
BTR RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 1168190292 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
