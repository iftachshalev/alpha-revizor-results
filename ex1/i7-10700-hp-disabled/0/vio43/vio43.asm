.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RBX, RDX 
CMOVNO RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RCX], AX 
AND DIL, 108 # instrumentation
SETO AL 
LEA RAX, qword ptr [RBX + RBX] 
OR RAX, RCX 
XOR AL, -107 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR SIL, 21 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
CMOVNB RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 1393006091 
CMOVZ DI, DX 
CMOVNS RSI, RAX 
XCHG EBX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
MOVZX EDI, DIL 
CLC  
XCHG BX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RSI] 
AND EAX, 1513335949 
XCHG SI, SI 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BSWAP ESI 
TEST ECX, -539564443 
CMOVNL ECX, EBX 
SETS AL 
OR EAX, 2074970527 
SETNB CL 
NOT CL 
CMOVBE RDI, RSI 
XOR RDX, RCX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
