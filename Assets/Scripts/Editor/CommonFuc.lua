

-- һ���������
-- ���������������������������ԣ����Ҹ��������Եĳ�ʼֵ��
LChoosePlayer = LUIBase:New()

local this = LChoosePlayer;

-- ������ض���Ԫ�������������˵������䣬�������һ���ࡣ
LChoosePlayer.__index = LChoosePlayer;




-- �����壬������������������ģ�ϰ���Ը�ΪNew()
function LChoosePlayer:New()
    local self = { };
    -- ��ʼ��self�����û����䣬��ô���������Ķ���ı䣬�������󶼻�ı�
    setmetatable(self, LChoosePlayer);
    -- ��self��Ԫ���趨ΪClass

    self.msgIds = { };

    return self;
    -- ��������
end



------***********************----


-- �����¼�

-- ��ʼ ��Ϣ LDataEvent.MaxValue
LWordInfoEvent = {

    "GetWorldInfo",
    "MaxValue",
    GetWordInfo = 0,
    -- ��������

    MaxValue = 0,


}

ResetTableKeyValue(LDataEvent.MaxValue + 1, LWordInfoEvent);



------***********************----

-- ע����Ϣ

function LuaClass.Regist()

    this.msgIds = { };

    this:RegistSelf(this, this.msgIds);

end 


this.Regist();

-----***************------
-- ����һ����Դ

-- UIScene �������� UIScene
-- ����  ChoosePlayer
-- ��Դ����   LChoosePlayer
-- �ص�����  this.InitialUIPrefable

this:GetRes(LAssetEvent.HunkRes, "UIScene", "ChoosePlayer", "LChoosePlayer", true, this.InitialUIPrefable);


-- ��������Դ

mutiRes = {
    "LChoosePlayer1",
    "LChoosePlaye2",
    "LChoosePlaye3",
}

-- function  GetObject(tmpTable,name)

--       for i=1 , table.getn(tmpTable) do

--           if (tmpTable[i] == name)   then

--            return   i ;
--            end


--        end

--        return  0 ;


-- end 

function LChoosePlayer.InitialUIPrefable(scence, bundle, reses, objes)

    -- LChoosePlayer1==     objes[1] ;

end 
  

this:GetRes(LAssetEvent.HunkRes,"UIScene","ChoosePlayer",mutiRes,true,this.InitialUIPrefable);



-----***************------
 --- ������bundle ��������Դ

-- bundle ��Ӧ������
local bundle = {
    "Scence100BackGround","Scence200BackGround","BagUI"
};

-- ���� �������bundle ������Ӧ���� ��ֵ ��resNames
-- ��ʾÿ��bundle ��Դ����ĸ���   ��Ӧ����
local numbers = {

    2,2,1
};

---  ��������������һһ��Ӧ��ϵ
-- һ��һά�����ʾÿ��bundle ������Դ������


------- -----------------------------������Ҫ�Ӻ�׺ .prefab   .png----------BagUI0���������ü�----------
local resName = { "Scence101.prefab","Scence102.prefab",
  "Scence201.prefab",  "Scence202.prefab",
   "BagUI0"
    };
     

---- ture ��ʾ ���� false ��ʾ���
local singles = {

    true,true,
    true,true,
    false
};


--- ��һ���� ��ʾ  �ص�����Ҫ���յ���Ϣ 
    
this:GetMutiBundlAndRes(LManagerID.LUIManager + 2, "UIScene", bundle, resName, singles, numbers);


------���յ��ص���Ϣ
-- ��һ��������ʾ �ĸ�bundle  
-- �ڶ�������  ��ʾ �ĸ���Դ����   
      local  tmpObj= msg:GetBundleRes("Scence200BackGround", "Scence201.prefab");


     --������ط������ͷ��� 
----�����ˡ���Ҫ�ͷ�
      --tmpObj:Dispose();


     local  tmpGame  GameObject.Instantiate(tmpObj[0]);

       --��������

       Canvas = GameObject.Find("UIScaler");

       tmpGame.transform:SetParent(Canvas.transform);


-----***************------
-- �ͷ���Դ
-- UIScene �������� UIScene
-- ����  ChoosePlayer

this:ReleaseRes(LAssetEvent.ReleaseBundleAndObjects, "UIScene", "ChoosePlayer", nil);


-----***************------


-- ����table ����

