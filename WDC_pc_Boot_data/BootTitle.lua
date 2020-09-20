--[[
MIT License
Copyright (c) 2020 Droyti
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--]]
-- params : ...
-- function num : 0 , upvalues : _ENV
require("RichPresence.lua")
require("SaveLoad.lua")
if ResourceExists("DebugLoader.lua") then
  require("DebugLoader.lua")
  local OnLoadDebugMenu = function()
  -- function num : 0_0 , upvalues : _ENV
  SceneSetTimeScale("ui_boot", 0)
  DebugMenu_AddButton(2, "Boot", "BootTitle")
end

  Callback_OnLoadDebugMenu:Add(OnLoadDebugMenu)
end
do
  local kScript = "BootTitle"
  local kScene = "ui_boot"
  local kFirstBootLogged = "Boot - First Boot Logged"
  local kUpdateReasonAgent = "ui_boot_updatingReason"
  local mRenderScale, mTitleController = nil, nil
  local OnSetInputMode = function(bUseCursor)
  -- function num : 0_1 , upvalues : _ENV
  AgentSetProperty("ui_boot_start", kTextNode, "")
  WaitForCallbacks()
  AgentSetProperty("ui_boot_start", kTextNode, "text_pressStart")
  CursorHide(not bUseCursor)
end

  local CheckNeedReset = function()
  -- function num : 0_2 , upvalues : _ENV, mRenderScale
  if not IsToolBuild() then
    local bReset = GetNeedResetEngine()
    if not bReset and PatchManager_NeedToReset then
      bReset = PatchManager_NeedToReset()
    end
    if not bReset and LocalContentManager_NeedToReset then
      bReset = LocalContentManager_NeedToReset()
    end
    if bReset then
      RenderSetScale(mRenderScale)
      ResetEngine()
    end
  end
end

  local Restart = function()
  -- function num : 0_3 , upvalues : _ENV, kScript
  SaveLoad_ShowSaveOverlay(false)
  ChorePlayAndWait("ui_boot_updateHide")
  ChorePlayAndWait("ui_boot_startShow")
  InputMapperActivate(kScript)
end

  if IsToolBuild() then
    DLCStatus_Refresh = function()
  -- function num : 0_4 , upvalues : _ENV
  Sleep(2)
end

  end
  BootTitle = function()
  -- function num : 0_5 , upvalues : _ENV, mRenderScale, kFirstBootLogged, mTitleController, kScript, OnSetInputMode
  local prefs = GetPreferences()
  do
    if IsPlatformPC() or IsPlatformMac() then
      if not prefs.Windowed or not prefs["Window Size"] then
        local res = prefs["Fullscreen Size"]
      end
      if res.x == 800 and res.y == 450 then
        res.y = 600
        PropertySet(prefs, "Fullscreen Size", res)
        PropertySet(prefs, "Window Size", res)
      end
    end
    mRenderScale = RenderGetScale()
    if mRenderScale ~= 1 then
      RenderSetScale(1)
    end
    CursorHide(true)
    RichPresence_Set("richPresence_mainMenu", false)
    local userFiles = ResourceLocationGetSymbols("<User>", "*.bundle")
    if userFiles and #userFiles > 0 then
      for _,file in ipairs(userFiles) do
        LoadAsync(file)
      end
    end
    do
      userFiles = ResourceLocationGetSymbols("<User>", "*.estore")
      if userFiles and #userFiles > 0 then
        for _,file in ipairs(userFiles) do
          LoadAsync(file)
        end
      end
      do
        GameMode()
        local dimensions = nil
        if IsPlatformWin10() then
          dimensions = Vector(16, 9)
        else
          if (IsPlatformPC() or IsPlatformMac()) and (not prefs.Windowed or not prefs["Window Size"]) then
            dimensions = prefs["Fullscreen Size"]
            dimensions = RenderGetDeviceResolution()
            RenderSetAspectRatio(Clamp(dimensions.x / dimensions.y, 1.333333, 1.777778))
            WaitForCallbacks()
            local aspectRatio = RenderGetAspectRatio()
            if aspectRatio >= 1.6 then
              ChorePlay("ui_boot_widescreenBlocking")
            end
            if GetResetCode() == 2 then
              if IsPlatformTTG() and not IsToolBuild() then
                UserManager_LogIn()
                DLCStatus_Refresh()
                RenderSetScale(mRenderScale)
                SubProject_Switch("Menu", "Menu_Main.lua")
                do return  end
                if IsPlatformAndroid() or IsPlatformIOS() and not IsPlatformAppleTV() then
                  if not PropertyGet(prefs, kFirstBootLogged) and not IsEngineAndroidTV() then
                    ChorePlayAndWait("ui_boot_warningHeadphones")
                  end
                  SetBlockedAssetLogging(true, true)
                end
                ChorePlayAndWait("ui_boot_legal")
                ChorePlay("ui_boot_logoShow")
                mTitleController = ChorePlay("ui_boot_titleShow")
                InputMapperActivate(kScript)
                ControllerWait(mTitleController)
                Callback_OnSetInputMode:Add(OnSetInputMode)
                OnSetInputMode(Input_UseCursor())
              end
            end
          end
        end
      end
    end
  end
