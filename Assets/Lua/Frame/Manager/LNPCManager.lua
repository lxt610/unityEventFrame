


local transform;
local gameObject;

LNPCManager =  LManagerBase:New();



local this = LNPCManager;

--������ض���Ԫ�������������˵������䣬�������һ���ࡣ
LNPCManager.__index = LNPCManager




function LNPCManager:New() 
    local self = {};    --��ʼ��self�����û����䣬��ô���������Ķ���ı䣬�������󶼻�ı�
    setmetatable(self, LNPCManager);  --��self��Ԫ���趨ΪClass

    return self;    --��������
end

-- �õ�ʵ��--
function LNPCManager.GetInstance()
	
	return this ;
	
end




function LNPCManager:SendMsg( msg)
	-- body


    -- print("LNPCManager:SendMsg ==="..msg.msgId);
	if  msg:GetManager()  == LManagerID.LNPCManager then


      self:ProcessEvent(msg);


    else

        --  print (" LNPCManager:SendMsg =="..msg.msgId)
         LMsgCenter.SendToMsg(msg);
    
	end
end




--�����¼�--
function LNPCManager.Awake(obj)
	--gameObject = obj.gameObject;
	--transform = obj.transform;

    -- this.npcCount = 0 ;
	--this.InitPanel();
	--warn("Awake lua--->>"..gameObject.name);
end

--��ʼ�����--
function LNPCManager.Init()
	
	  
	--this.btnOpen = transform:FindChild("Open").gameObject;
	--this.gridParent = transform:FindChild('ScrollView/Grid');
end

-- ����--
function LNPCManager.OnDestroy()
	warn("OnDestroy---->>>");
end