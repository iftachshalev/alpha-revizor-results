.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR ECX, -14 
AND RDI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RDI], SI 
BTS BX, CX 
OR BL, 45 
SETNBE DL 
TEST AL, 54 
OR ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], AL 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD CX, SI 
AND DI, -39 
XOR AX, -8812 
XOR SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], 5 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RDX], RCX 
AND SIL, -100 # instrumentation
CMOVNS ESI, EDX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 38 # instrumentation
SETLE BL 
BTC EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], SI 
SETNP AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
OR DI, AX 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BTS RDI, -18 
TEST RBX, RCX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
TEST CL, -3 
SETNS BL 
OR AX, AX 
MOV AL, -2 
OR RDX, RSI 
XOR CL, CL 
MOV EAX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
