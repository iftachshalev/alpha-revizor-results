.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RSI] 
MOV DL, CL 
AND RCX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RCX], DI 
AND SIL, -94 # instrumentation
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
AND RCX, 126 
LEA BX, qword ptr [RSI + RBX + 42749] 
XOR DL, CL 
CMOVNBE DX, DI 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -117 # instrumentation
SETB BL 
SETNZ BL 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
SETB AL 
CMOVNB RAX, RDI 
CMOVB RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
TEST RAX, -1634026185 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CLC  
CMOVNB RAX, RBX 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND AL, 74 
XCHG BX, SI 
MOVZX BX, AL 
CMPXCHG RBX, RAX 
MOVZX EDX, DIL 
CMPXCHG EDI, ECX 
SETNZ SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EDI 
BTC RDX, -103 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
