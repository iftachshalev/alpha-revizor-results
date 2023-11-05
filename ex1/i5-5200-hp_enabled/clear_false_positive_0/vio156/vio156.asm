.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -17 # instrumentation
SETNB DL 
CMOVNBE EDX, EDX 
LEA BX, qword ptr [RDI + RSI + 58727] 
CMOVL DI, AX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND SIL, -35 # instrumentation
CMOVNS DI, DI 
CMOVNBE ECX, EDI 
SETL DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTR SI, -69 
MOV SIL, BL 
MOVSX AX, AL 
MOV DI, 16627 
OR AX, -19721 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], 116 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
CMOVP EDX, EDX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 49 
BTS EBX, EBX 
AND SIL, 44 # instrumentation
SETNS CL 
CMOVNP DI, DX 
TEST RDX, -433561853 
SETP AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -109 # instrumentation
SETS DL 
MOV DL, SIL 
MOV RBX, RSI 
CMOVP RSI, RDI 
XCHG RBX, RSI 
OR RCX, 6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
