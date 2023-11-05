.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS BX, 81 
AND DIL, 26 # instrumentation
CMOVNS RSI, RAX 
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
TEST DX, 27931 
MOVZX ECX, CL 
OR AL, DIL 
CMPXCHG DL, DIL 
CMOVBE EBX, EBX 
SETNBE BL 
BTC CX, DX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR ECX, 93 
BTS EAX, -86 
AND SIL, -38 # instrumentation
CMOVNO RAX, RDX 
SETS DL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RBX 
OR EAX, -136220014 
CMOVO BX, AX 
SETNBE DL 
CMOVNBE BX, CX 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 90 
CMOVNP EDI, EDX 
CMOVS SI, SI 
CMOVB EDX, EDX 
MOV CL, DIL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
XOR RAX, -1512668816 
XOR EAX, 112963255 
AND ESI, -96 
CWD  
BT RBX, RAX 
BTS RSI, -36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
