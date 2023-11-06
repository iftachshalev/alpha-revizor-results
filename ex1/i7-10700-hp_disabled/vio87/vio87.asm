.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -76 # instrumentation
MOVZX AX, DL 
CMOVNS RCX, RBX 
CMOVB RDX, RAX 
BTC RSI, RSI 
AND RCX, -78 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
BSWAP RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
AND RAX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RAX], BX 
AND DIL, 6 # instrumentation
SETNL DL 
CMOVNBE RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RSI] 
SETB DL 
XOR RSI, RBX 
SETNL SIL 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
SAHF  
XADD BX, AX 
CMOVNL SI, DX 
MOV SI, CX 
SETNO AL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG EDI, ECX 
XADD AL, AL 
TEST RDX, -1762376175 
SETP BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
SETNLE AL 
AND DX, 51 
CMPXCHG DIL, DIL # instrumentation
LAHF  
XOR EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
