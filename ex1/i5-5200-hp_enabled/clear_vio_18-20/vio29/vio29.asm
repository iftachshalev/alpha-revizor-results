.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 61 # instrumentation
SETBE AL 
MOVSX RDI, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], BX 
CMOVL RAX, RSI 
XOR DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], ESI 
SETNO BL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
CMOVNO RAX, RAX 
MOVSX RSI, SIL 
MOV ECX, EAX 
XOR DIL, 105 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RSI 
AND SIL, -61 # instrumentation
CMOVNBE DI, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], -98 
BTC RCX, 49 
OR AX, -31132 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
OR EDI, EBX 
CMOVNZ AX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ECX 
AND BL, DL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 27 # instrumentation
CMOVNL SI, AX 
AND RSI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
CMOVNP SI, DI 
MOV RDX, RCX 
SETZ AL 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RSI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
