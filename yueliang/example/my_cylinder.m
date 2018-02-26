% �������������һ��Բ����

clear all;

false = 0;
true = 1;

% Բ����ߴ�
r = 0.5; % �뾶
h = 1.0; % �߶�

% ��ʱ�ļ�·��
tmpPrjFile = 'E:\ansoft\temp\my_cylinder.hfss';
% tmpDataFile = 'E:\ansoft\temp\tmpData.m';
tmpScriptFile = 'E:\ansoft\temp\my_cylinder.vbs';

% HFSSִ��·��
hfssExePath = 'D:\"Program Files"\Ansoft\HFSS11\hfss.exe';

    % ����һ���µ�HFSS��ʱ�ű��ļ�
    fid = fopen(tmpScriptFile, 'wt'); % 'wt'��ʾ���ı�ģʽ���ļ�����д������ԭ������ 

	% ����һ���µĹ��̲�����һ���µ����
	hfssNewProject(fid);
	hfssInsertDesign(fid, 'cylinder_test');

	% ����Բ����
	hfssCylinder(fid, 'Cylinder', 'Z', [0, 0, 0], r, h, 'mm');

	% ���湤�̵���ʱ�ļ���
	hfssSaveProject(fid, tmpPrjFile, true);

	% �ر�HFSS�ű��ļ�
	fclose(fid);