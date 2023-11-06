.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG SIL, AL 
AND RAX, -971432216 
MOVZX ESI, DIL 
BTS ESI, EDI 
AND DIL, -90 # instrumentation
MOVZX CX, AL 
CMOVS RAX, RAX 
TEST BX, SI 
CMOVLE DI, DI 
XOR CL, -86 
CMOVL RBX, RSI 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], 0 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 17 # instrumentation
MOV RAX, RAX 
SETLE DL 
OR DL, -88 
CMPXCHG DL, AL 
MOVSX CX, BL 
JNO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
CMOVNS SI, BX 
BT CX, SI 
BTR DI, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
XOR AX, -12673 
CDQ  
XOR BL, DL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RDX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 21 # instrumentation
XCHG RBX, RAX 
CMOVNO RBX, RBX 
CMOVL AX, DX 
NOT DX 
CMPXCHG RSI, RSI 
NOT DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