for i = 1, table.getn(tmpTable) do

    print(tmpTable[i])

end 

  -- ����table �ֵ�����
	 for  k ,v  in pairs(self.eventTree) do
	  
	 	 
	 end


-- �������

table.insert(table, "value")
-- ɾ������
-- ���һ��Ԫ��
table.remove(table)



----***************----


--- �õ�����

--  ����msgid   LUIEventChoosePlayerMsg.GetWordInfo

--  wordid= tmpMutiWord  ����Ϊһ������    
local tmpMutiWord = { "UserName", "CreateCharacter2", "CreateCharacter1", "EnterUsername" }
local getWord = LWorlInfoMsg:New();
getWord:ChangeSendMsg(LUIEventChoosePlayerMsg.GetWordInfo, tmpMutiWord);
this:SendMsg(getWord);

-- �õ������ʹ�÷�ʽ
this.data = msg.word;

local creatRoleTile = this:GetText(transform.name, "CreatRoleTitle");
creatRoleTile.text = this.data["UserName"];
       
-----*************------


--- UI ��һЩ�¼�  ��UIBase �� �鿴
--- transform.name panel ����

-- �ؼ����� CreatRole   UserInput  Man  defaultInput

-- ���غ���   this.CreatPlayerButton    this.UserInput    this.SelectMan
this:AddButtonLisenter(transform.name, "CreatRole", this.CreatPlayerButton);

this:AddInputFiledLisenter(transform.name, "UserInput", this.UserInput);

this:AddToggleLisenter(transform.name, "Man", this.SelectMan);

this:GetText(transform.name, "defaultInput");


 -----*************------
--lua  ��C# ����  ��Ϣ
local  manMsg=   MsgMutiString.New(PoleGenEvent.PersonChangePersonSex:ToInt(),"Woman");
this:SendMsg(manMsg)


-----*************------

-- ʵ��������
gameObject = GameObject.Instantiate(obj);

-- ���һ��component
gameObject:AddComponent(typeof(LuaUIPanel));

Canvas = GameObject.FindGameObjectWithTag("MainCanvas");

-----*************------
-- transform ����
transform = GameObject.Instantiate(obj).transform;
transform:SetParent(Canvas.transform);


-----*************- ma   net-----
-- ������������
local create = FishLNet_pb.request1003();
create.handlerId = tonumber(handlerId);
create.token = token;
create.flag = tostring(flag);
local msg = create:SerializeToString();
testMsg = LMsgBase:New(LTCPEvent.SendMsg);
testMsg.netId = 1003;
testMsg.data = msg;
this:SendMsg(testMsg);


-- ���մ���������Ϣ����
local tmpMsg = FishLNet_pb.response1003();
tmpMsg:ParseFromString(msg.data);
local roleEquipCount = table.getn(tmpMsg.roleEquip)
local roleEquip = tmpMsg.roleEquip

-- ����table
for i, v in ipairs(roleEquip) do
    error(v.id)
    error(v.equipId)
end


---------------UI
-- ����topbarλ��ͬ�����
transform:SetAsLastSibling();

-- ����topbarλ��ͬ����ǰ
transform:SetAsFirstSibling();
 
-- ����topbarλ��ͬ��Index
transform:SetSiblingIndex(index);
 

-- ��ͼƬ��ֵ
itemfishUI:FindChild("item_star/starimgone"):GetComponent("Image").sprite = this.SaveSprite.GloboBackground["StarIcon"]

LUIManager.GetInstance("AquariumUI").GetText("tx_AquarumName")
LUIManager.GetInstance("AquariumUI").GetImage("fishDetailBg")

-- ����������
gameObject:GetComponent("RectTransform").sizeDelta = Vector2.New(270, heightPanle);

-- ����Image ����
itemBag:FindChild("bagDialogItemIcon/bagDialogItemIconLock").gameObject:GetComponent("Image").raycastTarget = false;

-- �������� �������  TweenPosition 
this.ScriptTools.LeftBagPosition1 = LUIManager.GetInstance("AquariumUI").AddComponent("bagDialog", typeof(TweenPosition));
-- �������
this.ScriptTools.LeftBagPosition1.FowardCurve = this.ScriptTools.LeftBagPosition1:GetCurve("line");
this.ScriptTools.LeftBagPosition1:PlayFoward(0);
-- �˳�����
this.ScriptTools.LeftBagPosition1.FowardCurve = this.ScriptTools.LeftBagPosition1:GetCurve("line");
this.ScriptTools.LeftBagPosition1:PlayReverse(0);

