.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
OR RAX, -20 
BTC RBX, -26 
OR AX, -492 
CMOVO RDX, RDX 
MOV BL, -44 
MOV EAX, 1546320810 
AND RBX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
OR SI, 109 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RAX] 
AND SIL, -126 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 60 # instrumentation
CMOVL RSI, RCX 
MOV BX, 19159 
XCHG BL, AL 
BT DI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
OR DX, 0b1000000000000000 # instrumentation
BSR SI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
CMOVNP RSI, RDX 
OR BL, -77 
CMOVS SI, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
OR EDX, EAX 
CMOVNZ ESI, EAX 
OR EAX, -532369322 
CMPXCHG SIL, BL # instrumentation
LAHF  
MOVZX EAX, AL 
CMOVP ESI, ESI 
BT RBX, 36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
