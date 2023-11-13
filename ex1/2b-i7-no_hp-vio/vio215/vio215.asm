.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -86 # instrumentation
CWDE  
SETL SIL 
AND AL, 98 
CMOVB SI, BX 
OR SIL, SIL 
CMOVLE BX, SI 
TEST RAX, 1971917773 
MOVZX EAX, BL 
MOV CL, AL 
OR AX, 15566 
TEST DIL, 55 
CWDE  
AND AL, 80 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], DI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 119 # instrumentation
CMOVO BX, DI 
XCHG RAX, RSI 
SETBE AL 
CMOVLE BX, BX 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 3 
OR SI, CX 
BTC SI, -98 
MOVSX EAX, BL 
CMOVNB EDX, EDI 
AND AX, -4328 
SETNO AL 
SETBE CL 
XOR RAX, -114 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
AND EAX, -103 
AND AL, DL 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
