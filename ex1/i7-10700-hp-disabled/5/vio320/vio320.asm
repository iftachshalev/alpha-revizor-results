.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD RDX, RBX 
LEA RCX, qword ptr [RSI] 
CMOVO EDX, EBX 
CBW  
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -94 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EAX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDX] 
AND RSI, 13 
BTC CX, SI 
SETNBE DL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
XCHG RCX, RAX 
CMOVNP RBX, RAX 
MOVZX CX, BL 
CMOVLE RDI, RSI 
XOR DI, 120 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDX], 2 
TEST RDI, RDX 
BTR RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], ECX 
CMOVP EAX, EDI 
JMP .bb_main.2 
.bb_main.2:
BTR ECX, ECX 
AND AL, 48 
CMOVNBE ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], AL 
BTC SI, -39 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 60 
LEA RSI, qword ptr [RSI] 
SETO BL 
CMOVNS RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
