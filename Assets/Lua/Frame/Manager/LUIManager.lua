

print("LoadUIManager")

LUIManager =  LManagerBase:New();






--������ض���Ԫ�������������˵������䣬�������һ���ࡣ
LUIManager.__index = LUIManager

local this = LUIManager;
LUIManager.Objects = {}
local currentPanel = "";

function LUIManager:New() 
    local self = {};    --��ʼ��self�����û����䣬��ô���������Ķ���ı䣬�������󶼻�ı�
    setmetatable(self, LUIManager);  --��self��Ԫ���趨ΪClass

    return self;    --��������
end



-- �õ�ʵ��--
function LUIManager.GetInstance(name)
	
    currentPanel = name;
	return this ;
	
end


function   LUIManager.ProcessBackMsg()


      this:FrameUpdate();
end 


function LUIManager:ProcessEvent( msg)



      self:ProcessEvent2(msg);

end 




function LUIManager:SendMsg( msg,backMsgId)
	-- body
	

     self:ProcessSendBackMsg(backMsgId);

	if  msg:GetManager()  == LManagerID.LUIManager then

        self:ProcessEvent(msg);

    else

     LMsgCenter.SendToMsg(msg);
    --LMsgCenter.AnasysMsg(msg)
	end
end



--�����¼�--
function LUIManager.Awake(obj)
	--gameObject = obj.gameObject;
	--transform = obj.transform;

    -- this.npcCount = 0 ;
	--this.InitPanel();
	--warn("Awake lua--->>"..gameObject.name);
end

--��ʼ�����--
function LUIManager.Init()
	
	  
	--this.btnOpen = transform:FindChild("Open").gameObject;
	--this.gridParent = transform:FindChild('ScrollView/Grid');
end

-- ����--
function LUIManager.OnDestroy()
	warn("OnDestroy---->>>");
end




function  LUIManager.RegistGameObject(tmpObj, panelName)
    if this.Objects[panelName] == nil then
        this.Objects[panelName] = {};
    end
          
   this.Objects[panelName][tmpObj.name] = tmpObj ;

     

end

 function  LUIManager.UnRegistGameObject(tmpObj, panelName)

    
   this.Objects[panelName][tmpObj.name] = nil ;



end

function  LUIManager.GetGameObject(panelName,objName)

    
     return  this.Objects[panelName][objName] ;

end



this:InitialTimer(this.ProcessBackMsg);




