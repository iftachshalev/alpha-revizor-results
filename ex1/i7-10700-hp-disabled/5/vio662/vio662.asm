.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -60 # instrumentation
SETBE AL 
TEST RBX, 1209337003 
AND RSI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], DIL 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RSI], BX 
XOR SI, DI 
CMOVLE DX, DX 
SETB SIL 
BT EDI, ESI 
BTC RDX, 57 
AND DIL, 97 # instrumentation
CMOVZ DX, DX 
SETZ BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX DI, DL 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
BSWAP RBX 
XADD SIL, DL 
SETNBE CL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
AND DIL, 111 # instrumentation
CMOVNP EBX, ECX 
XOR RAX, RCX 
CMOVZ BX, AX 
CMOVNB RAX, RAX 
SETO BL 
AND RDI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTR word ptr [R14 + RDI], AX 
AND SIL, 10 # instrumentation
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -50 # instrumentation
SETNP SIL 
MOVZX CX, DL 
MOVSX AX, DL 
XADD ECX, EDX 
NOT DL 
CMOVZ EDX, EDI 
OR RAX, 1616945091 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