end

  UserManager_AutomaticallyLogIn = function()
  -- function num : 0_6 , upvalues : _ENV
  if not IsEnginePC() then
    return IsEngineMac()
  end
end

  BootTitle_OnButtonStart = function()
  -- function num : 0_7 , upvalues : _ENV, mTitleController, kScript, Restart, kUpdateReasonAgent, kFirstBootLogged, OnSetInputMode, CheckNeedReset, mRenderScale
  if ControllerIsPlaying(mTitleController) then
    return 
  end
  local kDialog = "boot.dlog"
  RenderDelay(1)
  InputMapperDeactivate(kScript)
  ChorePlayAndWait("ui_boot_startHide")
  local success, err = UserManager_LogIn()
  if not success and not IsToolBuild() and IsPlatformTTG() and not err then
    Restart()
  end
  do return  end
  if not IsToolBuild() and IsPlatformAppleTV() then
    AgentSetProperty(kUpdateReasonAgent, kTextNode, "")
    local bHasEpisode1 = PlatformAppleTV_IsAssetPackAvailable("Episode1")
    if not bHasEpisode1 then
      PlatformAppleTV_DownloadAssetPack("Episode1")
      local acquireText = Dialog_GetText(kDialog, "text_acquiringEpisode")
      local progress = 0
      while progress >= 0 and progress < 1 do
        progress = PlatformAppleTV_GetAssetPackDownloadProgress("Episode1")
        AgentSetProperty(kUpdateReasonAgent, kText, (string.format)("%s %d%%", acquireText, progress * 100))
        WaitForNextFrame()
      end
      if progress >= 1 then
        bHasEpisode1 = true
      else
        DialogBox_Okay(Dialog_GetText(kDialog, "text_downloadFail"), Dialog_GetText(kDialog, "header_downloadFail"))
        Restart()
        return 
      end
    end
    do
      if bHasEpisode1 then
        PlatformAppleTV_LoadAssetPack("Episode1")
      end
      do
        if not PlatformAppleTV_IsSignedIntoCloud() then
          local result = DialogBox(Dialog_GetText(kDialog, "text_iCloud"), Dialog_GetText(kDialog, "header_iCloud"), "button_exit", "EngineQuit()", "button_ignore", false, kDialog)
          if not result then
            Restart()
            return 
          end
        end
        if not IsToolBuild() then
          require("SessionLog.lua")
        end
        local prefs = GetPreferences()
        if not PropertyGet(prefs, kFirstBootLogged) then
          PropertySet(prefs, kFirstBootLogged, true)
          SavePrefs()
          CreateEventLogEvent("First Boot", "true", true)
        end
        ConnectedContentManager_Update()
        if ResourceExists("patch_helper.lua") then
          require("patch_helper.lua")
        end
        Callback_OnSetInputMode:Remove(OnSetInputMode)
        CursorHide(true)
        AgentSetProperty(kUpdateReasonAgent, kTextNode, "text_localcontentupdate")
        LocalContentManager_Update()
        ChorePlayAndWait("ui_boot_titleHide")
        RenderDelay(1)
        CheckNeedReset()
        RenderSetScale(mRenderScale)
        SubProject_Switch("Menu", "Menu_Main.lua")
      end
    end
  end
end

  BootTitle_OnButtonSkip = function()
  -- function num : 0_8 , upvalues : _ENV, mTitleController
  if not ControllerIsPlaying(mTitleController) then
    return 
  end
  ControllerSetTimePercent(mTitleController, 1)
end

  BootTitle_OnButtonBack = function()
  -- function num : 0_9 , upvalues : _ENV, mRenderScale
  RenderSetScale(mRenderScale)
  EngineQuit()
end

  if not IsToolBuild() and IsPlatformAppleTV() then
    PlatformAppleTV_SetMenuSuspendAllowed(true)
  end
  SceneOpen(kScene, kScript)
end

