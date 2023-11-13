.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -42 # instrumentation
SETZ DIL 
NOP  
OR AX, -4765 
MOV DIL, -44 
CLC  
CMPXCHG DL, CL 
CMOVNLE RDX, RAX 
SETL AL 
CMOVS ECX, EDX 
XADD DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 100 
CMOVNO DI, DX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RBX] 
MOVZX EDI, DI 
XOR SI, -5 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], AX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RAX, 4048116152304813267 
TEST AX, 14544 
CMOVS ECX, EAX 
CMOVNP RDX, RAX 
NOT RDI 
TEST RAX, RCX 
XOR AX, -15221 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
XOR ESI, -118 
AND RDI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDI] 
MOV CL, AL 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -70 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], -590 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
