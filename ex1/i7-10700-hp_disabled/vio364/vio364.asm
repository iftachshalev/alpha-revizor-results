.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EDI, -75 
AND SIL, 91 # instrumentation
CMOVP ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDX] 
AND RAX, 799595760 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
AND SIL, -91 # instrumentation
CMOVNS EDI, EAX 
BTS CX, 62 
MOVSX RDX, BL 
XOR RDI, 57 
XADD ESI, EBX 
MOVSX ECX, AL 
XCHG EDX, EAX 
CMOVBE RCX, RAX 
AND RAX, -1533503719 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG DI, AX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RCX 
OR CL, BL 
SETNLE AL 
MOVZX ECX, DIL 
SETS DL 
SETNBE AL 
CMOVNP BX, CX 
XADD DL, AL 
SETP CL 
XOR DIL, 8 
TEST DI, 29046 
CBW  
BTS RSI, -5 
CMOVZ AX, DI 
BTC CX, -124 
OR BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
