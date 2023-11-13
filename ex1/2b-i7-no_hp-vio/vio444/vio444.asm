.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ECX, EBX 
MOV SIL, -78 
CMOVNP DI, DX 
SETNB AL 
SETS CL 
SAHF  
BTS SI, 115 
XCHG RSI, RSI 
TEST BX, 24948 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -10832 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
MOV DX, 1877 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 7 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
CLC  
SETS DIL 
SETO DL 
SETNBE CL 
BT BX, 27 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], BL 
BTR AX, CX 
BT SI, -57 
AND SIL, -28 # instrumentation
SETB DL 
SETNB AL 
SETP BL 
CMOVNS CX, DX 
MOVZX EDI, BL 
OR RAX, 317900498 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