-- �����Ķ���Ч��
this.ScriptTools.SaleFishDialog = LUIManager.GetInstance("AquariumUI").AddComponent("selAllFishDialogMask", typeof(TweenScale));
this.ScriptTools.SaleFishDialog.FowardCurve = this.ScriptTools.SaleFishDialog:GetCurve("oneBigOne");
LUIManager.GetInstance("AquariumUI").GetTransform("selAllFishDialogMask").gameObject:SetActive(false);
-- ������
this.ScriptTools.SaleFishDialog.gameObject:SetActive(true);
this.ScriptTools.SaleFishDialog:PlayFoward(0);
-- �رտ�
this.ScriptTools.SaleFishDialog:PlayReverse(0);
Invoke(this.WaitCloseFishDialog, 0.3);
function AquariumUI.WaitCloseFishDialog()
    this.ScriptTools.SaleFishDialog.gameObject:SetActive(false);
end

--����
local capacity = 0;
LPlayerProperty.Capacity = {
    get = function()
		return capacity;
	end,
	set = function(value)
        
        capacity = value;

		if this.isInit then
			this.UpdateValue("capacity", value);
		end
		
	end

--����ת��Ϊ����
local tab = os.date("*t", this.FishInfo.FishList[index].GotTime/1000);     
error(tab.year.."   "..tab.month.."  "..tab.day)

--ȡ��
minute = math.modf(second/60);

-----*************- ma  end -----

-----*************- zhang  UI-----
-- �ı�������ɫ
ChangeColor.ColorString(this.PhysicalValue.get(), "#F5D78CFF")
-- ������ɫ����
this.Variable.MoneyTextColor = moneyText.gameObject:AddComponent(typeof(Gradient));
this.Variable.MoneyTextColor:TopCor(241, 237, 212, 222);
this.Variable.MoneyTextColor:BottomCor(243, 204, 117, 255);

-- ����TopBar��������ǰ��ʾ
local tempMsg = LMsgBase:New()
tempMsg = LMsgBase:New(LUIEventChooseLvlMsg.SetTopBarLayer);
this:SendMsg(tempMsg);
-- ����TopBar�����������ʾ
tempMsg = LMsgBase:New(LUIEventChooseLvlMsg.UnSetTopBarLayer);
this:SendMsg(tempMsg);
-- ����TopBar������λ��ĳ��index
tempMsg = LMsgBase:New(LUIEventChooseLvlMsg.SetTopBarLayerIndex);
tempMsg.TopBarLayer= index;
this:SendMsg(tempMsg);
-- ��������֡����
effect_Bet = this:AddComponent(lGUIMainScene.name, "BetEffect1", typeof(SerialFramesManager));
effect_Bet.playSupporter = SerialFramesManager.ForType.Image;
effect_Bet:SetPicturesCount(1);
effect_Bet.pictures[0] = Streamer_2;
effect_Bet.playSpeed = 30;
effect_Bet.interval = 1.2;
effect_Bet.horizontalCount = 6;
effect_Bet.verticalCount = 5;
-----*************- zhang   End-----



-----*************- zhao  coroutine-----

function TestCoroutine(str)
	print("from TestCoroutine  str == " .. str);
end


Invoke(this.StopLoading,0.5);
Invoke(class.func,time)         --��ʱ��  ����һ������
co = coroutine.create(TestCoroutine);		--����Э��

coroutine.resume(co, "haha");	--����Э�̣�������


coroutine.yield(co);		--����Э��


-----*************- zhao   End-----



-----*************- zheng   UI-----
    --��ʾ�����÷�
    local tempMsg = LMsgBase:New(); 
    tempMsg.msgId = LUIEventRankingList.ShowCommonTips;
    tempMsg.tipsStr = "��Ϸ�Ҳ��㣬�뼰ʱ����";
    tempMsg.autoClose = 3; --Ĭ��2����Զ��ر�   0�����²��Զ��ر�
    tempMsg.callbackID = LUIEventRankingList.ShowComonTips; --Ҫ�ص�����Ϣ��  ����Ҫ����д
    this:SendMsg(tempMsg);

-----*************- zheng   end-----


