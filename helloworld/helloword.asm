;#Mode=DOS
;MASMPlus ���ļ�����ģ�� - �� DOS ����
;--------------------------------------------------------------------
;�����ļ���Ҫָ������ģʽ,����Ĭ����EXE��ʽ,��ϵͳ�����п�������Ĭ����DOS����Windows.
;����ģʽ�Դ���DOS/COM/CON/EXE/DLL/LIB�⼸��,����б�Ҫ,���Ը���ide.ini����µı���ģʽ
;��Ȼ,���õ��Ǵ���Ϊһ������.�����㼰���ڹ���,ʹ�÷���:��Ctrl��ѡ->��������.�����ж���ļ�

.model small
.stack 200h
.data
	szMsg db 'Hello World!',13,10,'$'
.data?
	pBuffer db 15 dup(?);15��ʾ��󳤶���15
.CODE
START:
	mov ax,@data
	mov ds,ax
	lea dx,szMsg
	mov ah,9  ;��ӡ�ַ����õ���mov ah,09h
	int 21h
	
	mov ah,01h ;���뵥���ַ�
	int 21h
	mov ah,02h  ;��ӡ�����ַ��õ���mov ah,02h
	mov dl,al ;����������ݴ� al���ݸ�dl
	int 21h
	lea dx,pBuffer
	mov ah,0ah
	int 21h
	mov ah,02h
	int 21h
	;��ͣ,������ر�
	mov ah,1
	int 21h
	mov ah,4ch     ;����,�����޸�al���÷�����
	int 21h
END START