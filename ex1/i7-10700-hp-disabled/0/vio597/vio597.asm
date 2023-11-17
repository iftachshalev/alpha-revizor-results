.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 37 # instrumentation
MOVSX CX, AL 
SETS CL 
CMOVNO EBX, EAX 
CMOVNO ESI, ECX 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RBX], 6 
NOT RCX 
SETNZ BL 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
TEST DI, DX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
XOR SIL, 114 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
XOR BL, CL 
CMOVNLE RAX, RDI 
NOT RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
SETZ DIL 
XOR DL, -117 
XOR DIL, -113 
JMP .bb_main.2 
.bb_main.2:
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
BSWAP RDI 
XOR DIL, -23 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
AND SIL, 77 # instrumentation
CMOVNB AX, AX 
AND EAX, -1863269176 
CMOVB RBX, RDX 
MOVZX EDX, BL 
OR RAX, -640161166 
BSWAP RAX 
MOVSX EDX, DIL 
CMOVLE EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
