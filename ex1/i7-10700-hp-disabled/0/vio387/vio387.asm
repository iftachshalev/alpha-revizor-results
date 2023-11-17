.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RBX, AL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], BX 
BTS BX, SI 
OR RAX, 181452441 
XCHG RDI, RAX 
MOVSX ECX, DX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
SETNL CL 
XOR RAX, -713845780 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RCX] 
XCHG EDX, EAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTC dword ptr [R14 + RDI], ECX 
BTC EDI, EAX 
AND DIL, -121 # instrumentation
MOVZX EDI, SI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR RAX, 1936708120 
CMOVNB RCX, RSI 
CMOVNB EAX, EDI 
CLD  
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -102 # instrumentation
MOV RCX, -3650615513597070421 
SETB DL 
SETP AL 
TEST DIL, -63 
TEST AL, 64 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], SIL 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
CMOVBE BX, DX 
JMP .bb_main.4 
.bb_main.4:
XCHG EDI, EAX 
BTC RAX, RDX 
AND SIL, 0 # instrumentation
SETP BL 
TEST ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
