

--���������������������������ԣ����Ҹ��������Եĳ�ʼֵ��
LEventNode = {}

--������ض���Ԫ�������������˵������䣬�������һ���ࡣ
LEventNode.__index = LEventNode

--�����壬������������������ģ�ϰ���Ը�ΪNew()
function LEventNode:New(event) 
    local self = {};    --��ʼ��self�����û����䣬��ô���������Ķ���ı䣬�������󶼻�ı�
    setmetatable(self, LEventNode);  --��self��Ԫ���趨ΪClass
	
	self.value= event
	self.next = nil

    return self;    --��������
end