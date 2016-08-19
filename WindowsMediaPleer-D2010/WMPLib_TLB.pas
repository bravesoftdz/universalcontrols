unit WMPLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 17244 $
// File generated on 25.08.2011 15:41:53 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\system32\wmp.dll (1)
// LIBID: {6BF52A50-394A-11D3-B153-00C04F79FAA6}
// LCID: 0
// Helpfile: 
// HelpString: Windows Media Player
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Member 'label' of 'IWMPCdromBurn' changed to 'label_'
//   Hint: Symbol 'type' renamed to 'type_'
//   Hint: Symbol 'type' renamed to 'type_'
//   Hint: Parameter 'type' of IWMPCDDVDWizardExternal.WriteNamesEx changed to 'type_'
//   Hint: Member 'Record' of 'IUPnPService_IWMPUPnPAVTransportDual' changed to 'Record_'
//   Hint: Parameter 'Unit' of IUPnPService_IWMPUPnPAVTransportDual.Seek changed to 'Unit_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  WMPLibMajorVersion = 1;
  WMPLibMinorVersion = 0;

  LIBID_WMPLib: TGUID = '{6BF52A50-394A-11D3-B153-00C04F79FAA6}';

  IID_IWMPEvents: TGUID = '{19A6627B-DA9E-47C1-BB23-00B5E668236A}';
  IID_IWMPEvents2: TGUID = '{1E7601FA-47EA-4107-9EA9-9004ED9684FF}';
  IID_IWMPSyncDevice: TGUID = '{82A2986C-0293-4FD0-B279-B21B86C058BE}';
  IID_IWMPEvents3: TGUID = '{1F504270-A66B-4223-8E96-26A06C63D69F}';
  IID_IWMPCdromRip: TGUID = '{56E2294F-69ED-4629-A869-AEA72C0DCC2C}';
  IID_IWMPCdromBurn: TGUID = '{BD94DBEB-417F-4928-AA06-087D56ED9B59}';
  IID_IWMPPlaylist: TGUID = '{D5F0F4F1-130C-11D3-B14E-00C04F79FAA6}';
  IID_IWMPMedia: TGUID = '{94D55E95-3FAC-11D3-B155-00C04F79FAA6}';
  IID_IWMPLibrary: TGUID = '{3DF47861-7DF1-4C1F-A81B-4C26F0F7A7C6}';
  IID_IWMPMediaCollection: TGUID = '{8363BC22-B4B4-4B19-989D-1CD765749DD1}';
  IID_IWMPStringCollection: TGUID = '{4A976298-8C0D-11D3-B389-00C04F68574B}';
  DIID__WMPOCXEvents: TGUID = '{6BF52A51-394A-11D3-B153-00C04F79FAA6}';
  IID_IWMPCore: TGUID = '{D84CCA99-CCE2-11D2-9ECC-0000F8085981}';
  IID_IWMPCore2: TGUID = '{BC17E5B7-7561-4C18-BB90-17D485775659}';
  IID_IWMPCore3: TGUID = '{7587C667-628F-499F-88E7-6A6F4E888464}';
  IID_IWMPPlayer4: TGUID = '{6C497D62-8919-413C-82DB-E935FB3EC584}';
  IID_IWMPPlayer3: TGUID = '{54062B68-052A-4C25-A39F-8B63346511D4}';
  IID_IWMPControls: TGUID = '{74C09E02-F828-11D2-A74B-00A0C905F36E}';
  IID_IWMPSettings: TGUID = '{9104D1AB-80C9-4FED-ABF0-2E6417A6DF14}';
  IID_IWMPPlaylistCollection: TGUID = '{10A13217-23A7-439B-B1C0-D847C79B7774}';
  IID_IWMPPlaylistArray: TGUID = '{679409C0-99F7-11D3-9FB7-00105AA620BB}';
  IID_IWMPNetwork: TGUID = '{EC21B779-EDEF-462D-BBA4-AD9DDE2B29A7}';
  IID_IWMPCdromCollection: TGUID = '{EE4C8FE2-34B2-11D3-A3BF-006097C9B344}';
  IID_IWMPCdrom: TGUID = '{CFAB6E98-8730-11D3-B388-00C04F68574B}';
  IID_IWMPClosedCaption: TGUID = '{4F2DF574-C588-11D3-9ED0-00C04FB6E937}';
  IID_IWMPError: TGUID = '{A12DCF7D-14AB-4C1B-A8CD-63909F06025B}';
  IID_IWMPErrorItem: TGUID = '{3614C646-3B3B-4DE7-A81E-930E3F2127B3}';
  IID_IWMPDVD: TGUID = '{8DA61686-4668-4A5C-AE5D-803193293DBE}';
  IID_IWMPPlayerApplication: TGUID = '{40897764-CEAB-47BE-AD4A-8E28537F9BBF}';
  IID_IWMPPlayer2: TGUID = '{0E6B01D1-D407-4C85-BF5F-1C01F6150280}';
  IID_IWMPPlayer: TGUID = '{6BF52A4F-394A-11D3-B153-00C04F79FAA6}';
  IID_IWMPErrorItem2: TGUID = '{F75CCEC0-C67C-475C-931E-8719870BEE7D}';
  IID_IWMPControls2: TGUID = '{6F030D25-0890-480F-9775-1F7E40AB5B8E}';
  IID_IWMPMedia2: TGUID = '{AB7C88BB-143E-4EA4-ACC3-E4350B2106C3}';
  IID_IWMPMedia3: TGUID = '{F118EFC7-F03A-4FB4-99C9-1C02A5C1065B}';
  IID_IWMPMetadataPicture: TGUID = '{5C29BBE0-F87D-4C45-AA28-A70F0230FFA9}';
  IID_IWMPMetadataText: TGUID = '{769A72DB-13D2-45E2-9C48-53CA9D5B7450}';
  IID_IWMPSettings2: TGUID = '{FDA937A4-EECE-4DA5-A0B6-39BF89ADE2C2}';
  IID_IWMPControls3: TGUID = '{A1D1110E-D545-476A-9A78-AC3E4CB1E6BD}';
  IID_IWMPClosedCaption2: TGUID = '{350BA78B-6BC8-4113-A5F5-312056934EB6}';
  IID_IWMPMediaCollection2: TGUID = '{8BA957F5-FD8C-4791-B82D-F840401EE474}';
  IID_IWMPStringCollection2: TGUID = '{46AD648D-53F1-4A74-92E2-2A1B68D63FD4}';
  IID_IWMPQuery: TGUID = '{A00918F3-A6B0-4BFB-9189-FD834C7BC5A5}';
  CLASS_WindowsMediaPlayer: TGUID = '{6BF52A52-394A-11D3-B153-00C04F79FAA6}';
  IID_IWMPPlayerServices: TGUID = '{1D01FBDB-ADE2-4C8D-9842-C190B95C3306}';
  IID_IWMPPlayerServices2: TGUID = '{1BB1592F-F040-418A-9F71-17C7512B4D70}';
  IID_IWMPRemoteMediaServices: TGUID = '{CBB92747-741F-44FE-AB5B-F1A48F3B2A59}';
  IID_IWMPSyncServices: TGUID = '{8B5050FF-E0A4-4808-B3A8-893A9E1ED894}';
  IID_IWMPLibraryServices: TGUID = '{39C2F8D5-1CF2-4D5E-AE09-D73492CF9EAA}';
  IID_IWMPLibrarySharingServices: TGUID = '{82CBA86B-9F04-474B-A365-D6DD1466E541}';
  IID_IWMPFolderMonitorServices: TGUID = '{788C8743-E57F-439D-A468-5BC77F2E59C6}';
  IID_IWMPSyncDevice2: TGUID = '{88AFB4B2-140A-44D2-91E6-4543DA467CD1}';
  IID_IWMPPlaylistCtrl: TGUID = '{5F9CFD92-8CAD-11D3-9A7E-00C04F8EFB70}';
  IID_IAppDispatch: TGUID = '{E41C88DD-2364-4FF7-A0F5-CA9859AF783F}';
  IID_IWMPSafeBrowser: TGUID = '{EF870383-83AB-4EA9-BE48-56FA4251AF10}';
  IID_IWMPObjectExtendedProps: TGUID = '{21D077C1-4BAA-11D3-BD45-00C04F6EA5AE}';
  IID_IWMPLayoutSubView: TGUID = '{72F486B1-0D43-11D3-BD3F-00C04F6EA5AE}';
  IID_IWMPLayoutView: TGUID = '{172E905D-80D9-4C2F-B7CE-2CCB771787A2}';
  IID_IWMPEventObject: TGUID = '{5AF0BEC1-46AA-11D3-BD45-00C04F6EA5AE}';
  IID_IWMPTheme: TGUID = '{6FCAE13D-E492-4584-9C21-D2C052A2A33A}';
  IID_IWMPLayoutSettingsDispatch: TGUID = '{B2C2D18E-97AF-4B6A-A56B-2FFFF470FB81}';
  IID_IWMPBrandDispatch: TGUID = '{98BB02D4-ED74-43CC-AD6A-45888F2E0DCC}';
  IID_IWMPNowPlayingHelperDispatch: TGUID = '{504F112E-77CC-4E3C-A073-5371B31D9B36}';
  IID_IWMPNowDoingDispatch: TGUID = '{2A2E0DA3-19FA-4F82-BE18-CD7D7A3B977F}';
  DIID_IWMPButtonCtrlEvents: TGUID = '{BB17FFF7-1692-4555-918A-6AF7BFACEDD2}';
  IID_IWMPButtonCtrl: TGUID = '{87291B50-0C8E-11D3-BB2A-00A0C93CA73A}';
  CLASS_WMPButtonCtrl: TGUID = '{87291B51-0C8E-11D3-BB2A-00A0C93CA73A}';
  IID_IWMPListBoxCtrl: TGUID = '{FC1880CE-83B9-43A7-A066-C44CE8C82583}';
  CLASS_WMPListBoxCtrl: TGUID = '{FC1880CF-83B9-43A7-A066-C44CE8C82583}';
  IID_IWMPListBoxItem: TGUID = '{D255DFB8-C22A-42CF-B8B7-F15D7BCF65D6}';
  IID_IWMPPlaylistCtrlColumn: TGUID = '{63D9D30F-AE4C-4678-8CA8-5720F4FE4419}';
  DIID_IWMPSliderCtrlEvents: TGUID = '{CDAC14D2-8BE4-11D3-BB48-00A0C93CA73A}';
  IID_IWMPSliderCtrl: TGUID = '{F2BF2C8F-405F-11D3-BB39-00A0C93CA73A}';
  CLASS_WMPSliderCtrl: TGUID = '{F2BF2C90-405F-11D3-BB39-00A0C93CA73A}';
  DIID_IWMPVideoCtrlEvents: TGUID = '{A85C0477-714C-4A06-B9F6-7C8CA38B45DC}';
  IID_IWMPVideoCtrl: TGUID = '{61CECF10-FC3A-11D2-A1CD-005004602752}';
  CLASS_WMPVideoCtrl: TGUID = '{61CECF11-FC3A-11D2-A1CD-005004602752}';
  IID_IWMPEffectsCtrl: TGUID = '{A9EFAB80-0A60-4C3F-BBD1-4558DD2A9769}';
  CLASS_WMPEffects: TGUID = '{47DEA830-D619-4154-B8D8-6B74845D6A2D}';
  IID_IWMPEqualizerSettingsCtrl: TGUID = '{2BD3716F-A914-49FB-8655-996D5F495498}';
  CLASS_WMPEqualizerSettingsCtrl: TGUID = '{93EB32F5-87B1-45AD-ACC6-0F2483DB83BB}';
  IID_IWMPVideoSettingsCtrl: TGUID = '{07EC23DA-EF73-4BDE-A40F-F269E0B7AFD6}';
  CLASS_WMPVideoSettingsCtrl: TGUID = '{AE7BFAFE-DCC8-4A73-92C8-CC300CA88859}';
  IID_IWMPLibraryTreeCtrl: TGUID = '{B738FCAE-F089-45DF-AED6-034B9E7DB632}';
  CLASS_WMPLibraryTreeCtrl: TGUID = '{D9DE732A-AEE9-4503-9D11-5605589977A8}';
  IID_IWMPEditCtrl: TGUID = '{70E1217C-C617-4CFD-BD8A-69CA2043E70B}';
  CLASS_WMPEditCtrl: TGUID = '{6342FCED-25EA-4033-BDDB-D049A14382D3}';
  IID_IWMPPluginUIHost: TGUID = '{5D0AD945-289E-45C5-A9C6-F301F0152108}';
  IID_IWMPMenuCtrl: TGUID = '{158A7ADC-33DA-4039-A553-BDDBBE389F5C}';
  CLASS_WMPMenuCtrl: TGUID = '{BAB3768B-8883-4AEC-9F9B-E14C947913EF}';
  IID_IWMPAutoMenuCtrl: TGUID = '{1AD13E0B-4F3A-41DF-9BE2-F9E6FE0A7875}';
  CLASS_WMPAutoMenuCtrl: TGUID = '{6B28F900-8D64-4B80-9963-CC52DDD1FBB4}';
  IID_IWMPRegionalButtonCtrl: TGUID = '{58D507B1-2354-11D3-BD41-00C04F6EA5AE}';
  CLASS_WMPRegionalButtonCtrl: TGUID = '{AE3B6831-25A9-11D3-BD41-00C04F6EA5AE}';
  DIID_IWMPRegionalButtonEvents: TGUID = '{50FC8D31-67AC-11D3-BD4C-00C04F6EA5AE}';
  IID_IWMPRegionalButton: TGUID = '{58D507B2-2354-11D3-BD41-00C04F6EA5AE}';
  CLASS_WMPRegionalButton: TGUID = '{09AEFF11-69EF-11D3-BD4D-00C04F6EA5AE}';
  DIID_IWMPCustomSliderCtrlEvents: TGUID = '{95F45AA4-ED0A-11D2-BA67-0000F80855E6}';
  IID_IWMPCustomSlider: TGUID = '{95F45AA2-ED0A-11D2-BA67-0000F80855E6}';
  CLASS_WMPCustomSliderCtrl: TGUID = '{95F45AA3-ED0A-11D2-BA67-0000F80855E6}';
  IID_IWMPTextCtrl: TGUID = '{237DAC8E-0E32-11D3-A2E2-00C04F79F88E}';
  CLASS_WMPTextCtrl: TGUID = '{DDDA102E-0E17-11D3-A2E2-00C04F79F88E}';
  CLASS_WMPPlaylistCtrl: TGUID = '{5F9CFD93-8CAD-11D3-9A7E-00C04F8EFB70}';
  IID_ITaskCntrCtrl: TGUID = '{891EADB1-1C45-48B0-B704-49A888DA98C4}';
  DIID__WMPCoreEvents: TGUID = '{D84CCA96-CCE2-11D2-9ECC-0000F8085981}';
  CLASS_WMPCore: TGUID = '{09428D37-E0B9-11D2-B147-00C04F79FAA6}';
  IID_IWMPGraphEventHandler: TGUID = '{6B550945-018F-11D3-B14A-00C04F79FAA6}';
  IID_IBattery: TGUID = '{F8578BFA-CD8F-4CE1-A684-5B7E85FCA7DC}';
  IID_IBatteryPreset: TGUID = '{40C6BDE7-9C90-49D4-AD20-BEF81A6C5F22}';
  IID_IBatteryRandomPreset: TGUID = '{F85E2D65-207D-48DB-84B1-915E1735DB17}';
  IID_IBatterySavedPreset: TGUID = '{876E7208-0172-4EBB-B08B-2E1D30DFE44C}';
  IID_IBarsEffect: TGUID = '{33E9291A-F6A9-11D2-9435-00A0C92A2F2D}';
  IID_IWMPExternal: TGUID = '{E2CC638C-FD2C-409B-A1EA-5DDB72DC8E84}';
  IID_IWMPExternalColors: TGUID = '{D10CCDFF-472D-498C-B5FE-3630E5405E0A}';
  IID_IWMPSubscriptionServiceLimited: TGUID = '{54DF358E-CF38-4010-99F1-F44B0E9000E5}';
  IID_IWMPSubscriptionServiceExternal: TGUID = '{2E922378-EE70-4CEB-BBAB-CE7CE4A04816}';
  IID_IWMPDownloadManager: TGUID = '{E15E9AD1-8F20-4CC4-9EC7-1A328CA86A0D}';
  IID_IWMPDownloadCollection: TGUID = '{0A319C7F-85F9-436C-B88E-82FD88000E1C}';
  IID_IWMPDownloadItem: TGUID = '{C9470E8E-3F6B-46A9-A0A9-452815C34297}';
  IID_IWMPDownloadItem2: TGUID = '{9FBB3336-6DA3-479D-B8FF-67D46E20A987}';
  IID_IWMPSubscriptionServicePlayMedia: TGUID = '{5F0248C1-62B3-42D7-B927-029119E6AD14}';
  IID_IWMPDiscoExternal: TGUID = '{A915CEA2-72DF-41E1-A576-EF0BAE5E5169}';
  IID_IWMPCDDVDWizardExternal: TGUID = '{2D7EF888-1D3C-484A-A906-9F49D99BB344}';
  IID_IWMPBaseExternal: TGUID = '{F81B2A59-02BC-4003-8B2F-C124AF66FC66}';
  IID_IWMPOfflineExternal: TGUID = '{3148E685-B243-423D-8341-8480D6EFF674}';
  IID_IWMPRemoteUPnPService: TGUID = '{17E5DC63-E296-4EDE-B9CC-CF57D18ED10E}';
  IID_IWMPRemoteUPnPDevice: TGUID = '{76F13F00-6E17-4D98-BE2D-D2A84CFF5BFD}';
  IID_IWMPRemoteDeviceController: TGUID = '{968F36CA-CB43-4F6A-A03B-66A9C05A93EE}';
  IID_IUPnPService_IWMPUPnPAVTransportDual: TGUID = '{0EA1DE14-E288-4958-A23C-942634A27EB5}';
  IID_IUPnPService_IWMPUPnPBinaryControlDual: TGUID = '{7CAD1D24-EDED-47FA-A1D8-4628FBE5638C}';
  IID_IUPnPService_IWMPUPnPVariableControlDual: TGUID = '{5A09862E-47B1-4D17-94EA-2BDE3014DD42}';
  IID_IUPnPService_IWMPUPnPConnectionManagerDual: TGUID = '{1AF41667-542C-42EA-BF53-DC101168C503}';
  IID_IUPnPService_IWMPUPnPSkinRetrieverDual: TGUID = '{AC743628-971D-4C1E-B019-50543EFE2BAD}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum WMPPlaylistChangeEventType
type
  WMPPlaylistChangeEventType = TOleEnum;
const
  wmplcUnknown = $00000000;
  wmplcClear = $00000001;
  wmplcInfoChange = $00000002;
  wmplcMove = $00000003;
  wmplcDelete = $00000004;
  wmplcInsert = $00000005;
  wmplcAppend = $00000006;
  wmplcPrivate = $00000007;
  wmplcNameChange = $00000008;
  wmplcMorph = $00000009;
  wmplcSort = $0000000A;
  wmplcLast = $0000000B;

// Constants for enum WMPDeviceStatus
type
  WMPDeviceStatus = TOleEnum;
const
  wmpdsUnknown = $00000000;
  wmpdsPartnershipExists = $00000001;
  wmpdsPartnershipDeclined = $00000002;
  wmpdsPartnershipAnother = $00000003;
  wmpdsManualDevice = $00000004;
  wmpdsNewDevice = $00000005;
  wmpdsLast = $00000006;

// Constants for enum WMPSyncState
type
  WMPSyncState = TOleEnum;
const
  wmpssUnknown = $00000000;
  wmpssSynchronizing = $00000001;
  wmpssStopped = $00000002;
  wmpssLast = $00000003;

// Constants for enum WMPRipState
type
  WMPRipState = TOleEnum;
const
  wmprsUnknown = $00000000;
  wmprsRipping = $00000001;
  wmprsStopped = $00000002;

// Constants for enum WMPBurnFormat
type
  WMPBurnFormat = TOleEnum;
const
  wmpbfAudioCD = $00000000;
  wmpbfDataCD = $00000001;

// Constants for enum WMPBurnState
type
  WMPBurnState = TOleEnum;
const
  wmpbsUnknown = $00000000;
  wmpbsBusy = $00000001;
  wmpbsReady = $00000002;
  wmpbsWaitingForDisc = $00000003;
  wmpbsRefreshStatusPending = $00000004;
  wmpbsPreparingToBurn = $00000005;
  wmpbsBurning = $00000006;
  wmpbsStopped = $00000007;
  wmpbsErasing = $00000008;
  wmpbsDownloading = $00000009;

// Constants for enum WMPLibraryType
type
  WMPLibraryType = TOleEnum;
const
  wmpltUnknown = $00000000;
  wmpltAll = $00000001;
  wmpltLocal = $00000002;
  wmpltRemote = $00000003;
  wmpltDisc = $00000004;
  wmpltPortableDevice = $00000005;

// Constants for enum WMPFolderScanState
type
  WMPFolderScanState = TOleEnum;
const
  wmpfssUnknown = $00000000;
  wmpfssScanning = $00000001;
  wmpfssUpdating = $00000002;
  wmpfssStopped = $00000003;

// Constants for enum WMPStringCollectionChangeEventType
type
  WMPStringCollectionChangeEventType = TOleEnum;
const
  wmpsccetUnknown = $00000000;
  wmpsccetInsert = $00000001;
  wmpsccetChange = $00000002;
  wmpsccetDelete = $00000003;
  wmpsccetClear = $00000004;
  wmpsccetBeginUpdates = $00000005;
  wmpsccetEndUpdates = $00000006;

// Constants for enum WMPOpenState
type
  WMPOpenState = TOleEnum;
const
  wmposUndefined = $00000000;
  wmposPlaylistChanging = $00000001;
  wmposPlaylistLocating = $00000002;
  wmposPlaylistConnecting = $00000003;
  wmposPlaylistLoading = $00000004;
  wmposPlaylistOpening = $00000005;
  wmposPlaylistOpenNoMedia = $00000006;
  wmposPlaylistChanged = $00000007;
  wmposMediaChanging = $00000008;
  wmposMediaLocating = $00000009;
  wmposMediaConnecting = $0000000A;
  wmposMediaLoading = $0000000B;
  wmposMediaOpening = $0000000C;
  wmposMediaOpen = $0000000D;
  wmposBeginCodecAcquisition = $0000000E;
  wmposEndCodecAcquisition = $0000000F;
  wmposBeginLicenseAcquisition = $00000010;
  wmposEndLicenseAcquisition = $00000011;
  wmposBeginIndividualization = $00000012;
  wmposEndIndividualization = $00000013;
  wmposMediaWaiting = $00000014;
  wmposOpeningUnknownURL = $00000015;

// Constants for enum WMPPlayState
type
  WMPPlayState = TOleEnum;
const
  wmppsUndefined = $00000000;
  wmppsStopped = $00000001;
  wmppsPaused = $00000002;
  wmppsPlaying = $00000003;
  wmppsScanForward = $00000004;
  wmppsScanReverse = $00000005;
  wmppsBuffering = $00000006;
  wmppsWaiting = $00000007;
  wmppsMediaEnded = $00000008;
  wmppsTransitioning = $00000009;
  wmppsReady = $0000000A;
  wmppsReconnecting = $0000000B;
  wmppsLast = $0000000C;

// Constants for enum WMPSubscriptionDownloadState
type
  WMPSubscriptionDownloadState = TOleEnum;
const
  wmpsdlsDownloading = $00000000;
  wmpsdlsPaused = $00000001;
  wmpsdlsProcessing = $00000002;
  wmpsdlsCompleted = $00000003;
  wmpsdlsCancelled = $00000004;

// Constants for enum WMP_WRITENAMESEX_TYPE
type
  WMP_WRITENAMESEX_TYPE = TOleEnum;
const
  WMP_WRITENAMES_TYPE_CD_BY_TOC = $00000000;
  WMP_WRITENAMES_TYPE_CD_BY_CONTENT_ID = $00000001;
  WMP_WRITENAMES_TYPE_CD_BY_MDQCD = $00000002;
  WMP_WRITENAMES_TYPE_DVD_BY_DVDID = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IWMPEvents = interface;
  IWMPEvents2 = interface;
  IWMPSyncDevice = interface;
  IWMPEvents3 = interface;
  IWMPCdromRip = interface;
  IWMPCdromBurn = interface;
  IWMPPlaylist = interface;
  IWMPPlaylistDisp = dispinterface;
  IWMPMedia = interface;
  IWMPMediaDisp = dispinterface;
  IWMPLibrary = interface;
  IWMPMediaCollection = interface;
  IWMPMediaCollectionDisp = dispinterface;
  IWMPStringCollection = interface;
  IWMPStringCollectionDisp = dispinterface;
  _WMPOCXEvents = dispinterface;
  IWMPCore = interface;
  IWMPCoreDisp = dispinterface;
  IWMPCore2 = interface;
  IWMPCore2Disp = dispinterface;
  IWMPCore3 = interface;
  IWMPCore3Disp = dispinterface;
  IWMPPlayer4 = interface;
  IWMPPlayer4Disp = dispinterface;
  IWMPPlayer3 = interface;
  IWMPPlayer3Disp = dispinterface;
  IWMPControls = interface;
  IWMPControlsDisp = dispinterface;
  IWMPSettings = interface;
  IWMPSettingsDisp = dispinterface;
  IWMPPlaylistCollection = interface;
  IWMPPlaylistCollectionDisp = dispinterface;
  IWMPPlaylistArray = interface;
  IWMPPlaylistArrayDisp = dispinterface;
  IWMPNetwork = interface;
  IWMPNetworkDisp = dispinterface;
  IWMPCdromCollection = interface;
  IWMPCdromCollectionDisp = dispinterface;
  IWMPCdrom = interface;
  IWMPCdromDisp = dispinterface;
  IWMPClosedCaption = interface;
  IWMPClosedCaptionDisp = dispinterface;
  IWMPError = interface;
  IWMPErrorDisp = dispinterface;
  IWMPErrorItem = interface;
  IWMPErrorItemDisp = dispinterface;
  IWMPDVD = interface;
  IWMPDVDDisp = dispinterface;
  IWMPPlayerApplication = interface;
  IWMPPlayerApplicationDisp = dispinterface;
  IWMPPlayer2 = interface;
  IWMPPlayer2Disp = dispinterface;
  IWMPPlayer = interface;
  IWMPPlayerDisp = dispinterface;
  IWMPErrorItem2 = interface;
  IWMPErrorItem2Disp = dispinterface;
  IWMPControls2 = interface;
  IWMPControls2Disp = dispinterface;
  IWMPMedia2 = interface;
  IWMPMedia2Disp = dispinterface;
  IWMPMedia3 = interface;
  IWMPMedia3Disp = dispinterface;
  IWMPMetadataPicture = interface;
  IWMPMetadataPictureDisp = dispinterface;
  IWMPMetadataText = interface;
  IWMPMetadataTextDisp = dispinterface;
  IWMPSettings2 = interface;
  IWMPSettings2Disp = dispinterface;
  IWMPControls3 = interface;
  IWMPControls3Disp = dispinterface;
  IWMPClosedCaption2 = interface;
  IWMPClosedCaption2Disp = dispinterface;
  IWMPMediaCollection2 = interface;
  IWMPMediaCollection2Disp = dispinterface;
  IWMPStringCollection2 = interface;
  IWMPStringCollection2Disp = dispinterface;
  IWMPQuery = interface;
  IWMPQueryDisp = dispinterface;
  IWMPPlayerServices = interface;
  IWMPPlayerServices2 = interface;
  IWMPRemoteMediaServices = interface;
  IWMPSyncServices = interface;
  IWMPLibraryServices = interface;
  IWMPLibrarySharingServices = interface;
  IWMPFolderMonitorServices = interface;
  IWMPSyncDevice2 = interface;
  IWMPPlaylistCtrl = interface;
  IWMPPlaylistCtrlDisp = dispinterface;
  IAppDispatch = interface;
  IAppDispatchDisp = dispinterface;
  IWMPSafeBrowser = interface;
  IWMPSafeBrowserDisp = dispinterface;
  IWMPObjectExtendedProps = interface;
  IWMPObjectExtendedPropsDisp = dispinterface;
  IWMPLayoutSubView = interface;
  IWMPLayoutSubViewDisp = dispinterface;
  IWMPLayoutView = interface;
  IWMPLayoutViewDisp = dispinterface;
  IWMPEventObject = interface;
  IWMPEventObjectDisp = dispinterface;
  IWMPTheme = interface;
  IWMPThemeDisp = dispinterface;
  IWMPLayoutSettingsDispatch = interface;
  IWMPLayoutSettingsDispatchDisp = dispinterface;
  IWMPBrandDispatch = interface;
  IWMPBrandDispatchDisp = dispinterface;
  IWMPNowPlayingHelperDispatch = interface;
  IWMPNowPlayingHelperDispatchDisp = dispinterface;
  IWMPNowDoingDispatch = interface;
  IWMPNowDoingDispatchDisp = dispinterface;
  IWMPButtonCtrlEvents = dispinterface;
  IWMPButtonCtrl = interface;
  IWMPButtonCtrlDisp = dispinterface;
  IWMPListBoxCtrl = interface;
  IWMPListBoxCtrlDisp = dispinterface;
  IWMPListBoxItem = interface;
  IWMPListBoxItemDisp = dispinterface;
  IWMPPlaylistCtrlColumn = interface;
  IWMPPlaylistCtrlColumnDisp = dispinterface;
  IWMPSliderCtrlEvents = dispinterface;
  IWMPSliderCtrl = interface;
  IWMPSliderCtrlDisp = dispinterface;
  IWMPVideoCtrlEvents = dispinterface;
  IWMPVideoCtrl = interface;
  IWMPVideoCtrlDisp = dispinterface;
  IWMPEffectsCtrl = interface;
  IWMPEffectsCtrlDisp = dispinterface;
  IWMPEqualizerSettingsCtrl = interface;
  IWMPEqualizerSettingsCtrlDisp = dispinterface;
  IWMPVideoSettingsCtrl = interface;
  IWMPVideoSettingsCtrlDisp = dispinterface;
  IWMPLibraryTreeCtrl = interface;
  IWMPLibraryTreeCtrlDisp = dispinterface;
  IWMPEditCtrl = interface;
  IWMPEditCtrlDisp = dispinterface;
  IWMPPluginUIHost = interface;
  IWMPPluginUIHostDisp = dispinterface;
  IWMPMenuCtrl = interface;
  IWMPMenuCtrlDisp = dispinterface;
  IWMPAutoMenuCtrl = interface;
  IWMPAutoMenuCtrlDisp = dispinterface;
  IWMPRegionalButtonCtrl = interface;
  IWMPRegionalButtonCtrlDisp = dispinterface;
  IWMPRegionalButtonEvents = dispinterface;
  IWMPRegionalButton = interface;
  IWMPRegionalButtonDisp = dispinterface;
  IWMPCustomSliderCtrlEvents = dispinterface;
  IWMPCustomSlider = interface;
  IWMPCustomSliderDisp = dispinterface;
  IWMPTextCtrl = interface;
  IWMPTextCtrlDisp = dispinterface;
  ITaskCntrCtrl = interface;
  ITaskCntrCtrlDisp = dispinterface;
  _WMPCoreEvents = dispinterface;
  IWMPGraphEventHandler = interface;
  IWMPGraphEventHandlerDisp = dispinterface;
  IBattery = interface;
  IBatteryDisp = dispinterface;
  IBatteryPreset = interface;
  IBatteryPresetDisp = dispinterface;
  IBatteryRandomPreset = interface;
  IBatteryRandomPresetDisp = dispinterface;
  IBatterySavedPreset = interface;
  IBatterySavedPresetDisp = dispinterface;
  IBarsEffect = interface;
  IBarsEffectDisp = dispinterface;
  IWMPExternal = interface;
  IWMPExternalDisp = dispinterface;
  IWMPExternalColors = interface;
  IWMPExternalColorsDisp = dispinterface;
  IWMPSubscriptionServiceLimited = interface;
  IWMPSubscriptionServiceLimitedDisp = dispinterface;
  IWMPSubscriptionServiceExternal = interface;
  IWMPSubscriptionServiceExternalDisp = dispinterface;
  IWMPDownloadManager = interface;
  IWMPDownloadManagerDisp = dispinterface;
  IWMPDownloadCollection = interface;
  IWMPDownloadCollectionDisp = dispinterface;
  IWMPDownloadItem = interface;
  IWMPDownloadItemDisp = dispinterface;
  IWMPDownloadItem2 = interface;
  IWMPDownloadItem2Disp = dispinterface;
  IWMPSubscriptionServicePlayMedia = interface;
  IWMPSubscriptionServicePlayMediaDisp = dispinterface;
  IWMPDiscoExternal = interface;
  IWMPDiscoExternalDisp = dispinterface;
  IWMPCDDVDWizardExternal = interface;
  IWMPCDDVDWizardExternalDisp = dispinterface;
  IWMPBaseExternal = interface;
  IWMPBaseExternalDisp = dispinterface;
  IWMPOfflineExternal = interface;
  IWMPOfflineExternalDisp = dispinterface;
  IWMPRemoteUPnPService = interface;
  IWMPRemoteUPnPServiceDisp = dispinterface;
  IWMPRemoteUPnPDevice = interface;
  IWMPRemoteUPnPDeviceDisp = dispinterface;
  IWMPRemoteDeviceController = interface;
  IWMPRemoteDeviceControllerDisp = dispinterface;
  IUPnPService_IWMPUPnPAVTransportDual = interface;
  IUPnPService_IWMPUPnPAVTransportDualDisp = dispinterface;
  IUPnPService_IWMPUPnPBinaryControlDual = interface;
  IUPnPService_IWMPUPnPBinaryControlDualDisp = dispinterface;
  IUPnPService_IWMPUPnPVariableControlDual = interface;
  IUPnPService_IWMPUPnPVariableControlDualDisp = dispinterface;
  IUPnPService_IWMPUPnPConnectionManagerDual = interface;
  IUPnPService_IWMPUPnPConnectionManagerDualDisp = dispinterface;
  IUPnPService_IWMPUPnPSkinRetrieverDual = interface;
  IUPnPService_IWMPUPnPSkinRetrieverDualDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  WindowsMediaPlayer = IWMPPlayer4;
  WMPButtonCtrl = IWMPButtonCtrl;
  WMPListBoxCtrl = IWMPListBoxCtrl;
  WMPSliderCtrl = IWMPSliderCtrl;
  WMPVideoCtrl = IWMPVideoCtrl;
  WMPEffects = IWMPEffectsCtrl;
  WMPEqualizerSettingsCtrl = IWMPEqualizerSettingsCtrl;
  WMPVideoSettingsCtrl = IWMPVideoSettingsCtrl;
  WMPLibraryTreeCtrl = IWMPLibraryTreeCtrl;
  WMPEditCtrl = IWMPEditCtrl;
  WMPMenuCtrl = IWMPMenuCtrl;
  WMPAutoMenuCtrl = IWMPAutoMenuCtrl;
  WMPRegionalButtonCtrl = IWMPRegionalButtonCtrl;
  WMPRegionalButton = IWMPRegionalButton;
  WMPCustomSliderCtrl = IWMPCustomSlider;
  WMPTextCtrl = IWMPTextCtrl;
  WMPPlaylistCtrl = IWMPPlaylistCtrl;
  WMPCore = IWMPCore3;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PByte1 = ^Byte; {*}
  PIUnknown1 = ^IUnknown; {*}

  ULONG_PTR = LongWord; 

// *********************************************************************//
// Interface: IWMPEvents
// Flags:     (0)
// GUID:      {19A6627B-DA9E-47C1-BB23-00B5E668236A}
// *********************************************************************//
  IWMPEvents = interface(IUnknown)
    ['{19A6627B-DA9E-47C1-BB23-00B5E668236A}']
    procedure OpenStateChange(NewState: Integer); stdcall;
    procedure PlayStateChange(NewState: Integer); stdcall;
    procedure AudioLanguageChange(LangID: Integer); stdcall;
    procedure StatusChange; stdcall;
    procedure ScriptCommand(const scType: WideString; const Param: WideString); stdcall;
    procedure NewStream; stdcall;
    procedure Disconnect(Result: Integer); stdcall;
    procedure Buffering(Start: WordBool); stdcall;
    procedure Error; stdcall;
    procedure Warning(WarningType: Integer; Param: Integer; const Description: WideString); stdcall;
    procedure EndOfStream(Result: Integer); stdcall;
    procedure PositionChange(oldPosition: Double; newPosition: Double); stdcall;
    procedure MarkerHit(MarkerNum: Integer); stdcall;
    procedure DurationUnitChange(NewDurationUnit: Integer); stdcall;
    procedure CdromMediaChange(CdromNum: Integer); stdcall;
    procedure PlaylistChange(const Playlist: IDispatch; change: WMPPlaylistChangeEventType); stdcall;
    procedure CurrentPlaylistChange(change: WMPPlaylistChangeEventType); stdcall;
    procedure CurrentPlaylistItemAvailable(const bstrItemName: WideString); stdcall;
    procedure MediaChange(const Item: IDispatch); stdcall;
    procedure CurrentMediaItemAvailable(const bstrItemName: WideString); stdcall;
    procedure CurrentItemChange(const pdispMedia: IDispatch); stdcall;
    procedure MediaCollectionChange; stdcall;
    procedure MediaCollectionAttributeStringAdded(const bstrAttribName: WideString; 
                                                  const bstrAttribVal: WideString); stdcall;
    procedure MediaCollectionAttributeStringRemoved(const bstrAttribName: WideString; 
                                                    const bstrAttribVal: WideString); stdcall;
    procedure MediaCollectionAttributeStringChanged(const bstrAttribName: WideString; 
                                                    const bstrOldAttribVal: WideString; 
                                                    const bstrNewAttribVal: WideString); stdcall;
    procedure PlaylistCollectionChange; stdcall;
    procedure PlaylistCollectionPlaylistAdded(const bstrPlaylistName: WideString); stdcall;
    procedure PlaylistCollectionPlaylistRemoved(const bstrPlaylistName: WideString); stdcall;
    procedure PlaylistCollectionPlaylistSetAsDeleted(const bstrPlaylistName: WideString; 
                                                     varfIsDeleted: WordBool); stdcall;
    procedure ModeChange(const ModeName: WideString; NewValue: WordBool); stdcall;
    procedure MediaError(const pMediaObject: IDispatch); stdcall;
    procedure OpenPlaylistSwitch(const pItem: IDispatch); stdcall;
    procedure DomainChange(const strDomain: WideString); stdcall;
    procedure SwitchedToPlayerApplication; stdcall;
    procedure SwitchedToControl; stdcall;
    procedure PlayerDockedStateChange; stdcall;
    procedure PlayerReconnect; stdcall;
    procedure Click(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); stdcall;
    procedure DoubleClick(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); stdcall;
    procedure KeyDown(nKeyCode: Smallint; nShiftState: Smallint); stdcall;
    procedure KeyPress(nKeyAscii: Smallint); stdcall;
    procedure KeyUp(nKeyCode: Smallint; nShiftState: Smallint); stdcall;
    procedure MouseDown(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); stdcall;
    procedure MouseMove(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); stdcall;
    procedure MouseUp(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); stdcall;
  end;

// *********************************************************************//
// Interface: IWMPEvents2
// Flags:     (0)
// GUID:      {1E7601FA-47EA-4107-9EA9-9004ED9684FF}
// *********************************************************************//
  IWMPEvents2 = interface(IWMPEvents)
    ['{1E7601FA-47EA-4107-9EA9-9004ED9684FF}']
    procedure DeviceConnect(const pDevice: IWMPSyncDevice); stdcall;
    procedure DeviceDisconnect(const pDevice: IWMPSyncDevice); stdcall;
    procedure DeviceStatusChange(const pDevice: IWMPSyncDevice; NewStatus: WMPDeviceStatus); stdcall;
    procedure DeviceSyncStateChange(const pDevice: IWMPSyncDevice; NewState: WMPSyncState); stdcall;
    procedure DeviceSyncError(const pDevice: IWMPSyncDevice; const pMedia: IDispatch); stdcall;
    procedure CreatePartnershipComplete(const pDevice: IWMPSyncDevice; hrResult: HResult); stdcall;
  end;

// *********************************************************************//
// Interface: IWMPSyncDevice
// Flags:     (256) OleAutomation
// GUID:      {82A2986C-0293-4FD0-B279-B21B86C058BE}
// *********************************************************************//
  IWMPSyncDevice = interface(IUnknown)
    ['{82A2986C-0293-4FD0-B279-B21B86C058BE}']
    function Get_friendlyName(out pbstrName: WideString): HResult; stdcall;
    function Set_friendlyName(const pbstrName: WideString): HResult; stdcall;
    function Get_deviceName(out pbstrName: WideString): HResult; stdcall;
    function Get_deviceId(out pbstrDeviceId: WideString): HResult; stdcall;
    function Get_partnershipIndex(out plIndex: Integer): HResult; stdcall;
    function Get_connected(out pvbConnected: WordBool): HResult; stdcall;
    function Get_status(out pwmpds: WMPDeviceStatus): HResult; stdcall;
    function Get_syncState(out pwmpss: WMPSyncState): HResult; stdcall;
    function Get_progress(out plProgress: Integer): HResult; stdcall;
    function getItemInfo(const bstrItemName: WideString; out pbstrVal: WideString): HResult; stdcall;
    function createPartnership(vbShowUI: WordBool): HResult; stdcall;
    function deletePartnership: HResult; stdcall;
    function Start: HResult; stdcall;
    function stop: HResult; stdcall;
    function showSettings: HResult; stdcall;
    function isIdentical(const pDevice: IWMPSyncDevice; out pvbool: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPEvents3
// Flags:     (0)
// GUID:      {1F504270-A66B-4223-8E96-26A06C63D69F}
// *********************************************************************//
  IWMPEvents3 = interface(IWMPEvents2)
    ['{1F504270-A66B-4223-8E96-26A06C63D69F}']
    procedure CdromRipStateChange(const pCdromRip: IWMPCdromRip; wmprs: WMPRipState); stdcall;
    procedure CdromRipMediaError(const pCdromRip: IWMPCdromRip; const pMedia: IDispatch); stdcall;
    procedure CdromBurnStateChange(const pCdromBurn: IWMPCdromBurn; wmpbs: WMPBurnState); stdcall;
    procedure CdromBurnMediaError(const pCdromBurn: IWMPCdromBurn; const pMedia: IDispatch); stdcall;
    procedure CdromBurnError(const pCdromBurn: IWMPCdromBurn; hrError: HResult); stdcall;
    procedure LibraryConnect(const pLibrary: IWMPLibrary); stdcall;
    procedure LibraryDisconnect(const pLibrary: IWMPLibrary); stdcall;
    procedure FolderScanStateChange(wmpfss: WMPFolderScanState); stdcall;
    procedure StringCollectionChange(const pdispStringCollection: IDispatch; 
                                     change: WMPStringCollectionChangeEventType; 
                                     lCollectionIndex: Integer); stdcall;
    procedure MediaCollectionMediaAdded(const pdispMedia: IDispatch); stdcall;
    procedure MediaCollectionMediaRemoved(const pdispMedia: IDispatch); stdcall;
  end;

// *********************************************************************//
// Interface: IWMPCdromRip
// Flags:     (256) OleAutomation
// GUID:      {56E2294F-69ED-4629-A869-AEA72C0DCC2C}
// *********************************************************************//
  IWMPCdromRip = interface(IUnknown)
    ['{56E2294F-69ED-4629-A869-AEA72C0DCC2C}']
    function Get_ripState(out pwmprs: WMPRipState): HResult; stdcall;
    function Get_ripProgress(out plProgress: Integer): HResult; stdcall;
    function startRip: HResult; stdcall;
    function stopRip: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPCdromBurn
// Flags:     (256) OleAutomation
// GUID:      {BD94DBEB-417F-4928-AA06-087D56ED9B59}
// *********************************************************************//
  IWMPCdromBurn = interface(IUnknown)
    ['{BD94DBEB-417F-4928-AA06-087D56ED9B59}']
    function isAvailable(const bstrItem: WideString; out pIsAvailable: WordBool): HResult; stdcall;
    function getItemInfo(const bstrItem: WideString; out pbstrVal: WideString): HResult; stdcall;
    function Get_label_(out pbstrLabel: WideString): HResult; stdcall;
    function Set_label_(const pbstrLabel: WideString): HResult; stdcall;
    function Get_burnFormat(out pwmpbf: WMPBurnFormat): HResult; stdcall;
    function Set_burnFormat(pwmpbf: WMPBurnFormat): HResult; stdcall;
    function Get_burnPlaylist(out ppPlaylist: IWMPPlaylist): HResult; stdcall;
    function Set_burnPlaylist(const ppPlaylist: IWMPPlaylist): HResult; stdcall;
    function refreshStatus: HResult; stdcall;
    function Get_burnState(out pwmpbs: WMPBurnState): HResult; stdcall;
    function Get_burnProgress(out plProgress: Integer): HResult; stdcall;
    function startBurn: HResult; stdcall;
    function stopBurn: HResult; stdcall;
    function erase: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPPlaylist
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D5F0F4F1-130C-11D3-B14E-00C04F79FAA6}
// *********************************************************************//
  IWMPPlaylist = interface(IDispatch)
    ['{D5F0F4F1-130C-11D3-B14E-00C04F79FAA6}']
    function Get_count: Integer; safecall;
    function Get_name: WideString; safecall;
    procedure Set_name(const pbstrName: WideString); safecall;
    function Get_attributeCount: Integer; safecall;
    function Get_attributeName(lIndex: Integer): WideString; safecall;
    function Get_Item(lIndex: Integer): IWMPMedia; safecall;
    function getItemInfo(const bstrName: WideString): WideString; safecall;
    procedure setItemInfo(const bstrName: WideString; const bstrValue: WideString); safecall;
    function Get_isIdentical(const pIWMPPlaylist: IWMPPlaylist): WordBool; safecall;
    procedure clear; safecall;
    procedure insertItem(lIndex: Integer; const pIWMPMedia: IWMPMedia); safecall;
    procedure appendItem(const pIWMPMedia: IWMPMedia); safecall;
    procedure removeItem(const pIWMPMedia: IWMPMedia); safecall;
    procedure moveItem(lIndexOld: Integer; lIndexNew: Integer); safecall;
    property count: Integer read Get_count;
    property name: WideString read Get_name write Set_name;
    property attributeCount: Integer read Get_attributeCount;
    property attributeName[lIndex: Integer]: WideString read Get_attributeName;
    property Item[lIndex: Integer]: IWMPMedia read Get_Item;
    property isIdentical[const pIWMPPlaylist: IWMPPlaylist]: WordBool read Get_isIdentical;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlaylistDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D5F0F4F1-130C-11D3-B14E-00C04F79FAA6}
// *********************************************************************//
  IWMPPlaylistDisp = dispinterface
    ['{D5F0F4F1-130C-11D3-B14E-00C04F79FAA6}']
    property count: Integer readonly dispid 201;
    property name: WideString dispid 202;
    property attributeCount: Integer readonly dispid 210;
    property attributeName[lIndex: Integer]: WideString readonly dispid 211;
    property Item[lIndex: Integer]: IWMPMedia readonly dispid 212;
    function getItemInfo(const bstrName: WideString): WideString; dispid 203;
    procedure setItemInfo(const bstrName: WideString; const bstrValue: WideString); dispid 204;
    property isIdentical[const pIWMPPlaylist: IWMPPlaylist]: WordBool readonly dispid 213;
    procedure clear; dispid 205;
    procedure insertItem(lIndex: Integer; const pIWMPMedia: IWMPMedia); dispid 206;
    procedure appendItem(const pIWMPMedia: IWMPMedia); dispid 207;
    procedure removeItem(const pIWMPMedia: IWMPMedia); dispid 208;
    procedure moveItem(lIndexOld: Integer; lIndexNew: Integer); dispid 209;
  end;

// *********************************************************************//
// Interface: IWMPMedia
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94D55E95-3FAC-11D3-B155-00C04F79FAA6}
// *********************************************************************//
  IWMPMedia = interface(IDispatch)
    ['{94D55E95-3FAC-11D3-B155-00C04F79FAA6}']
    function Get_isIdentical(const pIWMPMedia: IWMPMedia): WordBool; safecall;
    function Get_sourceURL: WideString; safecall;
    function Get_name: WideString; safecall;
    procedure Set_name(const pbstrName: WideString); safecall;
    function Get_imageSourceWidth: Integer; safecall;
    function Get_imageSourceHeight: Integer; safecall;
    function Get_markerCount: Integer; safecall;
    function getMarkerTime(MarkerNum: Integer): Double; safecall;
    function getMarkerName(MarkerNum: Integer): WideString; safecall;
    function Get_duration: Double; safecall;
    function Get_durationString: WideString; safecall;
    function Get_attributeCount: Integer; safecall;
    function getAttributeName(lIndex: Integer): WideString; safecall;
    function getItemInfo(const bstrItemName: WideString): WideString; safecall;
    procedure setItemInfo(const bstrItemName: WideString; const bstrVal: WideString); safecall;
    function getItemInfoByAtom(lAtom: Integer): WideString; safecall;
    function isMemberOf(const pPlaylist: IWMPPlaylist): WordBool; safecall;
    function isReadOnlyItem(const bstrItemName: WideString): WordBool; safecall;
    property isIdentical[const pIWMPMedia: IWMPMedia]: WordBool read Get_isIdentical;
    property sourceURL: WideString read Get_sourceURL;
    property name: WideString read Get_name write Set_name;
    property imageSourceWidth: Integer read Get_imageSourceWidth;
    property imageSourceHeight: Integer read Get_imageSourceHeight;
    property markerCount: Integer read Get_markerCount;
    property duration: Double read Get_duration;
    property durationString: WideString read Get_durationString;
    property attributeCount: Integer read Get_attributeCount;
  end;

// *********************************************************************//
// DispIntf:  IWMPMediaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94D55E95-3FAC-11D3-B155-00C04F79FAA6}
// *********************************************************************//
  IWMPMediaDisp = dispinterface
    ['{94D55E95-3FAC-11D3-B155-00C04F79FAA6}']
    property isIdentical[const pIWMPMedia: IWMPMedia]: WordBool readonly dispid 763;
    property sourceURL: WideString readonly dispid 751;
    property name: WideString dispid 764;
    property imageSourceWidth: Integer readonly dispid 752;
    property imageSourceHeight: Integer readonly dispid 753;
    property markerCount: Integer readonly dispid 754;
    function getMarkerTime(MarkerNum: Integer): Double; dispid 755;
    function getMarkerName(MarkerNum: Integer): WideString; dispid 756;
    property duration: Double readonly dispid 757;
    property durationString: WideString readonly dispid 758;
    property attributeCount: Integer readonly dispid 759;
    function getAttributeName(lIndex: Integer): WideString; dispid 760;
    function getItemInfo(const bstrItemName: WideString): WideString; dispid 761;
    procedure setItemInfo(const bstrItemName: WideString; const bstrVal: WideString); dispid 762;
    function getItemInfoByAtom(lAtom: Integer): WideString; dispid 765;
    function isMemberOf(const pPlaylist: IWMPPlaylist): WordBool; dispid 766;
    function isReadOnlyItem(const bstrItemName: WideString): WordBool; dispid 767;
  end;

// *********************************************************************//
// Interface: IWMPLibrary
// Flags:     (256) OleAutomation
// GUID:      {3DF47861-7DF1-4C1F-A81B-4C26F0F7A7C6}
// *********************************************************************//
  IWMPLibrary = interface(IUnknown)
    ['{3DF47861-7DF1-4C1F-A81B-4C26F0F7A7C6}']
    function Get_name(out pbstrName: WideString): HResult; stdcall;
    function Get_type_(out pwmplt: WMPLibraryType): HResult; stdcall;
    function Get_mediaCollection(out ppIWMPMediaCollection: IWMPMediaCollection): HResult; stdcall;
    function isIdentical(const pIWMPLibrary: IWMPLibrary; out pvbool: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPMediaCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8363BC22-B4B4-4B19-989D-1CD765749DD1}
// *********************************************************************//
  IWMPMediaCollection = interface(IDispatch)
    ['{8363BC22-B4B4-4B19-989D-1CD765749DD1}']
    function add(const bstrURL: WideString): IWMPMedia; safecall;
    function getAll: IWMPPlaylist; safecall;
    function getByName(const bstrName: WideString): IWMPPlaylist; safecall;
    function getByGenre(const bstrGenre: WideString): IWMPPlaylist; safecall;
    function getByAuthor(const bstrAuthor: WideString): IWMPPlaylist; safecall;
    function getByAlbum(const bstrAlbum: WideString): IWMPPlaylist; safecall;
    function getByAttribute(const bstrAttribute: WideString; const bstrValue: WideString): IWMPPlaylist; safecall;
    procedure remove(const pItem: IWMPMedia; varfDeleteFile: WordBool); safecall;
    function getAttributeStringCollection(const bstrAttribute: WideString; 
                                          const bstrMediaType: WideString): IWMPStringCollection; safecall;
    function getMediaAtom(const bstrItemName: WideString): Integer; safecall;
    procedure setDeleted(const pItem: IWMPMedia; varfIsDeleted: WordBool); safecall;
    function isDeleted(const pItem: IWMPMedia): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPMediaCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8363BC22-B4B4-4B19-989D-1CD765749DD1}
// *********************************************************************//
  IWMPMediaCollectionDisp = dispinterface
    ['{8363BC22-B4B4-4B19-989D-1CD765749DD1}']
    function add(const bstrURL: WideString): IWMPMedia; dispid 452;
    function getAll: IWMPPlaylist; dispid 453;
    function getByName(const bstrName: WideString): IWMPPlaylist; dispid 454;
    function getByGenre(const bstrGenre: WideString): IWMPPlaylist; dispid 455;
    function getByAuthor(const bstrAuthor: WideString): IWMPPlaylist; dispid 456;
    function getByAlbum(const bstrAlbum: WideString): IWMPPlaylist; dispid 457;
    function getByAttribute(const bstrAttribute: WideString; const bstrValue: WideString): IWMPPlaylist; dispid 458;
    procedure remove(const pItem: IWMPMedia; varfDeleteFile: WordBool); dispid 459;
    function getAttributeStringCollection(const bstrAttribute: WideString; 
                                          const bstrMediaType: WideString): IWMPStringCollection; dispid 461;
    function getMediaAtom(const bstrItemName: WideString): Integer; dispid 470;
    procedure setDeleted(const pItem: IWMPMedia; varfIsDeleted: WordBool); dispid 471;
    function isDeleted(const pItem: IWMPMedia): WordBool; dispid 472;
  end;

// *********************************************************************//
// Interface: IWMPStringCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A976298-8C0D-11D3-B389-00C04F68574B}
// *********************************************************************//
  IWMPStringCollection = interface(IDispatch)
    ['{4A976298-8C0D-11D3-B389-00C04F68574B}']
    function Get_count: Integer; safecall;
    function Item(lIndex: Integer): WideString; safecall;
    property count: Integer read Get_count;
  end;

// *********************************************************************//
// DispIntf:  IWMPStringCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A976298-8C0D-11D3-B389-00C04F68574B}
// *********************************************************************//
  IWMPStringCollectionDisp = dispinterface
    ['{4A976298-8C0D-11D3-B389-00C04F68574B}']
    property count: Integer readonly dispid 401;
    function Item(lIndex: Integer): WideString; dispid 402;
  end;

// *********************************************************************//
// DispIntf:  _WMPOCXEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {6BF52A51-394A-11D3-B153-00C04F79FAA6}
// *********************************************************************//
  _WMPOCXEvents = dispinterface
    ['{6BF52A51-394A-11D3-B153-00C04F79FAA6}']
    procedure OpenStateChange(NewState: Integer); dispid 5001;
    procedure PlayStateChange(NewState: Integer); dispid 5101;
    procedure AudioLanguageChange(LangID: Integer); dispid 5102;
    procedure StatusChange; dispid 5002;
    procedure ScriptCommand(const scType: WideString; const Param: WideString); dispid 5301;
    procedure NewStream; dispid 5403;
    procedure Disconnect(Result: Integer); dispid 5401;
    procedure Buffering(Start: WordBool); dispid 5402;
    procedure Error; dispid 5501;
    procedure Warning(WarningType: Integer; Param: Integer; const Description: WideString); dispid 5601;
    procedure EndOfStream(Result: Integer); dispid 5201;
    procedure PositionChange(oldPosition: Double; newPosition: Double); dispid 5202;
    procedure MarkerHit(MarkerNum: Integer); dispid 5203;
    procedure DurationUnitChange(NewDurationUnit: Integer); dispid 5204;
    procedure CdromMediaChange(CdromNum: Integer); dispid 5701;
    procedure PlaylistChange(const Playlist: IDispatch; change: WMPPlaylistChangeEventType); dispid 5801;
    procedure CurrentPlaylistChange(change: WMPPlaylistChangeEventType); dispid 5804;
    procedure CurrentPlaylistItemAvailable(const bstrItemName: WideString); dispid 5805;
    procedure MediaChange(const Item: IDispatch); dispid 5802;
    procedure CurrentMediaItemAvailable(const bstrItemName: WideString); dispid 5803;
    procedure CurrentItemChange(const pdispMedia: IDispatch); dispid 5806;
    procedure MediaCollectionChange; dispid 5807;
    procedure MediaCollectionAttributeStringAdded(const bstrAttribName: WideString; 
                                                  const bstrAttribVal: WideString); dispid 5808;
    procedure MediaCollectionAttributeStringRemoved(const bstrAttribName: WideString; 
                                                    const bstrAttribVal: WideString); dispid 5809;
    procedure MediaCollectionAttributeStringChanged(const bstrAttribName: WideString; 
                                                    const bstrOldAttribVal: WideString; 
                                                    const bstrNewAttribVal: WideString); dispid 5820;
    procedure PlaylistCollectionChange; dispid 5810;
    procedure PlaylistCollectionPlaylistAdded(const bstrPlaylistName: WideString); dispid 5811;
    procedure PlaylistCollectionPlaylistRemoved(const bstrPlaylistName: WideString); dispid 5812;
    procedure PlaylistCollectionPlaylistSetAsDeleted(const bstrPlaylistName: WideString; 
                                                     varfIsDeleted: WordBool); dispid 5818;
    procedure ModeChange(const ModeName: WideString; NewValue: WordBool); dispid 5819;
    procedure MediaError(const pMediaObject: IDispatch); dispid 5821;
    procedure OpenPlaylistSwitch(const pItem: IDispatch); dispid 5823;
    procedure DomainChange(const strDomain: WideString); dispid 5822;
    procedure SwitchedToPlayerApplication; dispid 6501;
    procedure SwitchedToControl; dispid 6502;
    procedure PlayerDockedStateChange; dispid 6503;
    procedure PlayerReconnect; dispid 6504;
    procedure Click(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); dispid 6505;
    procedure DoubleClick(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); dispid 6506;
    procedure KeyDown(nKeyCode: Smallint; nShiftState: Smallint); dispid 6507;
    procedure KeyPress(nKeyAscii: Smallint); dispid 6508;
    procedure KeyUp(nKeyCode: Smallint; nShiftState: Smallint); dispid 6509;
    procedure MouseDown(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); dispid 6510;
    procedure MouseMove(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); dispid 6511;
    procedure MouseUp(nButton: Smallint; nShiftState: Smallint; fX: Integer; fY: Integer); dispid 6512;
    procedure DeviceConnect(const pDevice: IWMPSyncDevice); dispid 6513;
    procedure DeviceDisconnect(const pDevice: IWMPSyncDevice); dispid 6514;
    procedure DeviceStatusChange(const pDevice: IWMPSyncDevice; NewStatus: WMPDeviceStatus); dispid 6515;
    procedure DeviceSyncStateChange(const pDevice: IWMPSyncDevice; NewState: WMPSyncState); dispid 6516;
    procedure DeviceSyncError(const pDevice: IWMPSyncDevice; const pMedia: IDispatch); dispid 6517;
    procedure CreatePartnershipComplete(const pDevice: IWMPSyncDevice; hrResult: HResult); dispid 6518;
    procedure CdromRipStateChange(const pCdromRip: IWMPCdromRip; wmprs: WMPRipState); dispid 6519;
    procedure CdromRipMediaError(const pCdromRip: IWMPCdromRip; const pMedia: IDispatch); dispid 6520;
    procedure CdromBurnStateChange(const pCdromBurn: IWMPCdromBurn; wmpbs: WMPBurnState); dispid 6521;
    procedure CdromBurnMediaError(const pCdromBurn: IWMPCdromBurn; const pMedia: IDispatch); dispid 6522;
    procedure CdromBurnError(const pCdromBurn: IWMPCdromBurn; hrError: HResult); dispid 6523;
    procedure LibraryConnect(const pLibrary: IWMPLibrary); dispid 6524;
    procedure LibraryDisconnect(const pLibrary: IWMPLibrary); dispid 6525;
    procedure FolderScanStateChange(wmpfss: WMPFolderScanState); dispid 6526;
    procedure StringCollectionChange(const pdispStringCollection: IDispatch; 
                                     change: WMPStringCollectionChangeEventType; 
                                     lCollectionIndex: Integer); dispid 5824;
    procedure MediaCollectionMediaAdded(const pdispMedia: IDispatch); dispid 5825;
    procedure MediaCollectionMediaRemoved(const pdispMedia: IDispatch); dispid 5826;
  end;

// *********************************************************************//
// Interface: IWMPCore
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D84CCA99-CCE2-11D2-9ECC-0000F8085981}
// *********************************************************************//
  IWMPCore = interface(IDispatch)
    ['{D84CCA99-CCE2-11D2-9ECC-0000F8085981}']
    procedure close; safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const pbstrURL: WideString); safecall;
    function Get_openState: WMPOpenState; safecall;
    function Get_playState: WMPPlayState; safecall;
    function Get_controls: IWMPControls; safecall;
    function Get_settings: IWMPSettings; safecall;
    function Get_currentMedia: IWMPMedia; safecall;
    procedure Set_currentMedia(const ppMedia: IWMPMedia); safecall;
    function Get_mediaCollection: IWMPMediaCollection; safecall;
    function Get_playlistCollection: IWMPPlaylistCollection; safecall;
    function Get_versionInfo: WideString; safecall;
    procedure launchURL(const bstrURL: WideString); safecall;
    function Get_network: IWMPNetwork; safecall;
    function Get_currentPlaylist: IWMPPlaylist; safecall;
    procedure Set_currentPlaylist(const ppPL: IWMPPlaylist); safecall;
    function Get_cdromCollection: IWMPCdromCollection; safecall;
    function Get_closedCaption: IWMPClosedCaption; safecall;
    function Get_isOnline: WordBool; safecall;
    function Get_Error: IWMPError; safecall;
    function Get_status: WideString; safecall;
    property URL: WideString read Get_URL write Set_URL;
    property openState: WMPOpenState read Get_openState;
    property playState: WMPPlayState read Get_playState;
    property controls: IWMPControls read Get_controls;
    property settings: IWMPSettings read Get_settings;
    property currentMedia: IWMPMedia read Get_currentMedia write Set_currentMedia;
    property mediaCollection: IWMPMediaCollection read Get_mediaCollection;
    property playlistCollection: IWMPPlaylistCollection read Get_playlistCollection;
    property versionInfo: WideString read Get_versionInfo;
    property network: IWMPNetwork read Get_network;
    property currentPlaylist: IWMPPlaylist read Get_currentPlaylist write Set_currentPlaylist;
    property cdromCollection: IWMPCdromCollection read Get_cdromCollection;
    property closedCaption: IWMPClosedCaption read Get_closedCaption;
    property isOnline: WordBool read Get_isOnline;
    property Error: IWMPError read Get_Error;
    property status: WideString read Get_status;
  end;

// *********************************************************************//
// DispIntf:  IWMPCoreDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D84CCA99-CCE2-11D2-9ECC-0000F8085981}
// *********************************************************************//
  IWMPCoreDisp = dispinterface
    ['{D84CCA99-CCE2-11D2-9ECC-0000F8085981}']
    procedure close; dispid 3;
    property URL: WideString dispid 1;
    property openState: WMPOpenState readonly dispid 2;
    property playState: WMPPlayState readonly dispid 10;
    property controls: IWMPControls readonly dispid 4;
    property settings: IWMPSettings readonly dispid 5;
    property currentMedia: IWMPMedia dispid 6;
    property mediaCollection: IWMPMediaCollection readonly dispid 8;
    property playlistCollection: IWMPPlaylistCollection readonly dispid 9;
    property versionInfo: WideString readonly dispid 11;
    procedure launchURL(const bstrURL: WideString); dispid 12;
    property network: IWMPNetwork readonly dispid 7;
    property currentPlaylist: IWMPPlaylist dispid 13;
    property cdromCollection: IWMPCdromCollection readonly dispid 14;
    property closedCaption: IWMPClosedCaption readonly dispid 15;
    property isOnline: WordBool readonly dispid 16;
    property Error: IWMPError readonly dispid 17;
    property status: WideString readonly dispid 18;
  end;

// *********************************************************************//
// Interface: IWMPCore2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BC17E5B7-7561-4C18-BB90-17D485775659}
// *********************************************************************//
  IWMPCore2 = interface(IWMPCore)
    ['{BC17E5B7-7561-4C18-BB90-17D485775659}']
    function Get_dvd: IWMPDVD; safecall;
    property dvd: IWMPDVD read Get_dvd;
  end;

// *********************************************************************//
// DispIntf:  IWMPCore2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BC17E5B7-7561-4C18-BB90-17D485775659}
// *********************************************************************//
  IWMPCore2Disp = dispinterface
    ['{BC17E5B7-7561-4C18-BB90-17D485775659}']
    property dvd: IWMPDVD readonly dispid 40;
    procedure close; dispid 3;
    property URL: WideString dispid 1;
    property openState: WMPOpenState readonly dispid 2;
    property playState: WMPPlayState readonly dispid 10;
    property controls: IWMPControls readonly dispid 4;
    property settings: IWMPSettings readonly dispid 5;
    property currentMedia: IWMPMedia dispid 6;
    property mediaCollection: IWMPMediaCollection readonly dispid 8;
    property playlistCollection: IWMPPlaylistCollection readonly dispid 9;
    property versionInfo: WideString readonly dispid 11;
    procedure launchURL(const bstrURL: WideString); dispid 12;
    property network: IWMPNetwork readonly dispid 7;
    property currentPlaylist: IWMPPlaylist dispid 13;
    property cdromCollection: IWMPCdromCollection readonly dispid 14;
    property closedCaption: IWMPClosedCaption readonly dispid 15;
    property isOnline: WordBool readonly dispid 16;
    property Error: IWMPError readonly dispid 17;
    property status: WideString readonly dispid 18;
  end;

// *********************************************************************//
// Interface: IWMPCore3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7587C667-628F-499F-88E7-6A6F4E888464}
// *********************************************************************//
  IWMPCore3 = interface(IWMPCore2)
    ['{7587C667-628F-499F-88E7-6A6F4E888464}']
    function newPlaylist(const bstrName: WideString; const bstrURL: WideString): IWMPPlaylist; safecall;
    function newMedia(const bstrURL: WideString): IWMPMedia; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPCore3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7587C667-628F-499F-88E7-6A6F4E888464}
// *********************************************************************//
  IWMPCore3Disp = dispinterface
    ['{7587C667-628F-499F-88E7-6A6F4E888464}']
    function newPlaylist(const bstrName: WideString; const bstrURL: WideString): IWMPPlaylist; dispid 41;
    function newMedia(const bstrURL: WideString): IWMPMedia; dispid 42;
    property dvd: IWMPDVD readonly dispid 40;
    procedure close; dispid 3;
    property URL: WideString dispid 1;
    property openState: WMPOpenState readonly dispid 2;
    property playState: WMPPlayState readonly dispid 10;
    property controls: IWMPControls readonly dispid 4;
    property settings: IWMPSettings readonly dispid 5;
    property currentMedia: IWMPMedia dispid 6;
    property mediaCollection: IWMPMediaCollection readonly dispid 8;
    property playlistCollection: IWMPPlaylistCollection readonly dispid 9;
    property versionInfo: WideString readonly dispid 11;
    procedure launchURL(const bstrURL: WideString); dispid 12;
    property network: IWMPNetwork readonly dispid 7;
    property currentPlaylist: IWMPPlaylist dispid 13;
    property cdromCollection: IWMPCdromCollection readonly dispid 14;
    property closedCaption: IWMPClosedCaption readonly dispid 15;
    property isOnline: WordBool readonly dispid 16;
    property Error: IWMPError readonly dispid 17;
    property status: WideString readonly dispid 18;
  end;

// *********************************************************************//
// Interface: IWMPPlayer4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6C497D62-8919-413C-82DB-E935FB3EC584}
// *********************************************************************//
  IWMPPlayer4 = interface(IWMPCore3)
    ['{6C497D62-8919-413C-82DB-E935FB3EC584}']
    function Get_enabled: WordBool; safecall;
    procedure Set_enabled(pbEnabled: WordBool); safecall;
    function Get_fullScreen: WordBool; safecall;
    procedure Set_fullScreen(pbFullScreen: WordBool); safecall;
    function Get_enableContextMenu: WordBool; safecall;
    procedure Set_enableContextMenu(pbEnableContextMenu: WordBool); safecall;
    procedure Set_uiMode(const pbstrMode: WideString); safecall;
    function Get_uiMode: WideString; safecall;
    function Get_stretchToFit: WordBool; safecall;
    procedure Set_stretchToFit(pbEnabled: WordBool); safecall;
    function Get_windowlessVideo: WordBool; safecall;
    procedure Set_windowlessVideo(pbEnabled: WordBool); safecall;
    function Get_isRemote: WordBool; safecall;
    function Get_playerApplication: IWMPPlayerApplication; safecall;
    procedure openPlayer(const bstrURL: WideString); safecall;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property enableContextMenu: WordBool read Get_enableContextMenu write Set_enableContextMenu;
    property uiMode: WideString read Get_uiMode write Set_uiMode;
    property stretchToFit: WordBool read Get_stretchToFit write Set_stretchToFit;
    property windowlessVideo: WordBool read Get_windowlessVideo write Set_windowlessVideo;
    property isRemote: WordBool read Get_isRemote;
    property playerApplication: IWMPPlayerApplication read Get_playerApplication;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlayer4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6C497D62-8919-413C-82DB-E935FB3EC584}
// *********************************************************************//
  IWMPPlayer4Disp = dispinterface
    ['{6C497D62-8919-413C-82DB-E935FB3EC584}']
    property enabled: WordBool dispid 19;
    property fullScreen: WordBool dispid 21;
    property enableContextMenu: WordBool dispid 22;
    property uiMode: WideString dispid 23;
    property stretchToFit: WordBool dispid 24;
    property windowlessVideo: WordBool dispid 25;
    property isRemote: WordBool readonly dispid 26;
    property playerApplication: IWMPPlayerApplication readonly dispid 27;
    procedure openPlayer(const bstrURL: WideString); dispid 28;
    function newPlaylist(const bstrName: WideString; const bstrURL: WideString): IWMPPlaylist; dispid 41;
    function newMedia(const bstrURL: WideString): IWMPMedia; dispid 42;
    property dvd: IWMPDVD readonly dispid 40;
    procedure close; dispid 3;
    property URL: WideString dispid 1;
    property openState: WMPOpenState readonly dispid 2;
    property playState: WMPPlayState readonly dispid 10;
    property controls: IWMPControls readonly dispid 4;
    property settings: IWMPSettings readonly dispid 5;
    property currentMedia: IWMPMedia dispid 6;
    property mediaCollection: IWMPMediaCollection readonly dispid 8;
    property playlistCollection: IWMPPlaylistCollection readonly dispid 9;
    property versionInfo: WideString readonly dispid 11;
    procedure launchURL(const bstrURL: WideString); dispid 12;
    property network: IWMPNetwork readonly dispid 7;
    property currentPlaylist: IWMPPlaylist dispid 13;
    property cdromCollection: IWMPCdromCollection readonly dispid 14;
    property closedCaption: IWMPClosedCaption readonly dispid 15;
    property isOnline: WordBool readonly dispid 16;
    property Error: IWMPError readonly dispid 17;
    property status: WideString readonly dispid 18;
  end;

// *********************************************************************//
// Interface: IWMPPlayer3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54062B68-052A-4C25-A39F-8B63346511D4}
// *********************************************************************//
  IWMPPlayer3 = interface(IWMPCore2)
    ['{54062B68-052A-4C25-A39F-8B63346511D4}']
    function Get_enabled: WordBool; safecall;
    procedure Set_enabled(pbEnabled: WordBool); safecall;
    function Get_fullScreen: WordBool; safecall;
    procedure Set_fullScreen(pbFullScreen: WordBool); safecall;
    function Get_enableContextMenu: WordBool; safecall;
    procedure Set_enableContextMenu(pbEnableContextMenu: WordBool); safecall;
    procedure Set_uiMode(const pbstrMode: WideString); safecall;
    function Get_uiMode: WideString; safecall;
    function Get_stretchToFit: WordBool; safecall;
    procedure Set_stretchToFit(pbEnabled: WordBool); safecall;
    function Get_windowlessVideo: WordBool; safecall;
    procedure Set_windowlessVideo(pbEnabled: WordBool); safecall;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property enableContextMenu: WordBool read Get_enableContextMenu write Set_enableContextMenu;
    property uiMode: WideString read Get_uiMode write Set_uiMode;
    property stretchToFit: WordBool read Get_stretchToFit write Set_stretchToFit;
    property windowlessVideo: WordBool read Get_windowlessVideo write Set_windowlessVideo;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlayer3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54062B68-052A-4C25-A39F-8B63346511D4}
// *********************************************************************//
  IWMPPlayer3Disp = dispinterface
    ['{54062B68-052A-4C25-A39F-8B63346511D4}']
    property enabled: WordBool dispid 19;
    property fullScreen: WordBool dispid 21;
    property enableContextMenu: WordBool dispid 22;
    property uiMode: WideString dispid 23;
    property stretchToFit: WordBool dispid 24;
    property windowlessVideo: WordBool dispid 25;
    property dvd: IWMPDVD readonly dispid 40;
    procedure close; dispid 3;
    property URL: WideString dispid 1;
    property openState: WMPOpenState readonly dispid 2;
    property playState: WMPPlayState readonly dispid 10;
    property controls: IWMPControls readonly dispid 4;
    property settings: IWMPSettings readonly dispid 5;
    property currentMedia: IWMPMedia dispid 6;
    property mediaCollection: IWMPMediaCollection readonly dispid 8;
    property playlistCollection: IWMPPlaylistCollection readonly dispid 9;
    property versionInfo: WideString readonly dispid 11;
    procedure launchURL(const bstrURL: WideString); dispid 12;
    property network: IWMPNetwork readonly dispid 7;
    property currentPlaylist: IWMPPlaylist dispid 13;
    property cdromCollection: IWMPCdromCollection readonly dispid 14;
    property closedCaption: IWMPClosedCaption readonly dispid 15;
    property isOnline: WordBool readonly dispid 16;
    property Error: IWMPError readonly dispid 17;
    property status: WideString readonly dispid 18;
  end;

// *********************************************************************//
// Interface: IWMPControls
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74C09E02-F828-11D2-A74B-00A0C905F36E}
// *********************************************************************//
  IWMPControls = interface(IDispatch)
    ['{74C09E02-F828-11D2-A74B-00A0C905F36E}']
    function Get_isAvailable(const bstrItem: WideString): WordBool; safecall;
    procedure play; safecall;
    procedure stop; safecall;
    procedure pause; safecall;
    procedure fastForward; safecall;
    procedure fastReverse; safecall;
    function Get_currentPosition: Double; safecall;
    procedure Set_currentPosition(pdCurrentPosition: Double); safecall;
    function Get_currentPositionString: WideString; safecall;
    procedure next; safecall;
    procedure previous; safecall;
    function Get_currentItem: IWMPMedia; safecall;
    procedure Set_currentItem(const ppIWMPMedia: IWMPMedia); safecall;
    function Get_currentMarker: Integer; safecall;
    procedure Set_currentMarker(plMarker: Integer); safecall;
    procedure playItem(const pIWMPMedia: IWMPMedia); safecall;
    property isAvailable[const bstrItem: WideString]: WordBool read Get_isAvailable;
    property currentPosition: Double read Get_currentPosition write Set_currentPosition;
    property currentPositionString: WideString read Get_currentPositionString;
    property currentItem: IWMPMedia read Get_currentItem write Set_currentItem;
    property currentMarker: Integer read Get_currentMarker write Set_currentMarker;
  end;

// *********************************************************************//
// DispIntf:  IWMPControlsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74C09E02-F828-11D2-A74B-00A0C905F36E}
// *********************************************************************//
  IWMPControlsDisp = dispinterface
    ['{74C09E02-F828-11D2-A74B-00A0C905F36E}']
    property isAvailable[const bstrItem: WideString]: WordBool readonly dispid 62;
    procedure play; dispid 51;
    procedure stop; dispid 52;
    procedure pause; dispid 53;
    procedure fastForward; dispid 54;
    procedure fastReverse; dispid 55;
    property currentPosition: Double dispid 56;
    property currentPositionString: WideString readonly dispid 57;
    procedure next; dispid 58;
    procedure previous; dispid 59;
    property currentItem: IWMPMedia dispid 60;
    property currentMarker: Integer dispid 61;
    procedure playItem(const pIWMPMedia: IWMPMedia); dispid 63;
  end;

// *********************************************************************//
// Interface: IWMPSettings
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9104D1AB-80C9-4FED-ABF0-2E6417A6DF14}
// *********************************************************************//
  IWMPSettings = interface(IDispatch)
    ['{9104D1AB-80C9-4FED-ABF0-2E6417A6DF14}']
    function Get_isAvailable(const bstrItem: WideString): WordBool; safecall;
    function Get_autoStart: WordBool; safecall;
    procedure Set_autoStart(pfAutoStart: WordBool); safecall;
    function Get_baseURL: WideString; safecall;
    procedure Set_baseURL(const pbstrBaseURL: WideString); safecall;
    function Get_defaultFrame: WideString; safecall;
    procedure Set_defaultFrame(const pbstrDefaultFrame: WideString); safecall;
    function Get_invokeURLs: WordBool; safecall;
    procedure Set_invokeURLs(pfInvokeURLs: WordBool); safecall;
    function Get_mute: WordBool; safecall;
    procedure Set_mute(pfMute: WordBool); safecall;
    function Get_playCount: Integer; safecall;
    procedure Set_playCount(plCount: Integer); safecall;
    function Get_rate: Double; safecall;
    procedure Set_rate(pdRate: Double); safecall;
    function Get_balance: Integer; safecall;
    procedure Set_balance(plBalance: Integer); safecall;
    function Get_volume: Integer; safecall;
    procedure Set_volume(plVolume: Integer); safecall;
    function getMode(const bstrMode: WideString): WordBool; safecall;
    procedure setMode(const bstrMode: WideString; varfMode: WordBool); safecall;
    function Get_enableErrorDialogs: WordBool; safecall;
    procedure Set_enableErrorDialogs(pfEnableErrorDialogs: WordBool); safecall;
    property isAvailable[const bstrItem: WideString]: WordBool read Get_isAvailable;
    property autoStart: WordBool read Get_autoStart write Set_autoStart;
    property baseURL: WideString read Get_baseURL write Set_baseURL;
    property defaultFrame: WideString read Get_defaultFrame write Set_defaultFrame;
    property invokeURLs: WordBool read Get_invokeURLs write Set_invokeURLs;
    property mute: WordBool read Get_mute write Set_mute;
    property playCount: Integer read Get_playCount write Set_playCount;
    property rate: Double read Get_rate write Set_rate;
    property balance: Integer read Get_balance write Set_balance;
    property volume: Integer read Get_volume write Set_volume;
    property enableErrorDialogs: WordBool read Get_enableErrorDialogs write Set_enableErrorDialogs;
  end;

// *********************************************************************//
// DispIntf:  IWMPSettingsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9104D1AB-80C9-4FED-ABF0-2E6417A6DF14}
// *********************************************************************//
  IWMPSettingsDisp = dispinterface
    ['{9104D1AB-80C9-4FED-ABF0-2E6417A6DF14}']
    property isAvailable[const bstrItem: WideString]: WordBool readonly dispid 113;
    property autoStart: WordBool dispid 101;
    property baseURL: WideString dispid 108;
    property defaultFrame: WideString dispid 109;
    property invokeURLs: WordBool dispid 103;
    property mute: WordBool dispid 104;
    property playCount: Integer dispid 105;
    property rate: Double dispid 106;
    property balance: Integer dispid 102;
    property volume: Integer dispid 107;
    function getMode(const bstrMode: WideString): WordBool; dispid 110;
    procedure setMode(const bstrMode: WideString; varfMode: WordBool); dispid 111;
    property enableErrorDialogs: WordBool dispid 112;
  end;

// *********************************************************************//
// Interface: IWMPPlaylistCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10A13217-23A7-439B-B1C0-D847C79B7774}
// *********************************************************************//
  IWMPPlaylistCollection = interface(IDispatch)
    ['{10A13217-23A7-439B-B1C0-D847C79B7774}']
    function newPlaylist(const bstrName: WideString): IWMPPlaylist; safecall;
    function getAll: IWMPPlaylistArray; safecall;
    function getByName(const bstrName: WideString): IWMPPlaylistArray; safecall;
    procedure remove(const pItem: IWMPPlaylist); safecall;
    procedure setDeleted(const pItem: IWMPPlaylist; varfIsDeleted: WordBool); safecall;
    function isDeleted(const pItem: IWMPPlaylist): WordBool; safecall;
    function importPlaylist(const pItem: IWMPPlaylist): IWMPPlaylist; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlaylistCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10A13217-23A7-439B-B1C0-D847C79B7774}
// *********************************************************************//
  IWMPPlaylistCollectionDisp = dispinterface
    ['{10A13217-23A7-439B-B1C0-D847C79B7774}']
    function newPlaylist(const bstrName: WideString): IWMPPlaylist; dispid 552;
    function getAll: IWMPPlaylistArray; dispid 553;
    function getByName(const bstrName: WideString): IWMPPlaylistArray; dispid 554;
    procedure remove(const pItem: IWMPPlaylist); dispid 556;
    procedure setDeleted(const pItem: IWMPPlaylist; varfIsDeleted: WordBool); dispid 560;
    function isDeleted(const pItem: IWMPPlaylist): WordBool; dispid 561;
    function importPlaylist(const pItem: IWMPPlaylist): IWMPPlaylist; dispid 562;
  end;

// *********************************************************************//
// Interface: IWMPPlaylistArray
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {679409C0-99F7-11D3-9FB7-00105AA620BB}
// *********************************************************************//
  IWMPPlaylistArray = interface(IDispatch)
    ['{679409C0-99F7-11D3-9FB7-00105AA620BB}']
    function Get_count: Integer; safecall;
    function Item(lIndex: Integer): IWMPPlaylist; safecall;
    property count: Integer read Get_count;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlaylistArrayDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {679409C0-99F7-11D3-9FB7-00105AA620BB}
// *********************************************************************//
  IWMPPlaylistArrayDisp = dispinterface
    ['{679409C0-99F7-11D3-9FB7-00105AA620BB}']
    property count: Integer readonly dispid 501;
    function Item(lIndex: Integer): IWMPPlaylist; dispid 502;
  end;

// *********************************************************************//
// Interface: IWMPNetwork
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EC21B779-EDEF-462D-BBA4-AD9DDE2B29A7}
// *********************************************************************//
  IWMPNetwork = interface(IDispatch)
    ['{EC21B779-EDEF-462D-BBA4-AD9DDE2B29A7}']
    function Get_bandWidth: Integer; safecall;
    function Get_recoveredPackets: Integer; safecall;
    function Get_sourceProtocol: WideString; safecall;
    function Get_receivedPackets: Integer; safecall;
    function Get_lostPackets: Integer; safecall;
    function Get_receptionQuality: Integer; safecall;
    function Get_bufferingCount: Integer; safecall;
    function Get_bufferingProgress: Integer; safecall;
    function Get_bufferingTime: Integer; safecall;
    procedure Set_bufferingTime(plBufferingTime: Integer); safecall;
    function Get_frameRate: Integer; safecall;
    function Get_maxBitRate: Integer; safecall;
    function Get_bitRate: Integer; safecall;
    function getProxySettings(const bstrProtocol: WideString): Integer; safecall;
    procedure setProxySettings(const bstrProtocol: WideString; lProxySetting: Integer); safecall;
    function getProxyName(const bstrProtocol: WideString): WideString; safecall;
    procedure setProxyName(const bstrProtocol: WideString; const bstrProxyName: WideString); safecall;
    function getProxyPort(const bstrProtocol: WideString): Integer; safecall;
    procedure setProxyPort(const bstrProtocol: WideString; lProxyPort: Integer); safecall;
    function getProxyExceptionList(const bstrProtocol: WideString): WideString; safecall;
    procedure setProxyExceptionList(const bstrProtocol: WideString; 
                                    const pbstrExceptionList: WideString); safecall;
    function getProxyBypassForLocal(const bstrProtocol: WideString): WordBool; safecall;
    procedure setProxyBypassForLocal(const bstrProtocol: WideString; fBypassForLocal: WordBool); safecall;
    function Get_maxBandwidth: Integer; safecall;
    procedure Set_maxBandwidth(lMaxBandwidth: Integer); safecall;
    function Get_downloadProgress: Integer; safecall;
    function Get_encodedFrameRate: Integer; safecall;
    function Get_framesSkipped: Integer; safecall;
    property bandWidth: Integer read Get_bandWidth;
    property recoveredPackets: Integer read Get_recoveredPackets;
    property sourceProtocol: WideString read Get_sourceProtocol;
    property receivedPackets: Integer read Get_receivedPackets;
    property lostPackets: Integer read Get_lostPackets;
    property receptionQuality: Integer read Get_receptionQuality;
    property bufferingCount: Integer read Get_bufferingCount;
    property bufferingProgress: Integer read Get_bufferingProgress;
    property bufferingTime: Integer read Get_bufferingTime write Set_bufferingTime;
    property frameRate: Integer read Get_frameRate;
    property maxBitRate: Integer read Get_maxBitRate;
    property bitRate: Integer read Get_bitRate;
    property maxBandwidth: Integer read Get_maxBandwidth write Set_maxBandwidth;
    property downloadProgress: Integer read Get_downloadProgress;
    property encodedFrameRate: Integer read Get_encodedFrameRate;
    property framesSkipped: Integer read Get_framesSkipped;
  end;

// *********************************************************************//
// DispIntf:  IWMPNetworkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EC21B779-EDEF-462D-BBA4-AD9DDE2B29A7}
// *********************************************************************//
  IWMPNetworkDisp = dispinterface
    ['{EC21B779-EDEF-462D-BBA4-AD9DDE2B29A7}']
    property bandWidth: Integer readonly dispid 801;
    property recoveredPackets: Integer readonly dispid 802;
    property sourceProtocol: WideString readonly dispid 803;
    property receivedPackets: Integer readonly dispid 804;
    property lostPackets: Integer readonly dispid 805;
    property receptionQuality: Integer readonly dispid 806;
    property bufferingCount: Integer readonly dispid 807;
    property bufferingProgress: Integer readonly dispid 808;
    property bufferingTime: Integer dispid 809;
    property frameRate: Integer readonly dispid 810;
    property maxBitRate: Integer readonly dispid 811;
    property bitRate: Integer readonly dispid 812;
    function getProxySettings(const bstrProtocol: WideString): Integer; dispid 813;
    procedure setProxySettings(const bstrProtocol: WideString; lProxySetting: Integer); dispid 814;
    function getProxyName(const bstrProtocol: WideString): WideString; dispid 815;
    procedure setProxyName(const bstrProtocol: WideString; const bstrProxyName: WideString); dispid 816;
    function getProxyPort(const bstrProtocol: WideString): Integer; dispid 817;
    procedure setProxyPort(const bstrProtocol: WideString; lProxyPort: Integer); dispid 818;
    function getProxyExceptionList(const bstrProtocol: WideString): WideString; dispid 819;
    procedure setProxyExceptionList(const bstrProtocol: WideString; 
                                    const pbstrExceptionList: WideString); dispid 820;
    function getProxyBypassForLocal(const bstrProtocol: WideString): WordBool; dispid 821;
    procedure setProxyBypassForLocal(const bstrProtocol: WideString; fBypassForLocal: WordBool); dispid 822;
    property maxBandwidth: Integer dispid 823;
    property downloadProgress: Integer readonly dispid 824;
    property encodedFrameRate: Integer readonly dispid 825;
    property framesSkipped: Integer readonly dispid 826;
  end;

// *********************************************************************//
// Interface: IWMPCdromCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EE4C8FE2-34B2-11D3-A3BF-006097C9B344}
// *********************************************************************//
  IWMPCdromCollection = interface(IDispatch)
    ['{EE4C8FE2-34B2-11D3-A3BF-006097C9B344}']
    function Get_count: Integer; safecall;
    function Item(lIndex: Integer): IWMPCdrom; safecall;
    function getByDriveSpecifier(const bstrDriveSpecifier: WideString): IWMPCdrom; safecall;
    property count: Integer read Get_count;
  end;

// *********************************************************************//
// DispIntf:  IWMPCdromCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EE4C8FE2-34B2-11D3-A3BF-006097C9B344}
// *********************************************************************//
  IWMPCdromCollectionDisp = dispinterface
    ['{EE4C8FE2-34B2-11D3-A3BF-006097C9B344}']
    property count: Integer readonly dispid 301;
    function Item(lIndex: Integer): IWMPCdrom; dispid 302;
    function getByDriveSpecifier(const bstrDriveSpecifier: WideString): IWMPCdrom; dispid 303;
  end;

// *********************************************************************//
// Interface: IWMPCdrom
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CFAB6E98-8730-11D3-B388-00C04F68574B}
// *********************************************************************//
  IWMPCdrom = interface(IDispatch)
    ['{CFAB6E98-8730-11D3-B388-00C04F68574B}']
    function Get_driveSpecifier: WideString; safecall;
    function Get_Playlist: IWMPPlaylist; safecall;
    procedure eject; safecall;
    property driveSpecifier: WideString read Get_driveSpecifier;
    property Playlist: IWMPPlaylist read Get_Playlist;
  end;

// *********************************************************************//
// DispIntf:  IWMPCdromDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CFAB6E98-8730-11D3-B388-00C04F68574B}
// *********************************************************************//
  IWMPCdromDisp = dispinterface
    ['{CFAB6E98-8730-11D3-B388-00C04F68574B}']
    property driveSpecifier: WideString readonly dispid 251;
    property Playlist: IWMPPlaylist readonly dispid 252;
    procedure eject; dispid 253;
  end;

// *********************************************************************//
// Interface: IWMPClosedCaption
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F2DF574-C588-11D3-9ED0-00C04FB6E937}
// *********************************************************************//
  IWMPClosedCaption = interface(IDispatch)
    ['{4F2DF574-C588-11D3-9ED0-00C04FB6E937}']
    function Get_SAMIStyle: WideString; safecall;
    procedure Set_SAMIStyle(const pbstrSAMIStyle: WideString); safecall;
    function Get_SAMILang: WideString; safecall;
    procedure Set_SAMILang(const pbstrSAMILang: WideString); safecall;
    function Get_SAMIFileName: WideString; safecall;
    procedure Set_SAMIFileName(const pbstrSAMIFileName: WideString); safecall;
    function Get_captioningId: WideString; safecall;
    procedure Set_captioningId(const pbstrCaptioningID: WideString); safecall;
    property SAMIStyle: WideString read Get_SAMIStyle write Set_SAMIStyle;
    property SAMILang: WideString read Get_SAMILang write Set_SAMILang;
    property SAMIFileName: WideString read Get_SAMIFileName write Set_SAMIFileName;
    property captioningId: WideString read Get_captioningId write Set_captioningId;
  end;

// *********************************************************************//
// DispIntf:  IWMPClosedCaptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F2DF574-C588-11D3-9ED0-00C04FB6E937}
// *********************************************************************//
  IWMPClosedCaptionDisp = dispinterface
    ['{4F2DF574-C588-11D3-9ED0-00C04FB6E937}']
    property SAMIStyle: WideString dispid 951;
    property SAMILang: WideString dispid 952;
    property SAMIFileName: WideString dispid 953;
    property captioningId: WideString dispid 954;
  end;

// *********************************************************************//
// Interface: IWMPError
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A12DCF7D-14AB-4C1B-A8CD-63909F06025B}
// *********************************************************************//
  IWMPError = interface(IDispatch)
    ['{A12DCF7D-14AB-4C1B-A8CD-63909F06025B}']
    procedure clearErrorQueue; safecall;
    function Get_errorCount: Integer; safecall;
    function Get_Item(dwIndex: Integer): IWMPErrorItem; safecall;
    procedure webHelp; safecall;
    property errorCount: Integer read Get_errorCount;
    property Item[dwIndex: Integer]: IWMPErrorItem read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  IWMPErrorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A12DCF7D-14AB-4C1B-A8CD-63909F06025B}
// *********************************************************************//
  IWMPErrorDisp = dispinterface
    ['{A12DCF7D-14AB-4C1B-A8CD-63909F06025B}']
    procedure clearErrorQueue; dispid 851;
    property errorCount: Integer readonly dispid 852;
    property Item[dwIndex: Integer]: IWMPErrorItem readonly dispid 853;
    procedure webHelp; dispid 854;
  end;

// *********************************************************************//
// Interface: IWMPErrorItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3614C646-3B3B-4DE7-A81E-930E3F2127B3}
// *********************************************************************//
  IWMPErrorItem = interface(IDispatch)
    ['{3614C646-3B3B-4DE7-A81E-930E3F2127B3}']
    function Get_errorCode: Integer; safecall;
    function Get_errorDescription: WideString; safecall;
    function Get_errorContext: OleVariant; safecall;
    function Get_remedy: Integer; safecall;
    function Get_customUrl: WideString; safecall;
    property errorCode: Integer read Get_errorCode;
    property errorDescription: WideString read Get_errorDescription;
    property errorContext: OleVariant read Get_errorContext;
    property remedy: Integer read Get_remedy;
    property customUrl: WideString read Get_customUrl;
  end;

// *********************************************************************//
// DispIntf:  IWMPErrorItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3614C646-3B3B-4DE7-A81E-930E3F2127B3}
// *********************************************************************//
  IWMPErrorItemDisp = dispinterface
    ['{3614C646-3B3B-4DE7-A81E-930E3F2127B3}']
    property errorCode: Integer readonly dispid 901;
    property errorDescription: WideString readonly dispid 902;
    property errorContext: OleVariant readonly dispid 903;
    property remedy: Integer readonly dispid 904;
    property customUrl: WideString readonly dispid 905;
  end;

// *********************************************************************//
// Interface: IWMPDVD
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DA61686-4668-4A5C-AE5D-803193293DBE}
// *********************************************************************//
  IWMPDVD = interface(IDispatch)
    ['{8DA61686-4668-4A5C-AE5D-803193293DBE}']
    function Get_isAvailable(const bstrItem: WideString): WordBool; safecall;
    function Get_domain: WideString; safecall;
    procedure topMenu; safecall;
    procedure titleMenu; safecall;
    procedure back; safecall;
    procedure resume; safecall;
    property isAvailable[const bstrItem: WideString]: WordBool read Get_isAvailable;
    property domain: WideString read Get_domain;
  end;

// *********************************************************************//
// DispIntf:  IWMPDVDDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DA61686-4668-4A5C-AE5D-803193293DBE}
// *********************************************************************//
  IWMPDVDDisp = dispinterface
    ['{8DA61686-4668-4A5C-AE5D-803193293DBE}']
    property isAvailable[const bstrItem: WideString]: WordBool readonly dispid 1001;
    property domain: WideString readonly dispid 1002;
    procedure topMenu; dispid 1003;
    procedure titleMenu; dispid 1004;
    procedure back; dispid 1005;
    procedure resume; dispid 1006;
  end;

// *********************************************************************//
// Interface: IWMPPlayerApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {40897764-CEAB-47BE-AD4A-8E28537F9BBF}
// *********************************************************************//
  IWMPPlayerApplication = interface(IDispatch)
    ['{40897764-CEAB-47BE-AD4A-8E28537F9BBF}']
    procedure switchToPlayerApplication; safecall;
    procedure switchToControl; safecall;
    function Get_playerDocked: WordBool; safecall;
    function Get_hasDisplay: WordBool; safecall;
    property playerDocked: WordBool read Get_playerDocked;
    property hasDisplay: WordBool read Get_hasDisplay;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlayerApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {40897764-CEAB-47BE-AD4A-8E28537F9BBF}
// *********************************************************************//
  IWMPPlayerApplicationDisp = dispinterface
    ['{40897764-CEAB-47BE-AD4A-8E28537F9BBF}']
    procedure switchToPlayerApplication; dispid 1101;
    procedure switchToControl; dispid 1102;
    property playerDocked: WordBool readonly dispid 1103;
    property hasDisplay: WordBool readonly dispid 1104;
  end;

// *********************************************************************//
// Interface: IWMPPlayer2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0E6B01D1-D407-4C85-BF5F-1C01F6150280}
// *********************************************************************//
  IWMPPlayer2 = interface(IWMPCore)
    ['{0E6B01D1-D407-4C85-BF5F-1C01F6150280}']
    function Get_enabled: WordBool; safecall;
    procedure Set_enabled(pbEnabled: WordBool); safecall;
    function Get_fullScreen: WordBool; safecall;
    procedure Set_fullScreen(pbFullScreen: WordBool); safecall;
    function Get_enableContextMenu: WordBool; safecall;
    procedure Set_enableContextMenu(pbEnableContextMenu: WordBool); safecall;
    procedure Set_uiMode(const pbstrMode: WideString); safecall;
    function Get_uiMode: WideString; safecall;
    function Get_stretchToFit: WordBool; safecall;
    procedure Set_stretchToFit(pbEnabled: WordBool); safecall;
    function Get_windowlessVideo: WordBool; safecall;
    procedure Set_windowlessVideo(pbEnabled: WordBool); safecall;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property enableContextMenu: WordBool read Get_enableContextMenu write Set_enableContextMenu;
    property uiMode: WideString read Get_uiMode write Set_uiMode;
    property stretchToFit: WordBool read Get_stretchToFit write Set_stretchToFit;
    property windowlessVideo: WordBool read Get_windowlessVideo write Set_windowlessVideo;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlayer2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0E6B01D1-D407-4C85-BF5F-1C01F6150280}
// *********************************************************************//
  IWMPPlayer2Disp = dispinterface
    ['{0E6B01D1-D407-4C85-BF5F-1C01F6150280}']
    property enabled: WordBool dispid 19;
    property fullScreen: WordBool dispid 21;
    property enableContextMenu: WordBool dispid 22;
    property uiMode: WideString dispid 23;
    property stretchToFit: WordBool dispid 24;
    property windowlessVideo: WordBool dispid 25;
    procedure close; dispid 3;
    property URL: WideString dispid 1;
    property openState: WMPOpenState readonly dispid 2;
    property playState: WMPPlayState readonly dispid 10;
    property controls: IWMPControls readonly dispid 4;
    property settings: IWMPSettings readonly dispid 5;
    property currentMedia: IWMPMedia dispid 6;
    property mediaCollection: IWMPMediaCollection readonly dispid 8;
    property playlistCollection: IWMPPlaylistCollection readonly dispid 9;
    property versionInfo: WideString readonly dispid 11;
    procedure launchURL(const bstrURL: WideString); dispid 12;
    property network: IWMPNetwork readonly dispid 7;
    property currentPlaylist: IWMPPlaylist dispid 13;
    property cdromCollection: IWMPCdromCollection readonly dispid 14;
    property closedCaption: IWMPClosedCaption readonly dispid 15;
    property isOnline: WordBool readonly dispid 16;
    property Error: IWMPError readonly dispid 17;
    property status: WideString readonly dispid 18;
  end;

// *********************************************************************//
// Interface: IWMPPlayer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BF52A4F-394A-11D3-B153-00C04F79FAA6}
// *********************************************************************//
  IWMPPlayer = interface(IWMPCore)
    ['{6BF52A4F-394A-11D3-B153-00C04F79FAA6}']
    function Get_enabled: WordBool; safecall;
    procedure Set_enabled(pbEnabled: WordBool); safecall;
    function Get_fullScreen: WordBool; safecall;
    procedure Set_fullScreen(pbFullScreen: WordBool); safecall;
    function Get_enableContextMenu: WordBool; safecall;
    procedure Set_enableContextMenu(pbEnableContextMenu: WordBool); safecall;
    procedure Set_uiMode(const pbstrMode: WideString); safecall;
    function Get_uiMode: WideString; safecall;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property enableContextMenu: WordBool read Get_enableContextMenu write Set_enableContextMenu;
    property uiMode: WideString read Get_uiMode write Set_uiMode;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlayerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BF52A4F-394A-11D3-B153-00C04F79FAA6}
// *********************************************************************//
  IWMPPlayerDisp = dispinterface
    ['{6BF52A4F-394A-11D3-B153-00C04F79FAA6}']
    property enabled: WordBool dispid 19;
    property fullScreen: WordBool dispid 21;
    property enableContextMenu: WordBool dispid 22;
    property uiMode: WideString dispid 23;
    procedure close; dispid 3;
    property URL: WideString dispid 1;
    property openState: WMPOpenState readonly dispid 2;
    property playState: WMPPlayState readonly dispid 10;
    property controls: IWMPControls readonly dispid 4;
    property settings: IWMPSettings readonly dispid 5;
    property currentMedia: IWMPMedia dispid 6;
    property mediaCollection: IWMPMediaCollection readonly dispid 8;
    property playlistCollection: IWMPPlaylistCollection readonly dispid 9;
    property versionInfo: WideString readonly dispid 11;
    procedure launchURL(const bstrURL: WideString); dispid 12;
    property network: IWMPNetwork readonly dispid 7;
    property currentPlaylist: IWMPPlaylist dispid 13;
    property cdromCollection: IWMPCdromCollection readonly dispid 14;
    property closedCaption: IWMPClosedCaption readonly dispid 15;
    property isOnline: WordBool readonly dispid 16;
    property Error: IWMPError readonly dispid 17;
    property status: WideString readonly dispid 18;
  end;

// *********************************************************************//
// Interface: IWMPErrorItem2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F75CCEC0-C67C-475C-931E-8719870BEE7D}
// *********************************************************************//
  IWMPErrorItem2 = interface(IWMPErrorItem)
    ['{F75CCEC0-C67C-475C-931E-8719870BEE7D}']
    function Get_condition: Integer; safecall;
    property condition: Integer read Get_condition;
  end;

// *********************************************************************//
// DispIntf:  IWMPErrorItem2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F75CCEC0-C67C-475C-931E-8719870BEE7D}
// *********************************************************************//
  IWMPErrorItem2Disp = dispinterface
    ['{F75CCEC0-C67C-475C-931E-8719870BEE7D}']
    property condition: Integer readonly dispid 906;
    property errorCode: Integer readonly dispid 901;
    property errorDescription: WideString readonly dispid 902;
    property errorContext: OleVariant readonly dispid 903;
    property remedy: Integer readonly dispid 904;
    property customUrl: WideString readonly dispid 905;
  end;

// *********************************************************************//
// Interface: IWMPControls2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6F030D25-0890-480F-9775-1F7E40AB5B8E}
// *********************************************************************//
  IWMPControls2 = interface(IWMPControls)
    ['{6F030D25-0890-480F-9775-1F7E40AB5B8E}']
    procedure step(lStep: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPControls2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6F030D25-0890-480F-9775-1F7E40AB5B8E}
// *********************************************************************//
  IWMPControls2Disp = dispinterface
    ['{6F030D25-0890-480F-9775-1F7E40AB5B8E}']
    procedure step(lStep: Integer); dispid 64;
    property isAvailable[const bstrItem: WideString]: WordBool readonly dispid 62;
    procedure play; dispid 51;
    procedure stop; dispid 52;
    procedure pause; dispid 53;
    procedure fastForward; dispid 54;
    procedure fastReverse; dispid 55;
    property currentPosition: Double dispid 56;
    property currentPositionString: WideString readonly dispid 57;
    procedure next; dispid 58;
    procedure previous; dispid 59;
    property currentItem: IWMPMedia dispid 60;
    property currentMarker: Integer dispid 61;
    procedure playItem(const pIWMPMedia: IWMPMedia); dispid 63;
  end;

// *********************************************************************//
// Interface: IWMPMedia2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB7C88BB-143E-4EA4-ACC3-E4350B2106C3}
// *********************************************************************//
  IWMPMedia2 = interface(IWMPMedia)
    ['{AB7C88BB-143E-4EA4-ACC3-E4350B2106C3}']
    function Get_Error: IWMPErrorItem; safecall;
    property Error: IWMPErrorItem read Get_Error;
  end;

// *********************************************************************//
// DispIntf:  IWMPMedia2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB7C88BB-143E-4EA4-ACC3-E4350B2106C3}
// *********************************************************************//
  IWMPMedia2Disp = dispinterface
    ['{AB7C88BB-143E-4EA4-ACC3-E4350B2106C3}']
    property Error: IWMPErrorItem readonly dispid 768;
    property isIdentical[const pIWMPMedia: IWMPMedia]: WordBool readonly dispid 763;
    property sourceURL: WideString readonly dispid 751;
    property name: WideString dispid 764;
    property imageSourceWidth: Integer readonly dispid 752;
    property imageSourceHeight: Integer readonly dispid 753;
    property markerCount: Integer readonly dispid 754;
    function getMarkerTime(MarkerNum: Integer): Double; dispid 755;
    function getMarkerName(MarkerNum: Integer): WideString; dispid 756;
    property duration: Double readonly dispid 757;
    property durationString: WideString readonly dispid 758;
    property attributeCount: Integer readonly dispid 759;
    function getAttributeName(lIndex: Integer): WideString; dispid 760;
    function getItemInfo(const bstrItemName: WideString): WideString; dispid 761;
    procedure setItemInfo(const bstrItemName: WideString; const bstrVal: WideString); dispid 762;
    function getItemInfoByAtom(lAtom: Integer): WideString; dispid 765;
    function isMemberOf(const pPlaylist: IWMPPlaylist): WordBool; dispid 766;
    function isReadOnlyItem(const bstrItemName: WideString): WordBool; dispid 767;
  end;

// *********************************************************************//
// Interface: IWMPMedia3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F118EFC7-F03A-4FB4-99C9-1C02A5C1065B}
// *********************************************************************//
  IWMPMedia3 = interface(IWMPMedia2)
    ['{F118EFC7-F03A-4FB4-99C9-1C02A5C1065B}']
    function getAttributeCountByType(const bstrType: WideString; const bstrLanguage: WideString): Integer; safecall;
    function getItemInfoByType(const bstrType: WideString; const bstrLanguage: WideString; 
                               lIndex: Integer): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPMedia3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F118EFC7-F03A-4FB4-99C9-1C02A5C1065B}
// *********************************************************************//
  IWMPMedia3Disp = dispinterface
    ['{F118EFC7-F03A-4FB4-99C9-1C02A5C1065B}']
    function getAttributeCountByType(const bstrType: WideString; const bstrLanguage: WideString): Integer; dispid 769;
    function getItemInfoByType(const bstrType: WideString; const bstrLanguage: WideString; 
                               lIndex: Integer): OleVariant; dispid 770;
    property Error: IWMPErrorItem readonly dispid 768;
    property isIdentical[const pIWMPMedia: IWMPMedia]: WordBool readonly dispid 763;
    property sourceURL: WideString readonly dispid 751;
    property name: WideString dispid 764;
    property imageSourceWidth: Integer readonly dispid 752;
    property imageSourceHeight: Integer readonly dispid 753;
    property markerCount: Integer readonly dispid 754;
    function getMarkerTime(MarkerNum: Integer): Double; dispid 755;
    function getMarkerName(MarkerNum: Integer): WideString; dispid 756;
    property duration: Double readonly dispid 757;
    property durationString: WideString readonly dispid 758;
    property attributeCount: Integer readonly dispid 759;
    function getAttributeName(lIndex: Integer): WideString; dispid 760;
    function getItemInfo(const bstrItemName: WideString): WideString; dispid 761;
    procedure setItemInfo(const bstrItemName: WideString; const bstrVal: WideString); dispid 762;
    function getItemInfoByAtom(lAtom: Integer): WideString; dispid 765;
    function isMemberOf(const pPlaylist: IWMPPlaylist): WordBool; dispid 766;
    function isReadOnlyItem(const bstrItemName: WideString): WordBool; dispid 767;
  end;

// *********************************************************************//
// Interface: IWMPMetadataPicture
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C29BBE0-F87D-4C45-AA28-A70F0230FFA9}
// *********************************************************************//
  IWMPMetadataPicture = interface(IDispatch)
    ['{5C29BBE0-F87D-4C45-AA28-A70F0230FFA9}']
    function Get_mimeType: WideString; safecall;
    function Get_pictureType: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_URL: WideString; safecall;
    property mimeType: WideString read Get_mimeType;
    property pictureType: WideString read Get_pictureType;
    property Description: WideString read Get_Description;
    property URL: WideString read Get_URL;
  end;

// *********************************************************************//
// DispIntf:  IWMPMetadataPictureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C29BBE0-F87D-4C45-AA28-A70F0230FFA9}
// *********************************************************************//
  IWMPMetadataPictureDisp = dispinterface
    ['{5C29BBE0-F87D-4C45-AA28-A70F0230FFA9}']
    property mimeType: WideString readonly dispid 1051;
    property pictureType: WideString readonly dispid 1052;
    property Description: WideString readonly dispid 1053;
    property URL: WideString readonly dispid 1054;
  end;

// *********************************************************************//
// Interface: IWMPMetadataText
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {769A72DB-13D2-45E2-9C48-53CA9D5B7450}
// *********************************************************************//
  IWMPMetadataText = interface(IDispatch)
    ['{769A72DB-13D2-45E2-9C48-53CA9D5B7450}']
    function Get_Description: WideString; safecall;
    function Get_text: WideString; safecall;
    property Description: WideString read Get_Description;
    property text: WideString read Get_text;
  end;

// *********************************************************************//
// DispIntf:  IWMPMetadataTextDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {769A72DB-13D2-45E2-9C48-53CA9D5B7450}
// *********************************************************************//
  IWMPMetadataTextDisp = dispinterface
    ['{769A72DB-13D2-45E2-9C48-53CA9D5B7450}']
    property Description: WideString readonly dispid 1056;
    property text: WideString readonly dispid 1055;
  end;

// *********************************************************************//
// Interface: IWMPSettings2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FDA937A4-EECE-4DA5-A0B6-39BF89ADE2C2}
// *********************************************************************//
  IWMPSettings2 = interface(IWMPSettings)
    ['{FDA937A4-EECE-4DA5-A0B6-39BF89ADE2C2}']
    function Get_defaultAudioLanguage: Integer; safecall;
    function Get_mediaAccessRights: WideString; safecall;
    function requestMediaAccessRights(const bstrDesiredAccess: WideString): WordBool; safecall;
    property defaultAudioLanguage: Integer read Get_defaultAudioLanguage;
    property mediaAccessRights: WideString read Get_mediaAccessRights;
  end;

// *********************************************************************//
// DispIntf:  IWMPSettings2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FDA937A4-EECE-4DA5-A0B6-39BF89ADE2C2}
// *********************************************************************//
  IWMPSettings2Disp = dispinterface
    ['{FDA937A4-EECE-4DA5-A0B6-39BF89ADE2C2}']
    property defaultAudioLanguage: Integer readonly dispid 114;
    property mediaAccessRights: WideString readonly dispid 115;
    function requestMediaAccessRights(const bstrDesiredAccess: WideString): WordBool; dispid 116;
    property isAvailable[const bstrItem: WideString]: WordBool readonly dispid 113;
    property autoStart: WordBool dispid 101;
    property baseURL: WideString dispid 108;
    property defaultFrame: WideString dispid 109;
    property invokeURLs: WordBool dispid 103;
    property mute: WordBool dispid 104;
    property playCount: Integer dispid 105;
    property rate: Double dispid 106;
    property balance: Integer dispid 102;
    property volume: Integer dispid 107;
    function getMode(const bstrMode: WideString): WordBool; dispid 110;
    procedure setMode(const bstrMode: WideString; varfMode: WordBool); dispid 111;
    property enableErrorDialogs: WordBool dispid 112;
  end;

// *********************************************************************//
// Interface: IWMPControls3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1D1110E-D545-476A-9A78-AC3E4CB1E6BD}
// *********************************************************************//
  IWMPControls3 = interface(IWMPControls2)
    ['{A1D1110E-D545-476A-9A78-AC3E4CB1E6BD}']
    function Get_audioLanguageCount: Integer; safecall;
    function getAudioLanguageID(lIndex: Integer): Integer; safecall;
    function getAudioLanguageDescription(lIndex: Integer): WideString; safecall;
    function Get_currentAudioLanguage: Integer; safecall;
    procedure Set_currentAudioLanguage(plLangID: Integer); safecall;
    function Get_currentAudioLanguageIndex: Integer; safecall;
    procedure Set_currentAudioLanguageIndex(plIndex: Integer); safecall;
    function getLanguageName(lLangID: Integer): WideString; safecall;
    function Get_currentPositionTimecode: WideString; safecall;
    procedure Set_currentPositionTimecode(const bstrTimecode: WideString); safecall;
    property audioLanguageCount: Integer read Get_audioLanguageCount;
    property currentAudioLanguage: Integer read Get_currentAudioLanguage write Set_currentAudioLanguage;
    property currentAudioLanguageIndex: Integer read Get_currentAudioLanguageIndex write Set_currentAudioLanguageIndex;
    property currentPositionTimecode: WideString read Get_currentPositionTimecode write Set_currentPositionTimecode;
  end;

// *********************************************************************//
// DispIntf:  IWMPControls3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1D1110E-D545-476A-9A78-AC3E4CB1E6BD}
// *********************************************************************//
  IWMPControls3Disp = dispinterface
    ['{A1D1110E-D545-476A-9A78-AC3E4CB1E6BD}']
    property audioLanguageCount: Integer readonly dispid 65;
    function getAudioLanguageID(lIndex: Integer): Integer; dispid 66;
    function getAudioLanguageDescription(lIndex: Integer): WideString; dispid 67;
    property currentAudioLanguage: Integer dispid 68;
    property currentAudioLanguageIndex: Integer dispid 69;
    function getLanguageName(lLangID: Integer): WideString; dispid 70;
    property currentPositionTimecode: WideString dispid 71;
    procedure step(lStep: Integer); dispid 64;
    property isAvailable[const bstrItem: WideString]: WordBool readonly dispid 62;
    procedure play; dispid 51;
    procedure stop; dispid 52;
    procedure pause; dispid 53;
    procedure fastForward; dispid 54;
    procedure fastReverse; dispid 55;
    property currentPosition: Double dispid 56;
    property currentPositionString: WideString readonly dispid 57;
    procedure next; dispid 58;
    procedure previous; dispid 59;
    property currentItem: IWMPMedia dispid 60;
    property currentMarker: Integer dispid 61;
    procedure playItem(const pIWMPMedia: IWMPMedia); dispid 63;
  end;

// *********************************************************************//
// Interface: IWMPClosedCaption2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {350BA78B-6BC8-4113-A5F5-312056934EB6}
// *********************************************************************//
  IWMPClosedCaption2 = interface(IWMPClosedCaption)
    ['{350BA78B-6BC8-4113-A5F5-312056934EB6}']
    function Get_SAMILangCount: Integer; safecall;
    function getSAMILangName(nIndex: Integer): WideString; safecall;
    function getSAMILangID(nIndex: Integer): Integer; safecall;
    function Get_SAMIStyleCount: Integer; safecall;
    function getSAMIStyleName(nIndex: Integer): WideString; safecall;
    property SAMILangCount: Integer read Get_SAMILangCount;
    property SAMIStyleCount: Integer read Get_SAMIStyleCount;
  end;

// *********************************************************************//
// DispIntf:  IWMPClosedCaption2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {350BA78B-6BC8-4113-A5F5-312056934EB6}
// *********************************************************************//
  IWMPClosedCaption2Disp = dispinterface
    ['{350BA78B-6BC8-4113-A5F5-312056934EB6}']
    property SAMILangCount: Integer readonly dispid 955;
    function getSAMILangName(nIndex: Integer): WideString; dispid 956;
    function getSAMILangID(nIndex: Integer): Integer; dispid 957;
    property SAMIStyleCount: Integer readonly dispid 958;
    function getSAMIStyleName(nIndex: Integer): WideString; dispid 959;
    property SAMIStyle: WideString dispid 951;
    property SAMILang: WideString dispid 952;
    property SAMIFileName: WideString dispid 953;
    property captioningId: WideString dispid 954;
  end;

// *********************************************************************//
// Interface: IWMPMediaCollection2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8BA957F5-FD8C-4791-B82D-F840401EE474}
// *********************************************************************//
  IWMPMediaCollection2 = interface(IWMPMediaCollection)
    ['{8BA957F5-FD8C-4791-B82D-F840401EE474}']
    function createQuery: IWMPQuery; safecall;
    function getPlaylistByQuery(const pQuery: IWMPQuery; const bstrMediaType: WideString; 
                                const bstrSortAttribute: WideString; fSortAscending: WordBool): IWMPPlaylist; safecall;
    function getStringCollectionByQuery(const bstrAttribute: WideString; const pQuery: IWMPQuery; 
                                        const bstrMediaType: WideString; 
                                        const bstrSortAttribute: WideString; 
                                        fSortAscending: WordBool): IWMPStringCollection; safecall;
    function getByAttributeAndMediaType(const bstrAttribute: WideString; 
                                        const bstrValue: WideString; const bstrMediaType: WideString): IWMPPlaylist; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPMediaCollection2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8BA957F5-FD8C-4791-B82D-F840401EE474}
// *********************************************************************//
  IWMPMediaCollection2Disp = dispinterface
    ['{8BA957F5-FD8C-4791-B82D-F840401EE474}']
    function createQuery: IWMPQuery; dispid 1401;
    function getPlaylistByQuery(const pQuery: IWMPQuery; const bstrMediaType: WideString; 
                                const bstrSortAttribute: WideString; fSortAscending: WordBool): IWMPPlaylist; dispid 1402;
    function getStringCollectionByQuery(const bstrAttribute: WideString; const pQuery: IWMPQuery; 
                                        const bstrMediaType: WideString; 
                                        const bstrSortAttribute: WideString; 
                                        fSortAscending: WordBool): IWMPStringCollection; dispid 1403;
    function getByAttributeAndMediaType(const bstrAttribute: WideString; 
                                        const bstrValue: WideString; const bstrMediaType: WideString): IWMPPlaylist; dispid 1404;
    function add(const bstrURL: WideString): IWMPMedia; dispid 452;
    function getAll: IWMPPlaylist; dispid 453;
    function getByName(const bstrName: WideString): IWMPPlaylist; dispid 454;
    function getByGenre(const bstrGenre: WideString): IWMPPlaylist; dispid 455;
    function getByAuthor(const bstrAuthor: WideString): IWMPPlaylist; dispid 456;
    function getByAlbum(const bstrAlbum: WideString): IWMPPlaylist; dispid 457;
    function getByAttribute(const bstrAttribute: WideString; const bstrValue: WideString): IWMPPlaylist; dispid 458;
    procedure remove(const pItem: IWMPMedia; varfDeleteFile: WordBool); dispid 459;
    function getAttributeStringCollection(const bstrAttribute: WideString; 
                                          const bstrMediaType: WideString): IWMPStringCollection; dispid 461;
    function getMediaAtom(const bstrItemName: WideString): Integer; dispid 470;
    procedure setDeleted(const pItem: IWMPMedia; varfIsDeleted: WordBool); dispid 471;
    function isDeleted(const pItem: IWMPMedia): WordBool; dispid 472;
  end;

// *********************************************************************//
// Interface: IWMPStringCollection2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46AD648D-53F1-4A74-92E2-2A1B68D63FD4}
// *********************************************************************//
  IWMPStringCollection2 = interface(IWMPStringCollection)
    ['{46AD648D-53F1-4A74-92E2-2A1B68D63FD4}']
    function isIdentical(const pIWMPStringCollection2: IWMPStringCollection2): WordBool; safecall;
    function getItemInfo(lCollectionIndex: Integer; const bstrItemName: WideString): WideString; safecall;
    function getAttributeCountByType(lCollectionIndex: Integer; const bstrType: WideString; 
                                     const bstrLanguage: WideString): Integer; safecall;
    function getItemInfoByType(lCollectionIndex: Integer; const bstrType: WideString; 
                               const bstrLanguage: WideString; lAttributeIndex: Integer): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPStringCollection2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46AD648D-53F1-4A74-92E2-2A1B68D63FD4}
// *********************************************************************//
  IWMPStringCollection2Disp = dispinterface
    ['{46AD648D-53F1-4A74-92E2-2A1B68D63FD4}']
    function isIdentical(const pIWMPStringCollection2: IWMPStringCollection2): WordBool; dispid 1451;
    function getItemInfo(lCollectionIndex: Integer; const bstrItemName: WideString): WideString; dispid 1452;
    function getAttributeCountByType(lCollectionIndex: Integer; const bstrType: WideString; 
                                     const bstrLanguage: WideString): Integer; dispid 1453;
    function getItemInfoByType(lCollectionIndex: Integer; const bstrType: WideString; 
                               const bstrLanguage: WideString; lAttributeIndex: Integer): OleVariant; dispid 1454;
    property count: Integer readonly dispid 401;
    function Item(lIndex: Integer): WideString; dispid 402;
  end;

// *********************************************************************//
// Interface: IWMPQuery
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A00918F3-A6B0-4BFB-9189-FD834C7BC5A5}
// *********************************************************************//
  IWMPQuery = interface(IDispatch)
    ['{A00918F3-A6B0-4BFB-9189-FD834C7BC5A5}']
    procedure addCondition(const bstrAttribute: WideString; const bstrOperator: WideString; 
                           const bstrValue: WideString); safecall;
    procedure beginNextGroup; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPQueryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A00918F3-A6B0-4BFB-9189-FD834C7BC5A5}
// *********************************************************************//
  IWMPQueryDisp = dispinterface
    ['{A00918F3-A6B0-4BFB-9189-FD834C7BC5A5}']
    procedure addCondition(const bstrAttribute: WideString; const bstrOperator: WideString; 
                           const bstrValue: WideString); dispid 1351;
    procedure beginNextGroup; dispid 1352;
  end;

// *********************************************************************//
// Interface: IWMPPlayerServices
// Flags:     (0)
// GUID:      {1D01FBDB-ADE2-4C8D-9842-C190B95C3306}
// *********************************************************************//
  IWMPPlayerServices = interface(IUnknown)
    ['{1D01FBDB-ADE2-4C8D-9842-C190B95C3306}']
    function activateUIPlugin(const bstrPlugin: WideString): HResult; stdcall;
    function setTaskPane(const bstrTaskPane: WideString): HResult; stdcall;
    function setTaskPaneURL(const bstrTaskPane: WideString; const bstrURL: WideString; 
                            const bstrFriendlyName: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPPlayerServices2
// Flags:     (0)
// GUID:      {1BB1592F-F040-418A-9F71-17C7512B4D70}
// *********************************************************************//
  IWMPPlayerServices2 = interface(IWMPPlayerServices)
    ['{1BB1592F-F040-418A-9F71-17C7512B4D70}']
    function setBackgroundProcessingPriority(const bstrPriority: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPRemoteMediaServices
// Flags:     (0)
// GUID:      {CBB92747-741F-44FE-AB5B-F1A48F3B2A59}
// *********************************************************************//
  IWMPRemoteMediaServices = interface(IUnknown)
    ['{CBB92747-741F-44FE-AB5B-F1A48F3B2A59}']
    function GetServiceType(out pbstrType: WideString): HResult; stdcall;
    function GetApplicationName(out pbstrName: WideString): HResult; stdcall;
    function GetScriptableObject(out pbstrName: WideString; out ppDispatch: IDispatch): HResult; stdcall;
    function GetCustomUIMode(out pbstrFile: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPSyncServices
// Flags:     (256) OleAutomation
// GUID:      {8B5050FF-E0A4-4808-B3A8-893A9E1ED894}
// *********************************************************************//
  IWMPSyncServices = interface(IUnknown)
    ['{8B5050FF-E0A4-4808-B3A8-893A9E1ED894}']
    function Get_deviceCount(out plCount: Integer): HResult; stdcall;
    function getDevice(lIndex: Integer; out ppDevice: IWMPSyncDevice): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPLibraryServices
// Flags:     (256) OleAutomation
// GUID:      {39C2F8D5-1CF2-4D5E-AE09-D73492CF9EAA}
// *********************************************************************//
  IWMPLibraryServices = interface(IUnknown)
    ['{39C2F8D5-1CF2-4D5E-AE09-D73492CF9EAA}']
    function getCountByType(wmplt: WMPLibraryType; out plCount: Integer): HResult; stdcall;
    function getLibraryByType(wmplt: WMPLibraryType; lIndex: Integer; out ppIWMPLibrary: IWMPLibrary): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPLibrarySharingServices
// Flags:     (256) OleAutomation
// GUID:      {82CBA86B-9F04-474B-A365-D6DD1466E541}
// *********************************************************************//
  IWMPLibrarySharingServices = interface(IUnknown)
    ['{82CBA86B-9F04-474B-A365-D6DD1466E541}']
    function isLibraryShared(out pvbShared: WordBool): HResult; stdcall;
    function isLibrarySharingEnabled(out pvbEnabled: WordBool): HResult; stdcall;
    function showLibrarySharing: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPFolderMonitorServices
// Flags:     (256) OleAutomation
// GUID:      {788C8743-E57F-439D-A468-5BC77F2E59C6}
// *********************************************************************//
  IWMPFolderMonitorServices = interface(IUnknown)
    ['{788C8743-E57F-439D-A468-5BC77F2E59C6}']
    function Get_count(out plCount: Integer): HResult; stdcall;
    function Item(lIndex: Integer; out pbstrFolder: WideString): HResult; stdcall;
    function add(const bstrFolder: WideString): HResult; stdcall;
    function remove(lIndex: Integer): HResult; stdcall;
    function Get_scanState(out pwmpfss: WMPFolderScanState): HResult; stdcall;
    function Get_currentFolder(out pbstrFolder: WideString): HResult; stdcall;
    function Get_scannedFilesCount(out plCount: Integer): HResult; stdcall;
    function Get_addedFilesCount(out plCount: Integer): HResult; stdcall;
    function Get_updateProgress(out plProgress: Integer): HResult; stdcall;
    function startScan: HResult; stdcall;
    function stopScan: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPSyncDevice2
// Flags:     (256) OleAutomation
// GUID:      {88AFB4B2-140A-44D2-91E6-4543DA467CD1}
// *********************************************************************//
  IWMPSyncDevice2 = interface(IWMPSyncDevice)
    ['{88AFB4B2-140A-44D2-91E6-4543DA467CD1}']
    function setItemInfo(const bstrItemName: WideString; const bstrVal: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IWMPPlaylistCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F9CFD92-8CAD-11D3-9A7E-00C04F8EFB70}
// *********************************************************************//
  IWMPPlaylistCtrl = interface(IDispatch)
    ['{5F9CFD92-8CAD-11D3-9A7E-00C04F8EFB70}']
    function Get_Playlist: IWMPPlaylist; safecall;
    procedure Set_Playlist(const ppdispPlaylist: IWMPPlaylist); safecall;
    function Get_columns: WideString; safecall;
    procedure Set_columns(const pbstrColumns: WideString); safecall;
    function Get_columnCount: Integer; safecall;
    function Get_columnOrder: WideString; safecall;
    procedure Set_columnOrder(const pbstrColumnOrder: WideString); safecall;
    function Get_columnsVisible: WordBool; safecall;
    procedure Set_columnsVisible(pVal: WordBool); safecall;
    function Get_dropDownVisible: WordBool; safecall;
    procedure Set_dropDownVisible(pVal: WordBool); safecall;
    function Get_playlistItemsVisible: WordBool; safecall;
    procedure Set_playlistItemsVisible(pVal: WordBool); safecall;
    function Get_checkboxesVisible: WordBool; safecall;
    procedure Set_checkboxesVisible(pVal: WordBool); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pbstrColor: WideString); safecall;
    function Get_foregroundColor: WideString; safecall;
    procedure Set_foregroundColor(const pbstrColor: WideString); safecall;
    function Get_disabledItemColor: WideString; safecall;
    procedure Set_disabledItemColor(const pbstrColor: WideString); safecall;
    function Get_itemPlayingColor: WideString; safecall;
    procedure Set_itemPlayingColor(const pbstrColor: WideString); safecall;
    function Get_itemPlayingBackgroundColor: WideString; safecall;
    procedure Set_itemPlayingBackgroundColor(const pbstrBackgroundColor: WideString); safecall;
    function Get_backgroundImage: WideString; safecall;
    procedure Set_backgroundImage(const pbstrImage: WideString); safecall;
    function Get_allowItemEditing: WordBool; safecall;
    procedure Set_allowItemEditing(pVal: WordBool); safecall;
    function Get_allowColumnSorting: WordBool; safecall;
    procedure Set_allowColumnSorting(pVal: WordBool); safecall;
    function Get_dropDownList: WideString; safecall;
    procedure Set_dropDownList(const pbstrList: WideString); safecall;
    function Get_dropDownToolTip: WideString; safecall;
    procedure Set_dropDownToolTip(const pbstrToolTip: WideString); safecall;
    function Get_copying: WordBool; safecall;
    procedure Set_copying(pVal: WordBool); safecall;
    procedure copy; safecall;
    procedure abortCopy; safecall;
    procedure deleteSelected; safecall;
    procedure deleteSelectedFromLibrary; safecall;
    procedure moveSelectedUp; safecall;
    procedure moveSelectedDown; safecall;
    procedure addSelectedToPlaylist(const pdispPlaylist: IWMPPlaylist); safecall;
    function getNextSelectedItem(nStartIndex: Integer): Integer; safecall;
    function getNextCheckedItem(nStartIndex: Integer): Integer; safecall;
    procedure setSelectedState(nIndex: Integer; vbSelected: WordBool); safecall;
    procedure setCheckedState(nIndex: Integer; vbChecked: WordBool); safecall;
    procedure sortColumn(nIndex: Integer); safecall;
    procedure setColumnResizeMode(nIndex: Integer; const newMode: WideString); safecall;
    procedure setColumnWidth(nIndex: Integer; nWidth: Integer); safecall;
    function Get_itemErrorColor: WideString; safecall;
    procedure Set_itemErrorColor(const pbstrColor: WideString); safecall;
    function Get_itemCount: Integer; safecall;
    function Get_itemMedia(nIndex: Integer): IWMPMedia; safecall;
    function Get_itemPlaylist(nIndex: Integer): IWMPPlaylist; safecall;
    function getNextSelectedItem2(nStartIndex: Integer): Integer; safecall;
    function getNextCheckedItem2(nStartIndex: Integer): Integer; safecall;
    procedure setSelectedState2(nIndex: Integer; vbSelected: WordBool); safecall;
    procedure setCheckedState2(nIndex: Integer; vbChecked: WordBool); safecall;
    function Get_leftStatus: WideString; safecall;
    procedure Set_leftStatus(const pbstrStatus: WideString); safecall;
    function Get_rightStatus: WideString; safecall;
    procedure Set_rightStatus(const pbstrStatus: WideString); safecall;
    function Get_editButtonVisible: WordBool; safecall;
    procedure Set_editButtonVisible(pVal: WordBool); safecall;
    function Get_dropDownImage: WideString; safecall;
    procedure Set_dropDownImage(const pbstrImage: WideString); safecall;
    function Get_dropDownBackgroundImage: WideString; safecall;
    procedure Set_dropDownBackgroundImage(const pbstrImage: WideString); safecall;
    function Get_hueShift: Single; safecall;
    procedure Set_hueShift(pVal: Single); safecall;
    function Get_saturation: Single; safecall;
    procedure Set_saturation(pVal: Single); safecall;
    function Get_statusColor: WideString; safecall;
    procedure Set_statusColor(const pbstrColor: WideString); safecall;
    function Get_toolbarVisible: WordBool; safecall;
    procedure Set_toolbarVisible(pVal: WordBool); safecall;
    function Get_itemSelectedColor: WideString; safecall;
    procedure Set_itemSelectedColor(const pbstrColor: WideString); safecall;
    function Get_itemSelectedFocusLostColor: WideString; safecall;
    procedure Set_itemSelectedFocusLostColor(const pbstrFocusLostColor: WideString); safecall;
    function Get_itemSelectedBackgroundColor: WideString; safecall;
    procedure Set_itemSelectedBackgroundColor(const pbstrColor: WideString); safecall;
    function Get_itemSelectedBackgroundFocusLostColor: WideString; safecall;
    procedure Set_itemSelectedBackgroundFocusLostColor(const pbstrFocusLostColor: WideString); safecall;
    function Get_backgroundSplitColor: WideString; safecall;
    procedure Set_backgroundSplitColor(const pbstrColor: WideString); safecall;
    function Get_statusTextColor: WideString; safecall;
    procedure Set_statusTextColor(const pbstrColor: WideString); safecall;
    property Playlist: IWMPPlaylist read Get_Playlist write Set_Playlist;
    property columns: WideString read Get_columns write Set_columns;
    property columnCount: Integer read Get_columnCount;
    property columnOrder: WideString read Get_columnOrder write Set_columnOrder;
    property columnsVisible: WordBool read Get_columnsVisible write Set_columnsVisible;
    property dropDownVisible: WordBool read Get_dropDownVisible write Set_dropDownVisible;
    property playlistItemsVisible: WordBool read Get_playlistItemsVisible write Set_playlistItemsVisible;
    property checkboxesVisible: WordBool read Get_checkboxesVisible write Set_checkboxesVisible;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property disabledItemColor: WideString read Get_disabledItemColor write Set_disabledItemColor;
    property itemPlayingColor: WideString read Get_itemPlayingColor write Set_itemPlayingColor;
    property itemPlayingBackgroundColor: WideString read Get_itemPlayingBackgroundColor write Set_itemPlayingBackgroundColor;
    property backgroundImage: WideString read Get_backgroundImage write Set_backgroundImage;
    property allowItemEditing: WordBool read Get_allowItemEditing write Set_allowItemEditing;
    property allowColumnSorting: WordBool read Get_allowColumnSorting write Set_allowColumnSorting;
    property dropDownList: WideString read Get_dropDownList write Set_dropDownList;
    property dropDownToolTip: WideString read Get_dropDownToolTip write Set_dropDownToolTip;
    property copying: WordBool read Get_copying write Set_copying;
    property itemErrorColor: WideString read Get_itemErrorColor write Set_itemErrorColor;
    property itemCount: Integer read Get_itemCount;
    property itemMedia[nIndex: Integer]: IWMPMedia read Get_itemMedia;
    property itemPlaylist[nIndex: Integer]: IWMPPlaylist read Get_itemPlaylist;
    property leftStatus: WideString read Get_leftStatus write Set_leftStatus;
    property rightStatus: WideString read Get_rightStatus write Set_rightStatus;
    property editButtonVisible: WordBool read Get_editButtonVisible write Set_editButtonVisible;
    property dropDownImage: WideString read Get_dropDownImage write Set_dropDownImage;
    property dropDownBackgroundImage: WideString read Get_dropDownBackgroundImage write Set_dropDownBackgroundImage;
    property hueShift: Single read Get_hueShift write Set_hueShift;
    property saturation: Single read Get_saturation write Set_saturation;
    property statusColor: WideString read Get_statusColor write Set_statusColor;
    property toolbarVisible: WordBool read Get_toolbarVisible write Set_toolbarVisible;
    property itemSelectedColor: WideString read Get_itemSelectedColor write Set_itemSelectedColor;
    property itemSelectedFocusLostColor: WideString read Get_itemSelectedFocusLostColor write Set_itemSelectedFocusLostColor;
    property itemSelectedBackgroundColor: WideString read Get_itemSelectedBackgroundColor write Set_itemSelectedBackgroundColor;
    property itemSelectedBackgroundFocusLostColor: WideString read Get_itemSelectedBackgroundFocusLostColor write Set_itemSelectedBackgroundFocusLostColor;
    property backgroundSplitColor: WideString read Get_backgroundSplitColor write Set_backgroundSplitColor;
    property statusTextColor: WideString read Get_statusTextColor write Set_statusTextColor;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlaylistCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F9CFD92-8CAD-11D3-9A7E-00C04F8EFB70}
// *********************************************************************//
  IWMPPlaylistCtrlDisp = dispinterface
    ['{5F9CFD92-8CAD-11D3-9A7E-00C04F8EFB70}']
    property Playlist: IWMPPlaylist dispid 5601;
    property columns: WideString dispid 5602;
    property columnCount: Integer readonly dispid 5603;
    property columnOrder: WideString dispid 5604;
    property columnsVisible: WordBool dispid 5605;
    property dropDownVisible: WordBool dispid 5607;
    property playlistItemsVisible: WordBool dispid 5608;
    property checkboxesVisible: WordBool dispid 5609;
    property backgroundColor: WideString dispid 5612;
    property foregroundColor: WideString dispid 5613;
    property disabledItemColor: WideString dispid 5614;
    property itemPlayingColor: WideString dispid 5615;
    property itemPlayingBackgroundColor: WideString dispid 5616;
    property backgroundImage: WideString dispid 5617;
    property allowItemEditing: WordBool dispid 5618;
    property allowColumnSorting: WordBool dispid 5619;
    property dropDownList: WideString dispid 5620;
    property dropDownToolTip: WideString dispid 5621;
    property copying: WordBool dispid 5622;
    procedure copy; dispid 5623;
    procedure abortCopy; dispid 5624;
    procedure deleteSelected; dispid 5625;
    procedure deleteSelectedFromLibrary; dispid 5626;
    procedure moveSelectedUp; dispid 5628;
    procedure moveSelectedDown; dispid 5629;
    procedure addSelectedToPlaylist(const pdispPlaylist: IWMPPlaylist); dispid 5630;
    function getNextSelectedItem(nStartIndex: Integer): Integer; dispid 5631;
    function getNextCheckedItem(nStartIndex: Integer): Integer; dispid 5632;
    procedure setSelectedState(nIndex: Integer; vbSelected: WordBool); dispid 5633;
    procedure setCheckedState(nIndex: Integer; vbChecked: WordBool); dispid 5634;
    procedure sortColumn(nIndex: Integer); dispid 5635;
    procedure setColumnResizeMode(nIndex: Integer; const newMode: WideString); dispid 5636;
    procedure setColumnWidth(nIndex: Integer; nWidth: Integer); dispid 5637;
    property itemErrorColor: WideString dispid 5642;
    property itemCount: Integer readonly dispid 5643;
    property itemMedia[nIndex: Integer]: IWMPMedia readonly dispid 5644;
    property itemPlaylist[nIndex: Integer]: IWMPPlaylist readonly dispid 5645;
    function getNextSelectedItem2(nStartIndex: Integer): Integer; dispid 5646;
    function getNextCheckedItem2(nStartIndex: Integer): Integer; dispid 5647;
    procedure setSelectedState2(nIndex: Integer; vbSelected: WordBool); dispid 5648;
    procedure setCheckedState2(nIndex: Integer; vbChecked: WordBool); dispid 5649;
    property leftStatus: WideString dispid 5650;
    property rightStatus: WideString dispid 5651;
    property editButtonVisible: WordBool dispid 5652;
    property dropDownImage: WideString dispid 5653;
    property dropDownBackgroundImage: WideString dispid 5654;
    property hueShift: Single dispid 5655;
    property saturation: Single dispid 5656;
    property statusColor: WideString dispid 5658;
    property toolbarVisible: WordBool dispid 5660;
    property itemSelectedColor: WideString dispid 5662;
    property itemSelectedFocusLostColor: WideString dispid 5663;
    property itemSelectedBackgroundColor: WideString dispid 5664;
    property itemSelectedBackgroundFocusLostColor: WideString dispid 5665;
    property backgroundSplitColor: WideString dispid 5666;
    property statusTextColor: WideString dispid 5667;
  end;

// *********************************************************************//
// Interface: IAppDispatch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E41C88DD-2364-4FF7-A0F5-CA9859AF783F}
// *********************************************************************//
  IAppDispatch = interface(IDispatch)
    ['{E41C88DD-2364-4FF7-A0F5-CA9859AF783F}']
    function Get_titlebarVisible: WordBool; safecall;
    procedure Set_titlebarVisible(pVal: WordBool); safecall;
    function Get_titlebarAutoHide: WordBool; safecall;
    procedure Set_titlebarAutoHide(pVal: WordBool); safecall;
    function Get_currentTask: WideString; safecall;
    procedure Set_currentTask(const pVal: WideString); safecall;
    function Get_settingsVisible: WordBool; safecall;
    procedure Set_settingsVisible(pVal: WordBool); safecall;
    function Get_playlistVisible: WordBool; safecall;
    procedure Set_playlistVisible(pVal: WordBool); safecall;
    procedure gotoSkinMode; safecall;
    procedure navigatePrevious; safecall;
    procedure navigateNext; safecall;
    procedure goFullScreen; safecall;
    function Get_fullScreenEnabled: WordBool; safecall;
    function Get_serviceLoginVisible: WordBool; safecall;
    function Get_serviceLoginSignedIn: WordBool; safecall;
    procedure serviceLogin; safecall;
    procedure serviceLogout; safecall;
    function Get_serviceGetInfo(const bstrItem: WideString): OleVariant; safecall;
    function Get_navigatePreviousEnabled: WordBool; safecall;
    function Get_navigateNextEnabled: WordBool; safecall;
    procedure navigateToAddress(const address: WideString); safecall;
    function Get_glassEnabled: WordBool; safecall;
    function Get_inVistaPlus: WordBool; safecall;
    procedure adjustLeft(nDistance: Integer); safecall;
    function Get_taskbarVisible: WordBool; safecall;
    procedure Set_taskbarVisible(pVal: WordBool); safecall;
    function Get_DPI: Integer; safecall;
    function Get_previousEnabled: WordBool; safecall;
    function Get_playLibraryItemEnabled: WordBool; safecall;
    procedure previous; safecall;
    function Get_titlebarCurrentlyVisible: WordBool; safecall;
    function Get_menubarCurrentlyVisible: WordBool; safecall;
    function Get_bgPluginRunning: WordBool; safecall;
    procedure configurePlugins(nType: Integer); safecall;
    function getTimeString(dTime: Double): WideString; safecall;
    function Get_maximized: WordBool; safecall;
    function Get_top: Integer; safecall;
    procedure Set_top(pVal: Integer); safecall;
    function Get_left: Integer; safecall;
    procedure Set_left(pVal: Integer); safecall;
    function Get_width: Integer; safecall;
    procedure Set_width(pVal: Integer); safecall;
    function Get_height: Integer; safecall;
    procedure Set_height(pVal: Integer); safecall;
    procedure setWindowPos(lTop: Integer; lLeft: Integer; lWidth: Integer; lHeight: Integer); safecall;
    procedure logData(const ID: WideString; const data: WideString); safecall;
    function Get_powerPersonality: WideString; safecall;
    procedure navigateNamespace(const address: WideString); safecall;
    function Get_exclusiveService: WideString; safecall;
    procedure Set_windowText(const Param1: WideString); safecall;
    property titlebarVisible: WordBool read Get_titlebarVisible write Set_titlebarVisible;
    property titlebarAutoHide: WordBool read Get_titlebarAutoHide write Set_titlebarAutoHide;
    property currentTask: WideString read Get_currentTask write Set_currentTask;
    property settingsVisible: WordBool read Get_settingsVisible write Set_settingsVisible;
    property playlistVisible: WordBool read Get_playlistVisible write Set_playlistVisible;
    property fullScreenEnabled: WordBool read Get_fullScreenEnabled;
    property serviceLoginVisible: WordBool read Get_serviceLoginVisible;
    property serviceLoginSignedIn: WordBool read Get_serviceLoginSignedIn;
    property serviceGetInfo[const bstrItem: WideString]: OleVariant read Get_serviceGetInfo;
    property navigatePreviousEnabled: WordBool read Get_navigatePreviousEnabled;
    property navigateNextEnabled: WordBool read Get_navigateNextEnabled;
    property glassEnabled: WordBool read Get_glassEnabled;
    property inVistaPlus: WordBool read Get_inVistaPlus;
    property taskbarVisible: WordBool read Get_taskbarVisible write Set_taskbarVisible;
    property DPI: Integer read Get_DPI;
    property previousEnabled: WordBool read Get_previousEnabled;
    property playLibraryItemEnabled: WordBool read Get_playLibraryItemEnabled;
    property titlebarCurrentlyVisible: WordBool read Get_titlebarCurrentlyVisible;
    property menubarCurrentlyVisible: WordBool read Get_menubarCurrentlyVisible;
    property bgPluginRunning: WordBool read Get_bgPluginRunning;
    property maximized: WordBool read Get_maximized;
    property top: Integer read Get_top write Set_top;
    property left: Integer read Get_left write Set_left;
    property width: Integer read Get_width write Set_width;
    property height: Integer read Get_height write Set_height;
    property powerPersonality: WideString read Get_powerPersonality;
    property exclusiveService: WideString read Get_exclusiveService;
    property windowText: WideString write Set_windowText;
  end;

// *********************************************************************//
// DispIntf:  IAppDispatchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E41C88DD-2364-4FF7-A0F5-CA9859AF783F}
// *********************************************************************//
  IAppDispatchDisp = dispinterface
    ['{E41C88DD-2364-4FF7-A0F5-CA9859AF783F}']
    property titlebarVisible: WordBool dispid 100;
    property titlebarAutoHide: WordBool dispid 101;
    property currentTask: WideString dispid 102;
    property settingsVisible: WordBool dispid 103;
    property playlistVisible: WordBool dispid 104;
    procedure gotoSkinMode; dispid 105;
    procedure navigatePrevious; dispid 125;
    procedure navigateNext; dispid 126;
    procedure goFullScreen; dispid 142;
    property fullScreenEnabled: WordBool readonly dispid 141;
    property serviceLoginVisible: WordBool readonly dispid 132;
    property serviceLoginSignedIn: WordBool readonly dispid 133;
    procedure serviceLogin; dispid 134;
    procedure serviceLogout; dispid 135;
    property serviceGetInfo[const bstrItem: WideString]: OleVariant readonly dispid 140;
    property navigatePreviousEnabled: WordBool readonly dispid 123;
    property navigateNextEnabled: WordBool readonly dispid 124;
    procedure navigateToAddress(const address: WideString); dispid 130;
    property glassEnabled: WordBool readonly dispid 131;
    property inVistaPlus: WordBool readonly dispid 136;
    procedure adjustLeft(nDistance: Integer); dispid 106;
    property taskbarVisible: WordBool dispid 107;
    property DPI: Integer readonly dispid 116;
    property previousEnabled: WordBool readonly dispid 114;
    property playLibraryItemEnabled: WordBool readonly dispid 139;
    procedure previous; dispid 115;
    property titlebarCurrentlyVisible: WordBool readonly dispid 108;
    property menubarCurrentlyVisible: WordBool readonly dispid 137;
    property bgPluginRunning: WordBool readonly dispid 109;
    procedure configurePlugins(nType: Integer); dispid 110;
    function getTimeString(dTime: Double): WideString; dispid 111;
    property maximized: WordBool readonly dispid 113;
    property top: Integer dispid 117;
    property left: Integer dispid 118;
    property width: Integer dispid 119;
    property height: Integer dispid 120;
    procedure setWindowPos(lTop: Integer; lLeft: Integer; lWidth: Integer; lHeight: Integer); dispid 121;
    procedure logData(const ID: WideString; const data: WideString); dispid 122;
    property powerPersonality: WideString readonly dispid 127;
    procedure navigateNamespace(const address: WideString); dispid 128;
    property exclusiveService: WideString readonly dispid 129;
    property windowText: WideString writeonly dispid 138;
  end;

// *********************************************************************//
// Interface: IWMPSafeBrowser
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF870383-83AB-4EA9-BE48-56FA4251AF10}
// *********************************************************************//
  IWMPSafeBrowser = interface(IDispatch)
    ['{EF870383-83AB-4EA9-BE48-56FA4251AF10}']
    function Get_URL: WideString; safecall;
    procedure Set_URL(const pVal: WideString); safecall;
    function Get_status: Integer; safecall;
    function Get_pendingDownloads: Integer; safecall;
    procedure showSAMIText(const samiText: WideString); safecall;
    procedure showLyrics(const lyrics: WideString); safecall;
    procedure loadSpecialPage(const pageName: WideString); safecall;
    procedure goBack; safecall;
    procedure goForward; safecall;
    procedure stop; safecall;
    procedure refresh; safecall;
    function Get_baseURL: WideString; safecall;
    function Get_fullURL: WideString; safecall;
    function Get_secureLock: Integer; safecall;
    function Get_busy: WordBool; safecall;
    procedure showCert; safecall;
    property URL: WideString read Get_URL write Set_URL;
    property status: Integer read Get_status;
    property pendingDownloads: Integer read Get_pendingDownloads;
    property baseURL: WideString read Get_baseURL;
    property fullURL: WideString read Get_fullURL;
    property secureLock: Integer read Get_secureLock;
    property busy: WordBool read Get_busy;
  end;

// *********************************************************************//
// DispIntf:  IWMPSafeBrowserDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF870383-83AB-4EA9-BE48-56FA4251AF10}
// *********************************************************************//
  IWMPSafeBrowserDisp = dispinterface
    ['{EF870383-83AB-4EA9-BE48-56FA4251AF10}']
    property URL: WideString dispid 8400;
    property status: Integer readonly dispid 8401;
    property pendingDownloads: Integer readonly dispid 8402;
    procedure showSAMIText(const samiText: WideString); dispid 8403;
    procedure showLyrics(const lyrics: WideString); dispid 8404;
    procedure loadSpecialPage(const pageName: WideString); dispid 8405;
    procedure goBack; dispid 8406;
    procedure goForward; dispid 8407;
    procedure stop; dispid 8408;
    procedure refresh; dispid 8409;
    property baseURL: WideString readonly dispid 8410;
    property fullURL: WideString readonly dispid 8414;
    property secureLock: Integer readonly dispid 8411;
    property busy: WordBool readonly dispid 8412;
    procedure showCert; dispid 8413;
  end;

// *********************************************************************//
// Interface: IWMPObjectExtendedProps
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21D077C1-4BAA-11D3-BD45-00C04F6EA5AE}
// *********************************************************************//
  IWMPObjectExtendedProps = interface(IDispatch)
    ['{21D077C1-4BAA-11D3-BD45-00C04F6EA5AE}']
    function Get_ID: WideString; safecall;
    function Get_elementType: WideString; safecall;
    function Get_left: Integer; safecall;
    procedure Set_left(pVal: Integer); safecall;
    function Get_top: Integer; safecall;
    procedure Set_top(pVal: Integer); safecall;
    function Get_right: Integer; safecall;
    procedure Set_right(pVal: Integer); safecall;
    function Get_bottom: Integer; safecall;
    procedure Set_bottom(pVal: Integer); safecall;
    function Get_width: Integer; safecall;
    procedure Set_width(pVal: Integer); safecall;
    function Get_height: Integer; safecall;
    procedure Set_height(pVal: Integer); safecall;
    function Get_zIndex: Integer; safecall;
    procedure Set_zIndex(pVal: Integer); safecall;
    function Get_clippingImage: WideString; safecall;
    procedure Set_clippingImage(const pVal: WideString); safecall;
    function Get_clippingColor: WideString; safecall;
    procedure Set_clippingColor(const pVal: WideString); safecall;
    function Get_visible: WordBool; safecall;
    procedure Set_visible(pVal: WordBool); safecall;
    function Get_enabled: WordBool; safecall;
    procedure Set_enabled(pVal: WordBool); safecall;
    function Get_tabStop: WordBool; safecall;
    procedure Set_tabStop(pVal: WordBool); safecall;
    function Get_passThrough: WordBool; safecall;
    procedure Set_passThrough(pVal: WordBool); safecall;
    function Get_horizontalAlignment: WideString; safecall;
    procedure Set_horizontalAlignment(const pVal: WideString); safecall;
    function Get_verticalAlignment: WideString; safecall;
    procedure Set_verticalAlignment(const pVal: WideString); safecall;
    procedure moveTo(newX: Integer; newY: Integer; moveTime: Integer); safecall;
    procedure slideTo(newX: Integer; newY: Integer; moveTime: Integer); safecall;
    procedure moveSizeTo(newX: Integer; newY: Integer; newWidth: Integer; newHeight: Integer; 
                         moveTime: Integer; fSlide: WordBool); safecall;
    function Get_alphaBlend: Integer; safecall;
    procedure Set_alphaBlend(pVal: Integer); safecall;
    procedure alphaBlendTo(newVal: Integer; alphaTime: Integer); safecall;
    function Get_accName: WideString; safecall;
    procedure Set_accName(const pszName: WideString); safecall;
    function Get_accDescription: WideString; safecall;
    procedure Set_accDescription(const pszDesc: WideString); safecall;
    function Get_accKeyboardShortcut: WideString; safecall;
    procedure Set_accKeyboardShortcut(const pszShortcut: WideString); safecall;
    function Get_resizeImages: WordBool; safecall;
    procedure Set_resizeImages(pVal: WordBool); safecall;
    function Get_nineGridMargins: WideString; safecall;
    procedure Set_nineGridMargins(const pszMargins: WideString); safecall;
    property ID: WideString read Get_ID;
    property elementType: WideString read Get_elementType;
    property left: Integer read Get_left write Set_left;
    property top: Integer read Get_top write Set_top;
    property right: Integer read Get_right write Set_right;
    property bottom: Integer read Get_bottom write Set_bottom;
    property width: Integer read Get_width write Set_width;
    property height: Integer read Get_height write Set_height;
    property zIndex: Integer read Get_zIndex write Set_zIndex;
    property clippingImage: WideString read Get_clippingImage write Set_clippingImage;
    property clippingColor: WideString read Get_clippingColor write Set_clippingColor;
    property visible: WordBool read Get_visible write Set_visible;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property tabStop: WordBool read Get_tabStop write Set_tabStop;
    property passThrough: WordBool read Get_passThrough write Set_passThrough;
    property horizontalAlignment: WideString read Get_horizontalAlignment write Set_horizontalAlignment;
    property verticalAlignment: WideString read Get_verticalAlignment write Set_verticalAlignment;
    property alphaBlend: Integer read Get_alphaBlend write Set_alphaBlend;
    property accName: WideString read Get_accName write Set_accName;
    property accDescription: WideString read Get_accDescription write Set_accDescription;
    property accKeyboardShortcut: WideString read Get_accKeyboardShortcut write Set_accKeyboardShortcut;
    property resizeImages: WordBool read Get_resizeImages write Set_resizeImages;
    property nineGridMargins: WideString read Get_nineGridMargins write Set_nineGridMargins;
  end;

// *********************************************************************//
// DispIntf:  IWMPObjectExtendedPropsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21D077C1-4BAA-11D3-BD45-00C04F6EA5AE}
// *********************************************************************//
  IWMPObjectExtendedPropsDisp = dispinterface
    ['{21D077C1-4BAA-11D3-BD45-00C04F6EA5AE}']
    property ID: WideString readonly dispid 2000;
    property elementType: WideString readonly dispid 2001;
    property left: Integer dispid 2002;
    property top: Integer dispid 2003;
    property right: Integer dispid 2022;
    property bottom: Integer dispid 2023;
    property width: Integer dispid 2004;
    property height: Integer dispid 2005;
    property zIndex: Integer dispid 2006;
    property clippingImage: WideString dispid 2007;
    property clippingColor: WideString dispid 2008;
    property visible: WordBool dispid 2009;
    property enabled: WordBool dispid 2010;
    property tabStop: WordBool dispid 2011;
    property passThrough: WordBool dispid 2012;
    property horizontalAlignment: WideString dispid 2013;
    property verticalAlignment: WideString dispid 2014;
    procedure moveTo(newX: Integer; newY: Integer; moveTime: Integer); dispid 2015;
    procedure slideTo(newX: Integer; newY: Integer; moveTime: Integer); dispid 2021;
    procedure moveSizeTo(newX: Integer; newY: Integer; newWidth: Integer; newHeight: Integer; 
                         moveTime: Integer; fSlide: WordBool); dispid 2026;
    property alphaBlend: Integer dispid 2016;
    procedure alphaBlendTo(newVal: Integer; alphaTime: Integer); dispid 2017;
    property accName: WideString dispid 2018;
    property accDescription: WideString dispid 2019;
    property accKeyboardShortcut: WideString dispid 2020;
    property resizeImages: WordBool dispid 2024;
    property nineGridMargins: WideString dispid 2025;
  end;

// *********************************************************************//
// Interface: IWMPLayoutSubView
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {72F486B1-0D43-11D3-BD3F-00C04F6EA5AE}
// *********************************************************************//
  IWMPLayoutSubView = interface(IWMPObjectExtendedProps)
    ['{72F486B1-0D43-11D3-BD3F-00C04F6EA5AE}']
    function Get_transparencyColor: WideString; safecall;
    procedure Set_transparencyColor(const pVal: WideString); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_backgroundImage: WideString; safecall;
    procedure Set_backgroundImage(const pVal: WideString); safecall;
    function Get_backgroundTiled: WordBool; safecall;
    procedure Set_backgroundTiled(pVal: WordBool); safecall;
    function Get_backgroundImageHueShift: Single; safecall;
    procedure Set_backgroundImageHueShift(pVal: Single); safecall;
    function Get_backgroundImageSaturation: Single; safecall;
    procedure Set_backgroundImageSaturation(pVal: Single); safecall;
    function Get_resizeBackgroundImage: WordBool; safecall;
    procedure Set_resizeBackgroundImage(pVal: WordBool); safecall;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property backgroundImage: WideString read Get_backgroundImage write Set_backgroundImage;
    property backgroundTiled: WordBool read Get_backgroundTiled write Set_backgroundTiled;
    property backgroundImageHueShift: Single read Get_backgroundImageHueShift write Set_backgroundImageHueShift;
    property backgroundImageSaturation: Single read Get_backgroundImageSaturation write Set_backgroundImageSaturation;
    property resizeBackgroundImage: WordBool read Get_resizeBackgroundImage write Set_resizeBackgroundImage;
  end;

// *********************************************************************//
// DispIntf:  IWMPLayoutSubViewDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {72F486B1-0D43-11D3-BD3F-00C04F6EA5AE}
// *********************************************************************//
  IWMPLayoutSubViewDisp = dispinterface
    ['{72F486B1-0D43-11D3-BD3F-00C04F6EA5AE}']
    property transparencyColor: WideString dispid 2300;
    property backgroundColor: WideString dispid 2301;
    property backgroundImage: WideString dispid 2302;
    property backgroundTiled: WordBool dispid 2303;
    property backgroundImageHueShift: Single dispid 2304;
    property backgroundImageSaturation: Single dispid 2305;
    property resizeBackgroundImage: WordBool dispid 2306;
    property ID: WideString readonly dispid 2000;
    property elementType: WideString readonly dispid 2001;
    property left: Integer dispid 2002;
    property top: Integer dispid 2003;
    property right: Integer dispid 2022;
    property bottom: Integer dispid 2023;
    property width: Integer dispid 2004;
    property height: Integer dispid 2005;
    property zIndex: Integer dispid 2006;
    property clippingImage: WideString dispid 2007;
    property clippingColor: WideString dispid 2008;
    property visible: WordBool dispid 2009;
    property enabled: WordBool dispid 2010;
    property tabStop: WordBool dispid 2011;
    property passThrough: WordBool dispid 2012;
    property horizontalAlignment: WideString dispid 2013;
    property verticalAlignment: WideString dispid 2014;
    procedure moveTo(newX: Integer; newY: Integer; moveTime: Integer); dispid 2015;
    procedure slideTo(newX: Integer; newY: Integer; moveTime: Integer); dispid 2021;
    procedure moveSizeTo(newX: Integer; newY: Integer; newWidth: Integer; newHeight: Integer; 
                         moveTime: Integer; fSlide: WordBool); dispid 2026;
    property alphaBlend: Integer dispid 2016;
    procedure alphaBlendTo(newVal: Integer; alphaTime: Integer); dispid 2017;
    property accName: WideString dispid 2018;
    property accDescription: WideString dispid 2019;
    property accKeyboardShortcut: WideString dispid 2020;
    property resizeImages: WordBool dispid 2024;
    property nineGridMargins: WideString dispid 2025;
  end;

// *********************************************************************//
// Interface: IWMPLayoutView
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {172E905D-80D9-4C2F-B7CE-2CCB771787A2}
// *********************************************************************//
  IWMPLayoutView = interface(IWMPLayoutSubView)
    ['{172E905D-80D9-4C2F-B7CE-2CCB771787A2}']
    function Get_title: WideString; safecall;
    procedure Set_title(const pVal: WideString); safecall;
    function Get_category: WideString; safecall;
    procedure Set_category(const pVal: WideString); safecall;
    function Get_focusObjectID: WideString; safecall;
    procedure Set_focusObjectID(const pVal: WideString); safecall;
    function Get_titleBar: WordBool; safecall;
    function Get_resizable: WordBool; safecall;
    function Get_timerInterval: Integer; safecall;
    procedure Set_timerInterval(pVal: Integer); safecall;
    function Get_minWidth: Integer; safecall;
    procedure Set_minWidth(pVal: Integer); safecall;
    function Get_maxWidth: Integer; safecall;
    procedure Set_maxWidth(pVal: Integer); safecall;
    function Get_minHeight: Integer; safecall;
    procedure Set_minHeight(pVal: Integer); safecall;
    function Get_maxHeight: Integer; safecall;
    procedure Set_maxHeight(pVal: Integer); safecall;
    procedure close; safecall;
    procedure minimize; safecall;
    procedure maximize; safecall;
    procedure restore; safecall;
    procedure size(const bstrDirection: WideString); safecall;
    procedure returnToMediaCenter; safecall;
    procedure updateWindow; safecall;
    property title: WideString read Get_title write Set_title;
    property category: WideString read Get_category write Set_category;
    property focusObjectID: WideString read Get_focusObjectID write Set_focusObjectID;
    property titleBar: WordBool read Get_titleBar;
    property resizable: WordBool read Get_resizable;
    property timerInterval: Integer read Get_timerInterval write Set_timerInterval;
    property minWidth: Integer read Get_minWidth write Set_minWidth;
    property maxWidth: Integer read Get_maxWidth write Set_maxWidth;
    property minHeight: Integer read Get_minHeight write Set_minHeight;
    property maxHeight: Integer read Get_maxHeight write Set_maxHeight;
  end;

// *********************************************************************//
// DispIntf:  IWMPLayoutViewDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {172E905D-80D9-4C2F-B7CE-2CCB771787A2}
// *********************************************************************//
  IWMPLayoutViewDisp = dispinterface
    ['{172E905D-80D9-4C2F-B7CE-2CCB771787A2}']
    property title: WideString dispid 2307;
    property category: WideString dispid 2308;
    property focusObjectID: WideString dispid 2309;
    property titleBar: WordBool readonly dispid 2311;
    property resizable: WordBool readonly dispid 2312;
    property timerInterval: Integer dispid 2313;
    property minWidth: Integer dispid 2314;
    property maxWidth: Integer dispid 2315;
    property minHeight: Integer dispid 2316;
    property maxHeight: Integer dispid 2317;
    procedure close; dispid 2318;
    procedure minimize; dispid 2319;
    procedure maximize; dispid 2320;
    procedure restore; dispid 2321;
    procedure size(const bstrDirection: WideString); dispid 2322;
    procedure returnToMediaCenter; dispid 2323;
    procedure updateWindow; dispid 2324;
    property transparencyColor: WideString dispid 2300;
    property backgroundColor: WideString dispid 2301;
    property backgroundImage: WideString dispid 2302;
    property backgroundTiled: WordBool dispid 2303;
    property backgroundImageHueShift: Single dispid 2304;
    property backgroundImageSaturation: Single dispid 2305;
    property resizeBackgroundImage: WordBool dispid 2306;
    property ID: WideString readonly dispid 2000;
    property elementType: WideString readonly dispid 2001;
    property left: Integer dispid 2002;
    property top: Integer dispid 2003;
    property right: Integer dispid 2022;
    property bottom: Integer dispid 2023;
    property width: Integer dispid 2004;
    property height: Integer dispid 2005;
    property zIndex: Integer dispid 2006;
    property clippingImage: WideString dispid 2007;
    property clippingColor: WideString dispid 2008;
    property visible: WordBool dispid 2009;
    property enabled: WordBool dispid 2010;
    property tabStop: WordBool dispid 2011;
    property passThrough: WordBool dispid 2012;
    property horizontalAlignment: WideString dispid 2013;
    property verticalAlignment: WideString dispid 2014;
    procedure moveTo(newX: Integer; newY: Integer; moveTime: Integer); dispid 2015;
    procedure slideTo(newX: Integer; newY: Integer; moveTime: Integer); dispid 2021;
    procedure moveSizeTo(newX: Integer; newY: Integer; newWidth: Integer; newHeight: Integer; 
                         moveTime: Integer; fSlide: WordBool); dispid 2026;
    property alphaBlend: Integer dispid 2016;
    procedure alphaBlendTo(newVal: Integer; alphaTime: Integer); dispid 2017;
    property accName: WideString dispid 2018;
    property accDescription: WideString dispid 2019;
    property accKeyboardShortcut: WideString dispid 2020;
    property resizeImages: WordBool dispid 2024;
    property nineGridMargins: WideString dispid 2025;
  end;

// *********************************************************************//
// Interface: IWMPEventObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5AF0BEC1-46AA-11D3-BD45-00C04F6EA5AE}
// *********************************************************************//
  IWMPEventObject = interface(IDispatch)
    ['{5AF0BEC1-46AA-11D3-BD45-00C04F6EA5AE}']
    function Get_srcElement: IDispatch; safecall;
    function Get_altKey: WordBool; safecall;
    function Get_ctrlKey: WordBool; safecall;
    function Get_shiftKey: WordBool; safecall;
    function Get_fromElement: IDispatch; safecall;
    function Get_toElement: IDispatch; safecall;
    procedure Set_keyCode(p: Integer); safecall;
    function Get_keyCode: Integer; safecall;
    function Get_button: Integer; safecall;
    function Get_x: Integer; safecall;
    function Get_y: Integer; safecall;
    function Get_clientX: Integer; safecall;
    function Get_clientY: Integer; safecall;
    function Get_offsetX: Integer; safecall;
    function Get_offsetY: Integer; safecall;
    function Get_screenX: Integer; safecall;
    function Get_screenY: Integer; safecall;
    function Get_screenWidth: Integer; safecall;
    function Get_screenHeight: Integer; safecall;
    property srcElement: IDispatch read Get_srcElement;
    property altKey: WordBool read Get_altKey;
    property ctrlKey: WordBool read Get_ctrlKey;
    property shiftKey: WordBool read Get_shiftKey;
    property fromElement: IDispatch read Get_fromElement;
    property toElement: IDispatch read Get_toElement;
    property keyCode: Integer read Get_keyCode write Set_keyCode;
    property button: Integer read Get_button;
    property x: Integer read Get_x;
    property y: Integer read Get_y;
    property clientX: Integer read Get_clientX;
    property clientY: Integer read Get_clientY;
    property offsetX: Integer read Get_offsetX;
    property offsetY: Integer read Get_offsetY;
    property screenX: Integer read Get_screenX;
    property screenY: Integer read Get_screenY;
    property screenWidth: Integer read Get_screenWidth;
    property screenHeight: Integer read Get_screenHeight;
  end;

// *********************************************************************//
// DispIntf:  IWMPEventObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5AF0BEC1-46AA-11D3-BD45-00C04F6EA5AE}
// *********************************************************************//
  IWMPEventObjectDisp = dispinterface
    ['{5AF0BEC1-46AA-11D3-BD45-00C04F6EA5AE}']
    property srcElement: IDispatch readonly dispid 2200;
    property altKey: WordBool readonly dispid 2201;
    property ctrlKey: WordBool readonly dispid 2202;
    property shiftKey: WordBool readonly dispid 2203;
    property fromElement: IDispatch readonly dispid 2204;
    property toElement: IDispatch readonly dispid 2205;
    property keyCode: Integer dispid 2206;
    property button: Integer readonly dispid 2207;
    property x: Integer readonly dispid 2208;
    property y: Integer readonly dispid 2209;
    property clientX: Integer readonly dispid 2210;
    property clientY: Integer readonly dispid 2211;
    property offsetX: Integer readonly dispid 2212;
    property offsetY: Integer readonly dispid 2213;
    property screenX: Integer readonly dispid 2214;
    property screenY: Integer readonly dispid 2215;
    property screenWidth: Integer readonly dispid 2216;
    property screenHeight: Integer readonly dispid 2217;
  end;

// *********************************************************************//
// Interface: IWMPTheme
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FCAE13D-E492-4584-9C21-D2C052A2A33A}
// *********************************************************************//
  IWMPTheme = interface(IDispatch)
    ['{6FCAE13D-E492-4584-9C21-D2C052A2A33A}']
    function Get_title: WideString; safecall;
    function Get_version: Single; safecall;
    function Get_authorVersion: WideString; safecall;
    function Get_author: WideString; safecall;
    function Get_copyright: WideString; safecall;
    function Get_currentViewID: WideString; safecall;
    procedure Set_currentViewID(const pVal: WideString); safecall;
    procedure showErrorDialog; safecall;
    procedure logString(const stringVal: WideString); safecall;
    procedure openView(const viewID: WideString); safecall;
    procedure openViewRelative(const viewID: WideString; x: Integer; y: Integer); safecall;
    procedure closeView(const viewID: WideString); safecall;
    function openDialog(const dialogType: WideString; const parameters: WideString): WideString; safecall;
    function loadString(const bstrString: WideString): WideString; safecall;
    function loadPreference(const bstrName: WideString): WideString; safecall;
    procedure savePreference(const bstrName: WideString; const bstrValue: WideString); safecall;
    procedure playSound(const bstrFilename: WideString); safecall;
    property title: WideString read Get_title;
    property version: Single read Get_version;
    property authorVersion: WideString read Get_authorVersion;
    property author: WideString read Get_author;
    property copyright: WideString read Get_copyright;
    property currentViewID: WideString read Get_currentViewID write Set_currentViewID;
  end;

// *********************************************************************//
// DispIntf:  IWMPThemeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FCAE13D-E492-4584-9C21-D2C052A2A33A}
// *********************************************************************//
  IWMPThemeDisp = dispinterface
    ['{6FCAE13D-E492-4584-9C21-D2C052A2A33A}']
    property title: WideString readonly dispid 2500;
    property version: Single readonly dispid 2501;
    property authorVersion: WideString readonly dispid 2502;
    property author: WideString readonly dispid 2503;
    property copyright: WideString readonly dispid 2504;
    property currentViewID: WideString dispid 2505;
    procedure showErrorDialog; dispid 2506;
    procedure logString(const stringVal: WideString); dispid 2507;
    procedure openView(const viewID: WideString); dispid 2508;
    procedure openViewRelative(const viewID: WideString; x: Integer; y: Integer); dispid 2515;
    procedure closeView(const viewID: WideString); dispid 2509;
    function openDialog(const dialogType: WideString; const parameters: WideString): WideString; dispid 2510;
    function loadString(const bstrString: WideString): WideString; dispid 2511;
    function loadPreference(const bstrName: WideString): WideString; dispid 2512;
    procedure savePreference(const bstrName: WideString; const bstrValue: WideString); dispid 2513;
    procedure playSound(const bstrFilename: WideString); dispid 2514;
  end;

// *********************************************************************//
// Interface: IWMPLayoutSettingsDispatch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B2C2D18E-97AF-4B6A-A56B-2FFFF470FB81}
// *********************************************************************//
  IWMPLayoutSettingsDispatch = interface(IDispatch)
    ['{B2C2D18E-97AF-4B6A-A56B-2FFFF470FB81}']
    function Get_effectType: WideString; safecall;
    procedure Set_effectType(const pVal: WideString); safecall;
    function Get_effectPreset: Integer; safecall;
    procedure Set_effectPreset(pVal: Integer); safecall;
    function Get_settingsView: WideString; safecall;
    procedure Set_settingsView(const pVal: WideString); safecall;
    function Get_videoZoom: Integer; safecall;
    procedure Set_videoZoom(pVal: Integer); safecall;
    function Get_videoShrinkToFit: WordBool; safecall;
    procedure Set_videoShrinkToFit(pVal: WordBool); safecall;
    function Get_videoStretchToFit: WordBool; safecall;
    procedure Set_videoStretchToFit(pVal: WordBool); safecall;
    function Get_userVideoStretchToFit: WordBool; safecall;
    procedure Set_userVideoStretchToFit(pVal: WordBool); safecall;
    function Get_showCaptions: WordBool; safecall;
    procedure Set_showCaptions(pVal: WordBool); safecall;
    function Get_showTitles: WordBool; safecall;
    procedure Set_showTitles(pVal: WordBool); safecall;
    function Get_showEffects: WordBool; safecall;
    procedure Set_showEffects(pVal: WordBool); safecall;
    function Get_showFullScreenPlaylist: WordBool; safecall;
    procedure Set_showFullScreenPlaylist(pVal: WordBool); safecall;
    function Get_contrastMode: WideString; safecall;
    function getNamedString(const bstrName: WideString): WideString; safecall;
    function getDurationStringFromSeconds(lDurationVal: Integer): WideString; safecall;
    function Get_displayView: WideString; safecall;
    procedure Set_displayView(const pVal: WideString); safecall;
    function Get_metadataView: WideString; safecall;
    procedure Set_metadataView(const pVal: WideString); safecall;
    function Get_showSettings: WordBool; safecall;
    procedure Set_showSettings(pVal: WordBool); safecall;
    function Get_showResizeBars: WordBool; safecall;
    procedure Set_showResizeBars(pVal: WordBool); safecall;
    function Get_showPlaylist: WordBool; safecall;
    procedure Set_showPlaylist(pVal: WordBool); safecall;
    function Get_showMetadata: WordBool; safecall;
    procedure Set_showMetadata(pVal: WordBool); safecall;
    function Get_settingsWidth: Integer; safecall;
    procedure Set_settingsWidth(pVal: Integer); safecall;
    function Get_settingsHeight: Integer; safecall;
    procedure Set_settingsHeight(pVal: Integer); safecall;
    function Get_playlistWidth: Integer; safecall;
    procedure Set_playlistWidth(pVal: Integer); safecall;
    function Get_playlistHeight: Integer; safecall;
    procedure Set_playlistHeight(pVal: Integer); safecall;
    function Get_metadataWidth: Integer; safecall;
    procedure Set_metadataWidth(pVal: Integer); safecall;
    function Get_metadataHeight: Integer; safecall;
    procedure Set_metadataHeight(pVal: Integer); safecall;
    function Get_fullScreenAvailable: WordBool; safecall;
    procedure Set_fullScreenAvailable(pVal: WordBool); safecall;
    function Get_fullScreenRequest: WordBool; safecall;
    procedure Set_fullScreenRequest(pVal: WordBool); safecall;
    function Get_quickHide: WordBool; safecall;
    procedure Set_quickHide(pVal: WordBool); safecall;
    function Get_displayPreset: Integer; safecall;
    procedure Set_displayPreset(pVal: Integer); safecall;
    function Get_settingsPreset: Integer; safecall;
    procedure Set_settingsPreset(pVal: Integer); safecall;
    function Get_metadataPreset: Integer; safecall;
    procedure Set_metadataPreset(pVal: Integer); safecall;
    function Get_userDisplayView: WideString; safecall;
    function Get_userWMPDisplayView: WideString; safecall;
    function Get_userDisplayPreset: Integer; safecall;
    function Get_userWMPDisplayPreset: Integer; safecall;
    function Get_dynamicRangeControl: Integer; safecall;
    procedure Set_dynamicRangeControl(pVal: Integer); safecall;
    function Get_slowRate: Single; safecall;
    procedure Set_slowRate(pVal: Single); safecall;
    function Get_fastRate: Single; safecall;
    procedure Set_fastRate(pVal: Single); safecall;
    function Get_buttonHueShift: Single; safecall;
    procedure Set_buttonHueShift(pVal: Single); safecall;
    function Get_buttonSaturation: Single; safecall;
    procedure Set_buttonSaturation(pVal: Single); safecall;
    function Get_backHueShift: Single; safecall;
    procedure Set_backHueShift(pVal: Single); safecall;
    function Get_backSaturation: Single; safecall;
    procedure Set_backSaturation(pVal: Single); safecall;
    function Get_vizRequest: Integer; safecall;
    procedure Set_vizRequest(pVal: Integer); safecall;
    function Get_appColorLight: WideString; safecall;
    function Get_appColorMedium: WideString; safecall;
    function Get_appColorDark: WideString; safecall;
    function Get_toolbarButtonHighlight: WideString; safecall;
    function Get_toolbarButtonShadow: WideString; safecall;
    function Get_toolbarButtonFace: WideString; safecall;
    function Get_itemPlayingColor: WideString; safecall;
    function Get_itemPlayingBackgroundColor: WideString; safecall;
    function Get_itemErrorColor: WideString; safecall;
    function Get_appColorLimited: WordBool; safecall;
    function Get_appColorBlackBackground: WordBool; safecall;
    procedure Set_appColorBlackBackground(pVal: WordBool); safecall;
    function Get_appColorVideoBorder: WideString; safecall;
    procedure Set_appColorVideoBorder(const pVal: WideString); safecall;
    function Get_appColorAux1: WideString; safecall;
    function Get_appColorAux2: WideString; safecall;
    function Get_appColorAux3: WideString; safecall;
    function Get_appColorAux4: WideString; safecall;
    function Get_appColorAux5: WideString; safecall;
    function Get_appColorAux6: WideString; safecall;
    function Get_appColorAux7: WideString; safecall;
    function Get_appColorAux8: WideString; safecall;
    function Get_appColorAux9: WideString; safecall;
    function Get_appColorAux10: WideString; safecall;
    function Get_appColorAux11: WideString; safecall;
    function Get_appColorAux12: WideString; safecall;
    function Get_appColorAux13: WideString; safecall;
    function Get_appColorAux14: WideString; safecall;
    function Get_appColorAux15: WideString; safecall;
    function Get_status: WideString; safecall;
    procedure Set_status(const pVal: WideString); safecall;
    function Get_userWMPSettingsView: WideString; safecall;
    function Get_userWMPSettingsPreset: Integer; safecall;
    function Get_userWMPShowSettings: WordBool; safecall;
    function Get_userWMPMetadataView: WideString; safecall;
    function Get_userWMPMetadataPreset: Integer; safecall;
    function Get_userWMPShowMetadata: WordBool; safecall;
    function Get_captionsHeight: Integer; safecall;
    procedure Set_captionsHeight(pVal: Integer); safecall;
    function Get_snapToVideo: WordBool; safecall;
    procedure Set_snapToVideo(pVal: WordBool); safecall;
    function Get_pinFullScreenControls: WordBool; safecall;
    procedure Set_pinFullScreenControls(pVal: WordBool); safecall;
    procedure SetLockFullScreen(locked: WordBool; const Val: WideString); safecall;
    function Get_fullScreenLocked: WordBool; safecall;
    function Get_isMultiMon: WordBool; safecall;
    function Get_exclusiveHueShift: Single; safecall;
    procedure Set_exclusiveHueShift(pVal: Single); safecall;
    function Get_exclusiveSaturation: Single; safecall;
    procedure Set_exclusiveSaturation(pVal: Single); safecall;
    function Get_themeBkgColorIsActive: WordBool; safecall;
    procedure Set_themeBkgColorIsActive(pVal: WordBool); safecall;
    function Get_themeBkgColorActive: WideString; safecall;
    function Get_themeBkgColorInactive: WideString; safecall;
    property effectType: WideString read Get_effectType write Set_effectType;
    property effectPreset: Integer read Get_effectPreset write Set_effectPreset;
    property settingsView: WideString read Get_settingsView write Set_settingsView;
    property videoZoom: Integer read Get_videoZoom write Set_videoZoom;
    property videoShrinkToFit: WordBool read Get_videoShrinkToFit write Set_videoShrinkToFit;
    property videoStretchToFit: WordBool read Get_videoStretchToFit write Set_videoStretchToFit;
    property userVideoStretchToFit: WordBool read Get_userVideoStretchToFit write Set_userVideoStretchToFit;
    property showCaptions: WordBool read Get_showCaptions write Set_showCaptions;
    property showTitles: WordBool read Get_showTitles write Set_showTitles;
    property showEffects: WordBool read Get_showEffects write Set_showEffects;
    property showFullScreenPlaylist: WordBool read Get_showFullScreenPlaylist write Set_showFullScreenPlaylist;
    property contrastMode: WideString read Get_contrastMode;
    property displayView: WideString read Get_displayView write Set_displayView;
    property metadataView: WideString read Get_metadataView write Set_metadataView;
    property showSettings: WordBool read Get_showSettings write Set_showSettings;
    property showResizeBars: WordBool read Get_showResizeBars write Set_showResizeBars;
    property showPlaylist: WordBool read Get_showPlaylist write Set_showPlaylist;
    property showMetadata: WordBool read Get_showMetadata write Set_showMetadata;
    property settingsWidth: Integer read Get_settingsWidth write Set_settingsWidth;
    property settingsHeight: Integer read Get_settingsHeight write Set_settingsHeight;
    property playlistWidth: Integer read Get_playlistWidth write Set_playlistWidth;
    property playlistHeight: Integer read Get_playlistHeight write Set_playlistHeight;
    property metadataWidth: Integer read Get_metadataWidth write Set_metadataWidth;
    property metadataHeight: Integer read Get_metadataHeight write Set_metadataHeight;
    property fullScreenAvailable: WordBool read Get_fullScreenAvailable write Set_fullScreenAvailable;
    property fullScreenRequest: WordBool read Get_fullScreenRequest write Set_fullScreenRequest;
    property quickHide: WordBool read Get_quickHide write Set_quickHide;
    property displayPreset: Integer read Get_displayPreset write Set_displayPreset;
    property settingsPreset: Integer read Get_settingsPreset write Set_settingsPreset;
    property metadataPreset: Integer read Get_metadataPreset write Set_metadataPreset;
    property userDisplayView: WideString read Get_userDisplayView;
    property userWMPDisplayView: WideString read Get_userWMPDisplayView;
    property userDisplayPreset: Integer read Get_userDisplayPreset;
    property userWMPDisplayPreset: Integer read Get_userWMPDisplayPreset;
    property dynamicRangeControl: Integer read Get_dynamicRangeControl write Set_dynamicRangeControl;
    property slowRate: Single read Get_slowRate write Set_slowRate;
    property fastRate: Single read Get_fastRate write Set_fastRate;
    property buttonHueShift: Single read Get_buttonHueShift write Set_buttonHueShift;
    property buttonSaturation: Single read Get_buttonSaturation write Set_buttonSaturation;
    property backHueShift: Single read Get_backHueShift write Set_backHueShift;
    property backSaturation: Single read Get_backSaturation write Set_backSaturation;
    property vizRequest: Integer read Get_vizRequest write Set_vizRequest;
    property appColorLight: WideString read Get_appColorLight;
    property appColorMedium: WideString read Get_appColorMedium;
    property appColorDark: WideString read Get_appColorDark;
    property toolbarButtonHighlight: WideString read Get_toolbarButtonHighlight;
    property toolbarButtonShadow: WideString read Get_toolbarButtonShadow;
    property toolbarButtonFace: WideString read Get_toolbarButtonFace;
    property itemPlayingColor: WideString read Get_itemPlayingColor;
    property itemPlayingBackgroundColor: WideString read Get_itemPlayingBackgroundColor;
    property itemErrorColor: WideString read Get_itemErrorColor;
    property appColorLimited: WordBool read Get_appColorLimited;
    property appColorBlackBackground: WordBool read Get_appColorBlackBackground write Set_appColorBlackBackground;
    property appColorVideoBorder: WideString read Get_appColorVideoBorder write Set_appColorVideoBorder;
    property appColorAux1: WideString read Get_appColorAux1;
    property appColorAux2: WideString read Get_appColorAux2;
    property appColorAux3: WideString read Get_appColorAux3;
    property appColorAux4: WideString read Get_appColorAux4;
    property appColorAux5: WideString read Get_appColorAux5;
    property appColorAux6: WideString read Get_appColorAux6;
    property appColorAux7: WideString read Get_appColorAux7;
    property appColorAux8: WideString read Get_appColorAux8;
    property appColorAux9: WideString read Get_appColorAux9;
    property appColorAux10: WideString read Get_appColorAux10;
    property appColorAux11: WideString read Get_appColorAux11;
    property appColorAux12: WideString read Get_appColorAux12;
    property appColorAux13: WideString read Get_appColorAux13;
    property appColorAux14: WideString read Get_appColorAux14;
    property appColorAux15: WideString read Get_appColorAux15;
    property status: WideString read Get_status write Set_status;
    property userWMPSettingsView: WideString read Get_userWMPSettingsView;
    property userWMPSettingsPreset: Integer read Get_userWMPSettingsPreset;
    property userWMPShowSettings: WordBool read Get_userWMPShowSettings;
    property userWMPMetadataView: WideString read Get_userWMPMetadataView;
    property userWMPMetadataPreset: Integer read Get_userWMPMetadataPreset;
    property userWMPShowMetadata: WordBool read Get_userWMPShowMetadata;
    property captionsHeight: Integer read Get_captionsHeight write Set_captionsHeight;
    property snapToVideo: WordBool read Get_snapToVideo write Set_snapToVideo;
    property pinFullScreenControls: WordBool read Get_pinFullScreenControls write Set_pinFullScreenControls;
    property fullScreenLocked: WordBool read Get_fullScreenLocked;
    property isMultiMon: WordBool read Get_isMultiMon;
    property exclusiveHueShift: Single read Get_exclusiveHueShift write Set_exclusiveHueShift;
    property exclusiveSaturation: Single read Get_exclusiveSaturation write Set_exclusiveSaturation;
    property themeBkgColorIsActive: WordBool read Get_themeBkgColorIsActive write Set_themeBkgColorIsActive;
    property themeBkgColorActive: WideString read Get_themeBkgColorActive;
    property themeBkgColorInactive: WideString read Get_themeBkgColorInactive;
  end;

// *********************************************************************//
// DispIntf:  IWMPLayoutSettingsDispatchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B2C2D18E-97AF-4B6A-A56B-2FFFF470FB81}
// *********************************************************************//
  IWMPLayoutSettingsDispatchDisp = dispinterface
    ['{B2C2D18E-97AF-4B6A-A56B-2FFFF470FB81}']
    property effectType: WideString dispid 2800;
    property effectPreset: Integer dispid 2801;
    property settingsView: WideString dispid 2802;
    property videoZoom: Integer dispid 2803;
    property videoShrinkToFit: WordBool dispid 2804;
    property videoStretchToFit: WordBool dispid 2805;
    property userVideoStretchToFit: WordBool dispid 2868;
    property showCaptions: WordBool dispid 2807;
    property showTitles: WordBool dispid 2808;
    property showEffects: WordBool dispid 2809;
    property showFullScreenPlaylist: WordBool dispid 2811;
    property contrastMode: WideString readonly dispid 2813;
    function getNamedString(const bstrName: WideString): WideString; dispid 2810;
    function getDurationStringFromSeconds(lDurationVal: Integer): WideString; dispid 2815;
    property displayView: WideString dispid 2816;
    property metadataView: WideString dispid 2817;
    property showSettings: WordBool dispid 2818;
    property showResizeBars: WordBool dispid 2819;
    property showPlaylist: WordBool dispid 2820;
    property showMetadata: WordBool dispid 2821;
    property settingsWidth: Integer dispid 2822;
    property settingsHeight: Integer dispid 2823;
    property playlistWidth: Integer dispid 2824;
    property playlistHeight: Integer dispid 2825;
    property metadataWidth: Integer dispid 2826;
    property metadataHeight: Integer dispid 2827;
    property fullScreenAvailable: WordBool dispid 2828;
    property fullScreenRequest: WordBool dispid 2829;
    property quickHide: WordBool dispid 2830;
    property displayPreset: Integer dispid 2831;
    property settingsPreset: Integer dispid 2832;
    property metadataPreset: Integer dispid 2833;
    property userDisplayView: WideString readonly dispid 2834;
    property userWMPDisplayView: WideString readonly dispid 2835;
    property userDisplayPreset: Integer readonly dispid 2836;
    property userWMPDisplayPreset: Integer readonly dispid 2837;
    property dynamicRangeControl: Integer dispid 2838;
    property slowRate: Single dispid 2839;
    property fastRate: Single dispid 2840;
    property buttonHueShift: Single dispid 2841;
    property buttonSaturation: Single dispid 2842;
    property backHueShift: Single dispid 2843;
    property backSaturation: Single dispid 2844;
    property vizRequest: Integer dispid 2845;
    property appColorLight: WideString readonly dispid 2847;
    property appColorMedium: WideString readonly dispid 2848;
    property appColorDark: WideString readonly dispid 2849;
    property toolbarButtonHighlight: WideString readonly dispid 2856;
    property toolbarButtonShadow: WideString readonly dispid 2857;
    property toolbarButtonFace: WideString readonly dispid 2858;
    property itemPlayingColor: WideString readonly dispid 2850;
    property itemPlayingBackgroundColor: WideString readonly dispid 2851;
    property itemErrorColor: WideString readonly dispid 2852;
    property appColorLimited: WordBool readonly dispid 2853;
    property appColorBlackBackground: WordBool dispid 2854;
    property appColorVideoBorder: WideString dispid 2855;
    property appColorAux1: WideString readonly dispid 2869;
    property appColorAux2: WideString readonly dispid 2870;
    property appColorAux3: WideString readonly dispid 2871;
    property appColorAux4: WideString readonly dispid 2872;
    property appColorAux5: WideString readonly dispid 2873;
    property appColorAux6: WideString readonly dispid 2874;
    property appColorAux7: WideString readonly dispid 2875;
    property appColorAux8: WideString readonly dispid 2876;
    property appColorAux9: WideString readonly dispid 2877;
    property appColorAux10: WideString readonly dispid 2878;
    property appColorAux11: WideString readonly dispid 2879;
    property appColorAux12: WideString readonly dispid 2880;
    property appColorAux13: WideString readonly dispid 2881;
    property appColorAux14: WideString readonly dispid 2882;
    property appColorAux15: WideString readonly dispid 2883;
    property status: WideString dispid 2884;
    property userWMPSettingsView: WideString readonly dispid 2859;
    property userWMPSettingsPreset: Integer readonly dispid 2860;
    property userWMPShowSettings: WordBool readonly dispid 2861;
    property userWMPMetadataView: WideString readonly dispid 2862;
    property userWMPMetadataPreset: Integer readonly dispid 2863;
    property userWMPShowMetadata: WordBool readonly dispid 2864;
    property captionsHeight: Integer dispid 2865;
    property snapToVideo: WordBool dispid 2866;
    property pinFullScreenControls: WordBool dispid 2867;
    procedure SetLockFullScreen(locked: WordBool; const Val: WideString); dispid 2885;
    property fullScreenLocked: WordBool readonly dispid 2886;
    property isMultiMon: WordBool readonly dispid 2887;
    property exclusiveHueShift: Single dispid 2888;
    property exclusiveSaturation: Single dispid 2889;
    property themeBkgColorIsActive: WordBool dispid 2892;
    property themeBkgColorActive: WideString readonly dispid 2890;
    property themeBkgColorInactive: WideString readonly dispid 2891;
  end;

// *********************************************************************//
// Interface: IWMPBrandDispatch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98BB02D4-ED74-43CC-AD6A-45888F2E0DCC}
// *********************************************************************//
  IWMPBrandDispatch = interface(IDispatch)
    ['{98BB02D4-ED74-43CC-AD6A-45888F2E0DCC}']
    function Get_fullServiceName: WideString; safecall;
    function Get_friendlyName: WideString; safecall;
    function Get_guideButtonText: WideString; safecall;
    function Get_guideButtonTip: WideString; safecall;
    function Get_guideMenuText: WideString; safecall;
    function Get_guideAccText: WideString; safecall;
    function Get_task1ButtonText: WideString; safecall;
    function Get_task1ButtonTip: WideString; safecall;
    function Get_task1MenuText: WideString; safecall;
    function Get_task1AccText: WideString; safecall;
    function Get_guideUrl: WideString; safecall;
    function Get_task1Url: WideString; safecall;
    function Get_imageLargeUrl: WideString; safecall;
    function Get_imageSmallUrl: WideString; safecall;
    function Get_imageMenuUrl: WideString; safecall;
    function Get_infoCenterUrl: WideString; safecall;
    function Get_albumInfoUrl: WideString; safecall;
    function Get_buyCDUrl: WideString; safecall;
    function Get_htmlViewUrl: WideString; safecall;
    function Get_navigateUrl: WideString; safecall;
    function Get_cookieUrl: WideString; safecall;
    function Get_downloadStatusUrl: WideString; safecall;
    function Get_colorPlayer: WideString; safecall;
    function Get_colorPlayerText: WideString; safecall;
    function Get_navigateDispid: Integer; safecall;
    function Get_navigateParams: WideString; safecall;
    function Get_navigatePane: WideString; safecall;
    function Get_selectedPane: WideString; safecall;
    procedure Set_selectedPane(const pVal: WideString); safecall;
    procedure setNavigateProps(const bstrPane: WideString; lDispid: Integer; 
                               const bstrParams: WideString); safecall;
    function getMediaParams(const pObject: IUnknown; const bstrURL: WideString): WideString; safecall;
    procedure Set_selectedTask(Param1: Integer); safecall;
    function Get_contentPartnerSelected: WordBool; safecall;
    property fullServiceName: WideString read Get_fullServiceName;
    property friendlyName: WideString read Get_friendlyName;
    property guideButtonText: WideString read Get_guideButtonText;
    property guideButtonTip: WideString read Get_guideButtonTip;
    property guideMenuText: WideString read Get_guideMenuText;
    property guideAccText: WideString read Get_guideAccText;
    property task1ButtonText: WideString read Get_task1ButtonText;
    property task1ButtonTip: WideString read Get_task1ButtonTip;
    property task1MenuText: WideString read Get_task1MenuText;
    property task1AccText: WideString read Get_task1AccText;
    property guideUrl: WideString read Get_guideUrl;
    property task1Url: WideString read Get_task1Url;
    property imageLargeUrl: WideString read Get_imageLargeUrl;
    property imageSmallUrl: WideString read Get_imageSmallUrl;
    property imageMenuUrl: WideString read Get_imageMenuUrl;
    property infoCenterUrl: WideString read Get_infoCenterUrl;
    property albumInfoUrl: WideString read Get_albumInfoUrl;
    property buyCDUrl: WideString read Get_buyCDUrl;
    property htmlViewUrl: WideString read Get_htmlViewUrl;
    property navigateUrl: WideString read Get_navigateUrl;
    property cookieUrl: WideString read Get_cookieUrl;
    property downloadStatusUrl: WideString read Get_downloadStatusUrl;
    property colorPlayer: WideString read Get_colorPlayer;
    property colorPlayerText: WideString read Get_colorPlayerText;
    property navigateDispid: Integer read Get_navigateDispid;
    property navigateParams: WideString read Get_navigateParams;
    property navigatePane: WideString read Get_navigatePane;
    property selectedPane: WideString read Get_selectedPane write Set_selectedPane;
    property selectedTask: Integer write Set_selectedTask;
    property contentPartnerSelected: WordBool read Get_contentPartnerSelected;
  end;

// *********************************************************************//
// DispIntf:  IWMPBrandDispatchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98BB02D4-ED74-43CC-AD6A-45888F2E0DCC}
// *********************************************************************//
  IWMPBrandDispatchDisp = dispinterface
    ['{98BB02D4-ED74-43CC-AD6A-45888F2E0DCC}']
    property fullServiceName: WideString readonly dispid 3040;
    property friendlyName: WideString readonly dispid 3000;
    property guideButtonText: WideString readonly dispid 3001;
    property guideButtonTip: WideString readonly dispid 3002;
    property guideMenuText: WideString readonly dispid 3003;
    property guideAccText: WideString readonly dispid 3004;
    property task1ButtonText: WideString readonly dispid 3005;
    property task1ButtonTip: WideString readonly dispid 3006;
    property task1MenuText: WideString readonly dispid 3007;
    property task1AccText: WideString readonly dispid 3008;
    property guideUrl: WideString readonly dispid 3017;
    property task1Url: WideString readonly dispid 3018;
    property imageLargeUrl: WideString readonly dispid 3021;
    property imageSmallUrl: WideString readonly dispid 3022;
    property imageMenuUrl: WideString readonly dispid 3023;
    property infoCenterUrl: WideString readonly dispid 3024;
    property albumInfoUrl: WideString readonly dispid 3025;
    property buyCDUrl: WideString readonly dispid 3026;
    property htmlViewUrl: WideString readonly dispid 3027;
    property navigateUrl: WideString readonly dispid 3028;
    property cookieUrl: WideString readonly dispid 3029;
    property downloadStatusUrl: WideString readonly dispid 3030;
    property colorPlayer: WideString readonly dispid 3031;
    property colorPlayerText: WideString readonly dispid 3032;
    property navigateDispid: Integer readonly dispid 3035;
    property navigateParams: WideString readonly dispid 3036;
    property navigatePane: WideString readonly dispid 3037;
    property selectedPane: WideString dispid 3038;
    procedure setNavigateProps(const bstrPane: WideString; lDispid: Integer; 
                               const bstrParams: WideString); dispid 3041;
    function getMediaParams(const pObject: IUnknown; const bstrURL: WideString): WideString; dispid 3042;
    property selectedTask: Integer writeonly dispid 3039;
    property contentPartnerSelected: WordBool readonly dispid 3043;
  end;

// *********************************************************************//
// Interface: IWMPNowPlayingHelperDispatch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {504F112E-77CC-4E3C-A073-5371B31D9B36}
// *********************************************************************//
  IWMPNowPlayingHelperDispatch = interface(IDispatch)
    ['{504F112E-77CC-4E3C-A073-5371B31D9B36}']
    function Get_viewFriendlyName(const bstrView: WideString): WideString; safecall;
    function Get_viewPresetCount(const bstrView: WideString): Integer; safecall;
    function Get_viewPresetName(const bstrView: WideString; nPresetIndex: Integer): WideString; safecall;
    function Get_effectFriendlyName(const bstrEffect: WideString): WideString; safecall;
    function Get_effectPresetName(const bstrEffect: WideString; nPresetIndex: Integer): WideString; safecall;
    function resolveDisplayView(fSafe: WordBool): WideString; safecall;
    function isValidDisplayView(const bstrView: WideString): WordBool; safecall;
    function getSkinFile: WideString; safecall;
    function Get_captionsAvailable: WordBool; safecall;
    function Get_linkAvailable: Integer; safecall;
    function Get_linkRequest: Integer; safecall;
    procedure Set_linkRequest(pVal: Integer); safecall;
    function Get_linkRequestParams: WideString; safecall;
    procedure Set_linkRequestParams(const pVal: WideString); safecall;
    function getCurrentArtID(fLargeArt: WordBool): Integer; safecall;
    function getTimeString(dTime: Double): WideString; safecall;
    function getCurrentScriptCommand(const bstrType: WideString): WideString; safecall;
    procedure calcLayout(lWidth: Integer; lHeight: Integer; vbCaptions: WordBool; vbBanner: WordBool); safecall;
    function getLayoutSize(nProp: Integer): Integer; safecall;
    function getRootPlaylist(const pPlaylist: IDispatch): IDispatch; safecall;
    function getHTMLViewURL: WideString; safecall;
    function Get_canSendLink: WordBool; safecall;
    procedure sendLink(dblStartTime: Double; dblEndTime: Double); safecall;
    function Get_editObj: IUnknown; safecall;
    procedure Set_editObj(const ppVal: IUnknown); safecall;
    function getStatusString(const bstrStatusId: WideString): WideString; safecall;
    function getStatusPct(const bstrStatusId: WideString): Integer; safecall;
    function getStatusResult(const bstrStatusId: WideString): Integer; safecall;
    function getStatusIcon(const bstrStatusId: WideString): Integer; safecall;
    function getStatusIdList: WideString; safecall;
    function Get_notificationString: WideString; safecall;
    function Get_htmlViewBaseURL: WideString; safecall;
    procedure Set_htmlViewBaseURL(const pVal: WideString); safecall;
    function Get_htmlViewFullURL: WideString; safecall;
    procedure Set_htmlViewFullURL(const pVal: WideString); safecall;
    function Get_htmlViewSecureLock: Integer; safecall;
    procedure Set_htmlViewSecureLock(pVal: Integer); safecall;
    function Get_htmlViewBusy: WordBool; safecall;
    procedure Set_htmlViewBusy(pVal: WordBool); safecall;
    function Get_htmlViewShowCert: WordBool; safecall;
    procedure Set_htmlViewShowCert(pVal: WordBool); safecall;
    function Get_previousEnabled: WordBool; safecall;
    procedure Set_previousEnabled(pVal: WordBool); safecall;
    function Get_doPreviousNow: WordBool; safecall;
    procedure Set_doPreviousNow(pVal: WordBool); safecall;
    function Get_DPI: Integer; safecall;
    procedure clearColors; safecall;
    function Get_lastMessage: WideString; safecall;
    procedure Set_lastMessage(const pVal: WideString); safecall;
    function Get_inVistaPlus: WordBool; safecall;
    function Get_isBidi: WordBool; safecall;
    property viewFriendlyName[const bstrView: WideString]: WideString read Get_viewFriendlyName;
    property viewPresetCount[const bstrView: WideString]: Integer read Get_viewPresetCount;
    property viewPresetName[const bstrView: WideString; nPresetIndex: Integer]: WideString read Get_viewPresetName;
    property effectFriendlyName[const bstrEffect: WideString]: WideString read Get_effectFriendlyName;
    property effectPresetName[const bstrEffect: WideString; nPresetIndex: Integer]: WideString read Get_effectPresetName;
    property captionsAvailable: WordBool read Get_captionsAvailable;
    property linkAvailable: Integer read Get_linkAvailable;
    property linkRequest: Integer read Get_linkRequest write Set_linkRequest;
    property linkRequestParams: WideString read Get_linkRequestParams write Set_linkRequestParams;
    property canSendLink: WordBool read Get_canSendLink;
    property editObj: IUnknown read Get_editObj write Set_editObj;
    property notificationString: WideString read Get_notificationString;
    property htmlViewBaseURL: WideString read Get_htmlViewBaseURL write Set_htmlViewBaseURL;
    property htmlViewFullURL: WideString read Get_htmlViewFullURL write Set_htmlViewFullURL;
    property htmlViewSecureLock: Integer read Get_htmlViewSecureLock write Set_htmlViewSecureLock;
    property htmlViewBusy: WordBool read Get_htmlViewBusy write Set_htmlViewBusy;
    property htmlViewShowCert: WordBool read Get_htmlViewShowCert write Set_htmlViewShowCert;
    property previousEnabled: WordBool read Get_previousEnabled write Set_previousEnabled;
    property doPreviousNow: WordBool read Get_doPreviousNow write Set_doPreviousNow;
    property DPI: Integer read Get_DPI;
    property lastMessage: WideString read Get_lastMessage write Set_lastMessage;
    property inVistaPlus: WordBool read Get_inVistaPlus;
    property isBidi: WordBool read Get_isBidi;
  end;

// *********************************************************************//
// DispIntf:  IWMPNowPlayingHelperDispatchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {504F112E-77CC-4E3C-A073-5371B31D9B36}
// *********************************************************************//
  IWMPNowPlayingHelperDispatchDisp = dispinterface
    ['{504F112E-77CC-4E3C-A073-5371B31D9B36}']
    property viewFriendlyName[const bstrView: WideString]: WideString readonly dispid 2901;
    property viewPresetCount[const bstrView: WideString]: Integer readonly dispid 2902;
    property viewPresetName[const bstrView: WideString; nPresetIndex: Integer]: WideString readonly dispid 2903;
    property effectFriendlyName[const bstrEffect: WideString]: WideString readonly dispid 2904;
    property effectPresetName[const bstrEffect: WideString; nPresetIndex: Integer]: WideString readonly dispid 2905;
    function resolveDisplayView(fSafe: WordBool): WideString; dispid 2909;
    function isValidDisplayView(const bstrView: WideString): WordBool; dispid 2910;
    function getSkinFile: WideString; dispid 2911;
    property captionsAvailable: WordBool readonly dispid 2912;
    property linkAvailable: Integer readonly dispid 2913;
    property linkRequest: Integer dispid 2914;
    property linkRequestParams: WideString dispid 2915;
    function getCurrentArtID(fLargeArt: WordBool): Integer; dispid 2917;
    function getTimeString(dTime: Double): WideString; dispid 2918;
    function getCurrentScriptCommand(const bstrType: WideString): WideString; dispid 2919;
    procedure calcLayout(lWidth: Integer; lHeight: Integer; vbCaptions: WordBool; vbBanner: WordBool); dispid 2920;
    function getLayoutSize(nProp: Integer): Integer; dispid 2921;
    function getRootPlaylist(const pPlaylist: IDispatch): IDispatch; dispid 2922;
    function getHTMLViewURL: WideString; dispid 2923;
    property canSendLink: WordBool readonly dispid 2924;
    procedure sendLink(dblStartTime: Double; dblEndTime: Double); dispid 2925;
    property editObj: IUnknown dispid 2926;
    function getStatusString(const bstrStatusId: WideString): WideString; dispid 2927;
    function getStatusPct(const bstrStatusId: WideString): Integer; dispid 2939;
    function getStatusResult(const bstrStatusId: WideString): Integer; dispid 2940;
    function getStatusIcon(const bstrStatusId: WideString): Integer; dispid 2941;
    function getStatusIdList: WideString; dispid 2942;
    property notificationString: WideString readonly dispid 2928;
    property htmlViewBaseURL: WideString dispid 2930;
    property htmlViewFullURL: WideString dispid 2933;
    property htmlViewSecureLock: Integer dispid 2929;
    property htmlViewBusy: WordBool dispid 2931;
    property htmlViewShowCert: WordBool dispid 2932;
    property previousEnabled: WordBool dispid 2934;
    property doPreviousNow: WordBool dispid 2935;
    property DPI: Integer readonly dispid 2936;
    procedure clearColors; dispid 2937;
    property lastMessage: WideString dispid 2938;
    property inVistaPlus: WordBool readonly dispid 2943;
    property isBidi: WordBool readonly dispid 2944;
  end;

// *********************************************************************//
// Interface: IWMPNowDoingDispatch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A2E0DA3-19FA-4F82-BE18-CD7D7A3B977F}
// *********************************************************************//
  IWMPNowDoingDispatch = interface(IDispatch)
    ['{2A2E0DA3-19FA-4F82-BE18-CD7D7A3B977F}']
    procedure buyContent; safecall;
    procedure hideBasket; safecall;
    function Get_DPI: Integer; safecall;
    function Get_mode: WideString; safecall;
    procedure Set_burn_selectedDrive(pVal: Integer); safecall;
    function Get_burn_selectedDrive: Integer; safecall;
    function Get_sync_selectedDevice: Integer; safecall;
    procedure Set_sync_selectedDevice(pVal: Integer); safecall;
    function Get_burn_numDiscsSpanned: Integer; safecall;
    function Get_editPlaylist: IDispatch; safecall;
    function Get_burn_mediaType: WideString; safecall;
    function Get_burn_contentType: WideString; safecall;
    function Get_burn_freeSpace: Integer; safecall;
    function Get_burn_totalSpace: Integer; safecall;
    function Get_burn_driveName: WideString; safecall;
    function Get_burn_numDevices: Integer; safecall;
    function Get_burn_spaceToUse: Integer; safecall;
    function Get_sync_spaceToUse: Integer; safecall;
    function Get_sync_spaceUsed: Integer; safecall;
    function Get_sync_totalSpace: Integer; safecall;
    function Get_sync_deviceName: WideString; safecall;
    function Get_sync_numDevices: Integer; safecall;
    function Get_sync_oemName: WideString; safecall;
    procedure logData(const ID: WideString; const data: WideString); safecall;
    function formatTime(value: Integer): WideString; safecall;
    property DPI: Integer read Get_DPI;
    property mode: WideString read Get_mode;
    property burn_selectedDrive: Integer read Get_burn_selectedDrive write Set_burn_selectedDrive;
    property sync_selectedDevice: Integer read Get_sync_selectedDevice write Set_sync_selectedDevice;
    property burn_numDiscsSpanned: Integer read Get_burn_numDiscsSpanned;
    property editPlaylist: IDispatch read Get_editPlaylist;
    property burn_mediaType: WideString read Get_burn_mediaType;
    property burn_contentType: WideString read Get_burn_contentType;
    property burn_freeSpace: Integer read Get_burn_freeSpace;
    property burn_totalSpace: Integer read Get_burn_totalSpace;
    property burn_driveName: WideString read Get_burn_driveName;
    property burn_numDevices: Integer read Get_burn_numDevices;
    property burn_spaceToUse: Integer read Get_burn_spaceToUse;
    property sync_spaceToUse: Integer read Get_sync_spaceToUse;
    property sync_spaceUsed: Integer read Get_sync_spaceUsed;
    property sync_totalSpace: Integer read Get_sync_totalSpace;
    property sync_deviceName: WideString read Get_sync_deviceName;
    property sync_numDevices: Integer read Get_sync_numDevices;
    property sync_oemName: WideString read Get_sync_oemName;
  end;

// *********************************************************************//
// DispIntf:  IWMPNowDoingDispatchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A2E0DA3-19FA-4F82-BE18-CD7D7A3B977F}
// *********************************************************************//
  IWMPNowDoingDispatchDisp = dispinterface
    ['{2A2E0DA3-19FA-4F82-BE18-CD7D7A3B977F}']
    procedure buyContent; dispid 3217;
    procedure hideBasket; dispid 3218;
    property DPI: Integer readonly dispid 3219;
    property mode: WideString readonly dispid 3200;
    property burn_selectedDrive: Integer dispid 3206;
    property sync_selectedDevice: Integer dispid 3214;
    property burn_numDiscsSpanned: Integer readonly dispid 3208;
    property editPlaylist: IDispatch readonly dispid 3221;
    property burn_mediaType: WideString readonly dispid 3201;
    property burn_contentType: WideString readonly dispid 3202;
    property burn_freeSpace: Integer readonly dispid 3203;
    property burn_totalSpace: Integer readonly dispid 3204;
    property burn_driveName: WideString readonly dispid 3205;
    property burn_numDevices: Integer readonly dispid 3207;
    property burn_spaceToUse: Integer readonly dispid 3209;
    property sync_spaceToUse: Integer readonly dispid 3210;
    property sync_spaceUsed: Integer readonly dispid 3211;
    property sync_totalSpace: Integer readonly dispid 3212;
    property sync_deviceName: WideString readonly dispid 3213;
    property sync_numDevices: Integer readonly dispid 3215;
    property sync_oemName: WideString readonly dispid 3216;
    procedure logData(const ID: WideString; const data: WideString); dispid 3220;
    function formatTime(value: Integer): WideString; dispid 3222;
  end;

// *********************************************************************//
// DispIntf:  IWMPButtonCtrlEvents
// Flags:     (4096) Dispatchable
// GUID:      {BB17FFF7-1692-4555-918A-6AF7BFACEDD2}
// *********************************************************************//
  IWMPButtonCtrlEvents = dispinterface
    ['{BB17FFF7-1692-4555-918A-6AF7BFACEDD2}']
    procedure onclick; dispid 5120;
  end;

// *********************************************************************//
// Interface: IWMPButtonCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {87291B50-0C8E-11D3-BB2A-00A0C93CA73A}
// *********************************************************************//
  IWMPButtonCtrl = interface(IDispatch)
    ['{87291B50-0C8E-11D3-BB2A-00A0C93CA73A}']
    function Get_image: WideString; safecall;
    procedure Set_image(const pVal: WideString); safecall;
    function Get_hoverImage: WideString; safecall;
    procedure Set_hoverImage(const pVal: WideString); safecall;
    function Get_downImage: WideString; safecall;
    procedure Set_downImage(const pVal: WideString); safecall;
    function Get_disabledImage: WideString; safecall;
    procedure Set_disabledImage(const pVal: WideString); safecall;
    function Get_hoverDownImage: WideString; safecall;
    procedure Set_hoverDownImage(const pVal: WideString); safecall;
    function Get_tiled: WordBool; safecall;
    procedure Set_tiled(pVal: WordBool); safecall;
    function Get_transparencyColor: WideString; safecall;
    procedure Set_transparencyColor(const pVal: WideString); safecall;
    function Get_down: WordBool; safecall;
    procedure Set_down(pVal: WordBool); safecall;
    function Get_sticky: WordBool; safecall;
    procedure Set_sticky(pVal: WordBool); safecall;
    function Get_upToolTip: WideString; safecall;
    procedure Set_upToolTip(const pVal: WideString); safecall;
    function Get_downToolTip: WideString; safecall;
    procedure Set_downToolTip(const pVal: WideString); safecall;
    function Get_cursor: WideString; safecall;
    procedure Set_cursor(const pVal: WideString); safecall;
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property hoverDownImage: WideString read Get_hoverDownImage write Set_hoverDownImage;
    property tiled: WordBool read Get_tiled write Set_tiled;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property down: WordBool read Get_down write Set_down;
    property sticky: WordBool read Get_sticky write Set_sticky;
    property upToolTip: WideString read Get_upToolTip write Set_upToolTip;
    property downToolTip: WideString read Get_downToolTip write Set_downToolTip;
    property cursor: WideString read Get_cursor write Set_cursor;
  end;

// *********************************************************************//
// DispIntf:  IWMPButtonCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {87291B50-0C8E-11D3-BB2A-00A0C93CA73A}
// *********************************************************************//
  IWMPButtonCtrlDisp = dispinterface
    ['{87291B50-0C8E-11D3-BB2A-00A0C93CA73A}']
    property image: WideString dispid 5102;
    property hoverImage: WideString dispid 5103;
    property downImage: WideString dispid 5104;
    property disabledImage: WideString dispid 5105;
    property hoverDownImage: WideString dispid 5106;
    property tiled: WordBool dispid 5107;
    property transparencyColor: WideString dispid 5108;
    property down: WordBool dispid 5109;
    property sticky: WordBool dispid 5110;
    property upToolTip: WideString dispid 5112;
    property downToolTip: WideString dispid 5113;
    property cursor: WideString dispid 5114;
  end;

// *********************************************************************//
// Interface: IWMPListBoxCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC1880CE-83B9-43A7-A066-C44CE8C82583}
// *********************************************************************//
  IWMPListBoxCtrl = interface(IDispatch)
    ['{FC1880CE-83B9-43A7-A066-C44CE8C82583}']
    function Get_selectedItem: Integer; safecall;
    procedure Set_selectedItem(pnPos: Integer); safecall;
    function Get_sorted: WordBool; safecall;
    procedure Set_sorted(pVal: WordBool); safecall;
    function Get_multiselect: WordBool; safecall;
    procedure Set_multiselect(pVal: WordBool); safecall;
    function Get_readOnly: WordBool; safecall;
    procedure Set_readOnly(pVal: WordBool); safecall;
    function Get_foregroundColor: WideString; safecall;
    procedure Set_foregroundColor(const pVal: WideString); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_fontSize: Integer; safecall;
    procedure Set_fontSize(pVal: Integer); safecall;
    function Get_fontStyle: WideString; safecall;
    procedure Set_fontStyle(const pVal: WideString); safecall;
    function Get_fontFace: WideString; safecall;
    procedure Set_fontFace(const pVal: WideString); safecall;
    function Get_itemCount: Integer; safecall;
    function Get_firstVisibleItem: Integer; safecall;
    procedure Set_firstVisibleItem(pVal: Integer); safecall;
    procedure Set_popUp(Param1: WordBool); safecall;
    function Get_focusItem: Integer; safecall;
    procedure Set_focusItem(pVal: Integer); safecall;
    function Get_border: WordBool; safecall;
    procedure Set_border(pVal: WordBool); safecall;
    function getItem(nPos: Integer): WideString; safecall;
    procedure insertItem(nPos: Integer; const newVal: WideString); safecall;
    procedure appendItem(const newVal: WideString); safecall;
    procedure replaceItem(nPos: Integer; const newVal: WideString); safecall;
    procedure deleteItem(nPos: Integer); safecall;
    procedure deleteAll; safecall;
    function findItem(nStartIndex: Integer; const newVal: WideString): Integer; safecall;
    function getNextSelectedItem(nStartIndex: Integer): Integer; safecall;
    procedure setSelectedState(nPos: Integer; vbSelected: WordBool); safecall;
    procedure show; safecall;
    procedure dismiss; safecall;
    property selectedItem: Integer read Get_selectedItem write Set_selectedItem;
    property sorted: WordBool read Get_sorted write Set_sorted;
    property multiselect: WordBool read Get_multiselect write Set_multiselect;
    property readOnly: WordBool read Get_readOnly write Set_readOnly;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property itemCount: Integer read Get_itemCount;
    property firstVisibleItem: Integer read Get_firstVisibleItem write Set_firstVisibleItem;
    property popUp: WordBool write Set_popUp;
    property focusItem: Integer read Get_focusItem write Set_focusItem;
    property border: WordBool read Get_border write Set_border;
  end;

// *********************************************************************//
// DispIntf:  IWMPListBoxCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC1880CE-83B9-43A7-A066-C44CE8C82583}
// *********************************************************************//
  IWMPListBoxCtrlDisp = dispinterface
    ['{FC1880CE-83B9-43A7-A066-C44CE8C82583}']
    property selectedItem: Integer dispid 6108;
    property sorted: WordBool dispid 6100;
    property multiselect: WordBool dispid 6101;
    property readOnly: WordBool dispid 6102;
    property foregroundColor: WideString dispid 6103;
    property backgroundColor: WideString dispid 6104;
    property fontSize: Integer dispid 6105;
    property fontStyle: WideString dispid 6106;
    property fontFace: WideString dispid 6107;
    property itemCount: Integer readonly dispid 6109;
    property firstVisibleItem: Integer dispid 6110;
    property popUp: WordBool writeonly dispid 6120;
    property focusItem: Integer dispid 6121;
    property border: WordBool dispid 6125;
    function getItem(nPos: Integer): WideString; dispid 6111;
    procedure insertItem(nPos: Integer; const newVal: WideString); dispid 6112;
    procedure appendItem(const newVal: WideString); dispid 6113;
    procedure replaceItem(nPos: Integer; const newVal: WideString); dispid 6114;
    procedure deleteItem(nPos: Integer); dispid 6115;
    procedure deleteAll; dispid 6116;
    function findItem(nStartIndex: Integer; const newVal: WideString): Integer; dispid 6117;
    function getNextSelectedItem(nStartIndex: Integer): Integer; dispid 6118;
    procedure setSelectedState(nPos: Integer; vbSelected: WordBool); dispid 6122;
    procedure show; dispid 6123;
    procedure dismiss; dispid 6124;
  end;

// *********************************************************************//
// Interface: IWMPListBoxItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D255DFB8-C22A-42CF-B8B7-F15D7BCF65D6}
// *********************************************************************//
  IWMPListBoxItem = interface(IDispatch)
    ['{D255DFB8-C22A-42CF-B8B7-F15D7BCF65D6}']
    procedure Set_value(const Param1: WideString); safecall;
    property value: WideString write Set_value;
  end;

// *********************************************************************//
// DispIntf:  IWMPListBoxItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D255DFB8-C22A-42CF-B8B7-F15D7BCF65D6}
// *********************************************************************//
  IWMPListBoxItemDisp = dispinterface
    ['{D255DFB8-C22A-42CF-B8B7-F15D7BCF65D6}']
    property value: WideString writeonly dispid 6119;
  end;

// *********************************************************************//
// Interface: IWMPPlaylistCtrlColumn
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63D9D30F-AE4C-4678-8CA8-5720F4FE4419}
// *********************************************************************//
  IWMPPlaylistCtrlColumn = interface(IDispatch)
    ['{63D9D30F-AE4C-4678-8CA8-5720F4FE4419}']
    function Get_columnName: WideString; safecall;
    procedure Set_columnName(const pVal: WideString); safecall;
    function Get_columnID: WideString; safecall;
    procedure Set_columnID(const pVal: WideString); safecall;
    function Get_columnResizeMode: WideString; safecall;
    procedure Set_columnResizeMode(const pVal: WideString); safecall;
    function Get_columnWidth: Integer; safecall;
    procedure Set_columnWidth(pVal: Integer); safecall;
    property columnName: WideString read Get_columnName write Set_columnName;
    property columnID: WideString read Get_columnID write Set_columnID;
    property columnResizeMode: WideString read Get_columnResizeMode write Set_columnResizeMode;
    property columnWidth: Integer read Get_columnWidth write Set_columnWidth;
  end;

// *********************************************************************//
// DispIntf:  IWMPPlaylistCtrlColumnDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63D9D30F-AE4C-4678-8CA8-5720F4FE4419}
// *********************************************************************//
  IWMPPlaylistCtrlColumnDisp = dispinterface
    ['{63D9D30F-AE4C-4678-8CA8-5720F4FE4419}']
    property columnName: WideString dispid 5670;
    property columnID: WideString dispid 5671;
    property columnResizeMode: WideString dispid 5672;
    property columnWidth: Integer dispid 5673;
  end;

// *********************************************************************//
// DispIntf:  IWMPSliderCtrlEvents
// Flags:     (4096) Dispatchable
// GUID:      {CDAC14D2-8BE4-11D3-BB48-00A0C93CA73A}
// *********************************************************************//
  IWMPSliderCtrlEvents = dispinterface
    ['{CDAC14D2-8BE4-11D3-BB48-00A0C93CA73A}']
    procedure ondragbegin; dispid 5430;
    procedure ondragend; dispid 5431;
    procedure onpositionchange; dispid 5432;
  end;

// *********************************************************************//
// Interface: IWMPSliderCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F2BF2C8F-405F-11D3-BB39-00A0C93CA73A}
// *********************************************************************//
  IWMPSliderCtrl = interface(IDispatch)
    ['{F2BF2C8F-405F-11D3-BB39-00A0C93CA73A}']
    function Get_direction: WideString; safecall;
    procedure Set_direction(const pVal: WideString); safecall;
    function Get_slide: WordBool; safecall;
    procedure Set_slide(pVal: WordBool); safecall;
    function Get_tiled: WordBool; safecall;
    procedure Set_tiled(pVal: WordBool); safecall;
    function Get_foregroundColor: WideString; safecall;
    procedure Set_foregroundColor(const pVal: WideString); safecall;
    function Get_foregroundEndColor: WideString; safecall;
    procedure Set_foregroundEndColor(const pVal: WideString); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_backgroundEndColor: WideString; safecall;
    procedure Set_backgroundEndColor(const pVal: WideString); safecall;
    function Get_disabledColor: WideString; safecall;
    procedure Set_disabledColor(const pVal: WideString); safecall;
    function Get_transparencyColor: WideString; safecall;
    procedure Set_transparencyColor(const pVal: WideString); safecall;
    function Get_foregroundImage: WideString; safecall;
    procedure Set_foregroundImage(const pVal: WideString); safecall;
    function Get_backgroundImage: WideString; safecall;
    procedure Set_backgroundImage(const pVal: WideString); safecall;
    function Get_backgroundHoverImage: WideString; safecall;
    procedure Set_backgroundHoverImage(const pVal: WideString); safecall;
    function Get_disabledImage: WideString; safecall;
    procedure Set_disabledImage(const pVal: WideString); safecall;
    function Get_thumbImage: WideString; safecall;
    procedure Set_thumbImage(const pVal: WideString); safecall;
    function Get_thumbHoverImage: WideString; safecall;
    procedure Set_thumbHoverImage(const pVal: WideString); safecall;
    function Get_thumbDownImage: WideString; safecall;
    procedure Set_thumbDownImage(const pVal: WideString); safecall;
    function Get_thumbDisabledImage: WideString; safecall;
    procedure Set_thumbDisabledImage(const pVal: WideString); safecall;
    function Get_min: Single; safecall;
    procedure Set_min(pVal: Single); safecall;
    function Get_max: Single; safecall;
    procedure Set_max(pVal: Single); safecall;
    function Get_value: Single; safecall;
    procedure Set_value(pVal: Single); safecall;
    function Get_toolTip: WideString; safecall;
    procedure Set_toolTip(const pVal: WideString); safecall;
    function Get_cursor: WideString; safecall;
    procedure Set_cursor(const pVal: WideString); safecall;
    function Get_borderSize: SYSINT; safecall;
    procedure Set_borderSize(pVal: SYSINT); safecall;
    function Get_foregroundHoverImage: WideString; safecall;
    procedure Set_foregroundHoverImage(const pVal: WideString); safecall;
    function Get_foregroundProgress: Single; safecall;
    procedure Set_foregroundProgress(pVal: Single); safecall;
    function Get_useForegroundProgress: WordBool; safecall;
    procedure Set_useForegroundProgress(pVal: WordBool); safecall;
    property direction: WideString read Get_direction write Set_direction;
    property slide: WordBool read Get_slide write Set_slide;
    property tiled: WordBool read Get_tiled write Set_tiled;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property foregroundEndColor: WideString read Get_foregroundEndColor write Set_foregroundEndColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property backgroundEndColor: WideString read Get_backgroundEndColor write Set_backgroundEndColor;
    property disabledColor: WideString read Get_disabledColor write Set_disabledColor;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property foregroundImage: WideString read Get_foregroundImage write Set_foregroundImage;
    property backgroundImage: WideString read Get_backgroundImage write Set_backgroundImage;
    property backgroundHoverImage: WideString read Get_backgroundHoverImage write Set_backgroundHoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property thumbImage: WideString read Get_thumbImage write Set_thumbImage;
    property thumbHoverImage: WideString read Get_thumbHoverImage write Set_thumbHoverImage;
    property thumbDownImage: WideString read Get_thumbDownImage write Set_thumbDownImage;
    property thumbDisabledImage: WideString read Get_thumbDisabledImage write Set_thumbDisabledImage;
    property min: Single read Get_min write Set_min;
    property max: Single read Get_max write Set_max;
    property value: Single read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property cursor: WideString read Get_cursor write Set_cursor;
    property borderSize: SYSINT read Get_borderSize write Set_borderSize;
    property foregroundHoverImage: WideString read Get_foregroundHoverImage write Set_foregroundHoverImage;
    property foregroundProgress: Single read Get_foregroundProgress write Set_foregroundProgress;
    property useForegroundProgress: WordBool read Get_useForegroundProgress write Set_useForegroundProgress;
  end;

// *********************************************************************//
// DispIntf:  IWMPSliderCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F2BF2C8F-405F-11D3-BB39-00A0C93CA73A}
// *********************************************************************//
  IWMPSliderCtrlDisp = dispinterface
    ['{F2BF2C8F-405F-11D3-BB39-00A0C93CA73A}']
    property direction: WideString dispid 5400;
    property slide: WordBool dispid 5402;
    property tiled: WordBool dispid 5403;
    property foregroundColor: WideString dispid 5404;
    property foregroundEndColor: WideString dispid 5405;
    property backgroundColor: WideString dispid 5406;
    property backgroundEndColor: WideString dispid 5407;
    property disabledColor: WideString dispid 5408;
    property transparencyColor: WideString dispid 5409;
    property foregroundImage: WideString dispid 5410;
    property backgroundImage: WideString dispid 5411;
    property backgroundHoverImage: WideString dispid 5412;
    property disabledImage: WideString dispid 5413;
    property thumbImage: WideString dispid 5414;
    property thumbHoverImage: WideString dispid 5415;
    property thumbDownImage: WideString dispid 5416;
    property thumbDisabledImage: WideString dispid 5417;
    property min: Single dispid 5418;
    property max: Single dispid 5419;
    property value: Single dispid 5420;
    property toolTip: WideString dispid 5421;
    property cursor: WideString dispid 5422;
    property borderSize: SYSINT dispid 5423;
    property foregroundHoverImage: WideString dispid 5424;
    property foregroundProgress: Single dispid 5425;
    property useForegroundProgress: WordBool dispid 5426;
  end;

// *********************************************************************//
// DispIntf:  IWMPVideoCtrlEvents
// Flags:     (4096) Dispatchable
// GUID:      {A85C0477-714C-4A06-B9F6-7C8CA38B45DC}
// *********************************************************************//
  IWMPVideoCtrlEvents = dispinterface
    ['{A85C0477-714C-4A06-B9F6-7C8CA38B45DC}']
    procedure onvideostart; dispid 5720;
    procedure onvideoend; dispid 5721;
  end;

// *********************************************************************//
// Interface: IWMPVideoCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {61CECF10-FC3A-11D2-A1CD-005004602752}
// *********************************************************************//
  IWMPVideoCtrl = interface(IDispatch)
    ['{61CECF10-FC3A-11D2-A1CD-005004602752}']
    procedure Set_windowless(pbClipped: WordBool); safecall;
    function Get_windowless: WordBool; safecall;
    procedure Set_cursor(const pbstrCursor: WideString); safecall;
    function Get_cursor: WideString; safecall;
    procedure Set_backgroundColor(const pbstrColor: WideString); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_maintainAspectRatio(pbMaintainAspectRatio: WordBool); safecall;
    function Get_maintainAspectRatio: WordBool; safecall;
    procedure Set_toolTip(const bstrToolTip: WideString); safecall;
    function Get_toolTip: WideString; safecall;
    function Get_fullScreen: WordBool; safecall;
    procedure Set_fullScreen(pbFullScreen: WordBool); safecall;
    procedure Set_shrinkToFit(pbShrinkToFit: WordBool); safecall;
    function Get_shrinkToFit: WordBool; safecall;
    procedure Set_stretchToFit(pbStretchToFit: WordBool); safecall;
    function Get_stretchToFit: WordBool; safecall;
    procedure Set_zoom(pzoom: Integer); safecall;
    function Get_zoom: Integer; safecall;
    property windowless: WordBool read Get_windowless write Set_windowless;
    property cursor: WideString read Get_cursor write Set_cursor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property maintainAspectRatio: WordBool read Get_maintainAspectRatio write Set_maintainAspectRatio;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property shrinkToFit: WordBool read Get_shrinkToFit write Set_shrinkToFit;
    property stretchToFit: WordBool read Get_stretchToFit write Set_stretchToFit;
    property zoom: Integer read Get_zoom write Set_zoom;
  end;

// *********************************************************************//
// DispIntf:  IWMPVideoCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {61CECF10-FC3A-11D2-A1CD-005004602752}
// *********************************************************************//
  IWMPVideoCtrlDisp = dispinterface
    ['{61CECF10-FC3A-11D2-A1CD-005004602752}']
    property windowless: WordBool dispid 5700;
    property cursor: WideString dispid 5701;
    property backgroundColor: WideString dispid 5702;
    property maintainAspectRatio: WordBool dispid 5704;
    property toolTip: WideString dispid 5706;
    property fullScreen: WordBool dispid 5707;
    property shrinkToFit: WordBool dispid 5703;
    property stretchToFit: WordBool dispid 5708;
    property zoom: Integer dispid 5709;
  end;

// *********************************************************************//
// Interface: IWMPEffectsCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9EFAB80-0A60-4C3F-BBD1-4558DD2A9769}
// *********************************************************************//
  IWMPEffectsCtrl = interface(IDispatch)
    ['{A9EFAB80-0A60-4C3F-BBD1-4558DD2A9769}']
    function Get_windowed: WordBool; safecall;
    procedure Set_windowed(pVal: WordBool); safecall;
    function Get_allowAll: WordBool; safecall;
    procedure Set_allowAll(pVal: WordBool); safecall;
    procedure Set_currentEffectType(const pVal: WideString); safecall;
    function Get_currentEffectType: WideString; safecall;
    function Get_currentEffectTitle: WideString; safecall;
    procedure next; safecall;
    procedure previous; safecall;
    procedure settings; safecall;
    function Get_currentEffect: IDispatch; safecall;
    procedure Set_currentEffect(const p: IDispatch); safecall;
    procedure nextEffect; safecall;
    procedure previousEffect; safecall;
    procedure nextPreset; safecall;
    procedure previousPreset; safecall;
    function Get_currentPreset: Integer; safecall;
    procedure Set_currentPreset(pVal: Integer); safecall;
    function Get_currentPresetTitle: WideString; safecall;
    function Get_currentEffectPresetCount: Integer; safecall;
    function Get_fullScreen: WordBool; safecall;
    procedure Set_fullScreen(pbFullScreen: WordBool); safecall;
    function Get_effectCanGoFullScreen: WordBool; safecall;
    function Get_effectHasPropertyPage: WordBool; safecall;
    function Get_effectCount: Integer; safecall;
    function Get_effectTitle(index: Integer): WideString; safecall;
    function Get_effectType(index: Integer): WideString; safecall;
    property windowed: WordBool read Get_windowed write Set_windowed;
    property allowAll: WordBool read Get_allowAll write Set_allowAll;
    property currentEffectType: WideString read Get_currentEffectType write Set_currentEffectType;
    property currentEffectTitle: WideString read Get_currentEffectTitle;
    property currentEffect: IDispatch read Get_currentEffect write Set_currentEffect;
    property currentPreset: Integer read Get_currentPreset write Set_currentPreset;
    property currentPresetTitle: WideString read Get_currentPresetTitle;
    property currentEffectPresetCount: Integer read Get_currentEffectPresetCount;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property effectCanGoFullScreen: WordBool read Get_effectCanGoFullScreen;
    property effectHasPropertyPage: WordBool read Get_effectHasPropertyPage;
    property effectCount: Integer read Get_effectCount;
    property effectTitle[index: Integer]: WideString read Get_effectTitle;
    property effectType[index: Integer]: WideString read Get_effectType;
  end;

// *********************************************************************//
// DispIntf:  IWMPEffectsCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9EFAB80-0A60-4C3F-BBD1-4558DD2A9769}
// *********************************************************************//
  IWMPEffectsCtrlDisp = dispinterface
    ['{A9EFAB80-0A60-4C3F-BBD1-4558DD2A9769}']
    property windowed: WordBool dispid 5500;
    property allowAll: WordBool dispid 5501;
    property currentEffectType: WideString dispid 5507;
    property currentEffectTitle: WideString readonly dispid 5506;
    procedure next; dispid 5502;
    procedure previous; dispid 5503;
    procedure settings; dispid 5504;
    property currentEffect: IDispatch dispid 5505;
    procedure nextEffect; dispid 5509;
    procedure previousEffect; dispid 5510;
    procedure nextPreset; dispid 5511;
    procedure previousPreset; dispid 5512;
    property currentPreset: Integer dispid 5513;
    property currentPresetTitle: WideString readonly dispid 5514;
    property currentEffectPresetCount: Integer readonly dispid 5515;
    property fullScreen: WordBool dispid 5516;
    property effectCanGoFullScreen: WordBool readonly dispid 5517;
    property effectHasPropertyPage: WordBool readonly dispid 5518;
    property effectCount: Integer readonly dispid 5520;
    property effectTitle[index: Integer]: WideString readonly dispid 5521;
    property effectType[index: Integer]: WideString readonly dispid 5522;
  end;

// *********************************************************************//
// Interface: IWMPEqualizerSettingsCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2BD3716F-A914-49FB-8655-996D5F495498}
// *********************************************************************//
  IWMPEqualizerSettingsCtrl = interface(IDispatch)
    ['{2BD3716F-A914-49FB-8655-996D5F495498}']
    function Get_bypass: WordBool; safecall;
    procedure Set_bypass(pVal: WordBool); safecall;
    function Get_gainLevel1: Single; safecall;
    procedure Set_gainLevel1(pflLevel: Single); safecall;
    function Get_gainLevel2: Single; safecall;
    procedure Set_gainLevel2(pflLevel: Single); safecall;
    function Get_gainLevel3: Single; safecall;
    procedure Set_gainLevel3(pflLevel: Single); safecall;
    function Get_gainLevel4: Single; safecall;
    procedure Set_gainLevel4(pflLevel: Single); safecall;
    function Get_gainLevel5: Single; safecall;
    procedure Set_gainLevel5(pflLevel: Single); safecall;
    function Get_gainLevel6: Single; safecall;
    procedure Set_gainLevel6(pflLevel: Single); safecall;
    function Get_gainLevel7: Single; safecall;
    procedure Set_gainLevel7(pflLevel: Single); safecall;
    function Get_gainLevel8: Single; safecall;
    procedure Set_gainLevel8(pflLevel: Single); safecall;
    function Get_gainLevel9: Single; safecall;
    procedure Set_gainLevel9(pflLevel: Single); safecall;
    function Get_gainLevel10: Single; safecall;
    procedure Set_gainLevel10(pflLevel: Single); safecall;
    function Get_gainLevels(iIndex: Integer): Single; safecall;
    procedure Set_gainLevels(iIndex: Integer; pflLevel: Single); safecall;
    procedure reset; safecall;
    function Get_bands: Integer; safecall;
    procedure nextPreset; safecall;
    procedure previousPreset; safecall;
    function Get_currentPreset: Integer; safecall;
    procedure Set_currentPreset(pVal: Integer); safecall;
    function Get_currentPresetTitle: WideString; safecall;
    function Get_presetCount: Integer; safecall;
    function Get_enhancedAudio: WordBool; safecall;
    procedure Set_enhancedAudio(pfVal: WordBool); safecall;
    function Get_speakerSize: Integer; safecall;
    procedure Set_speakerSize(plVal: Integer); safecall;
    function Get_currentSpeakerName: WideString; safecall;
    function Get_truBassLevel: Integer; safecall;
    procedure Set_truBassLevel(plTruBassLevel: Integer); safecall;
    function Get_wowLevel: Integer; safecall;
    procedure Set_wowLevel(plWowLevel: Integer); safecall;
    function Get_splineTension: Single; safecall;
    procedure Set_splineTension(pflSplineTension: Single); safecall;
    function Get_enableSplineTension: WordBool; safecall;
    procedure Set_enableSplineTension(pfEnableSplineTension: WordBool); safecall;
    function Get_presetTitle(iIndex: Integer): WideString; safecall;
    function Get_normalization: WordBool; safecall;
    procedure Set_normalization(pfVal: WordBool); safecall;
    function Get_normalizationAverage: Single; safecall;
    function Get_normalizationPeak: Single; safecall;
    function Get_crossFade: WordBool; safecall;
    procedure Set_crossFade(pfVal: WordBool); safecall;
    function Get_crossFadeWindow: Integer; safecall;
    procedure Set_crossFadeWindow(plWindow: Integer); safecall;
    property bypass: WordBool read Get_bypass write Set_bypass;
    property gainLevel1: Single read Get_gainLevel1 write Set_gainLevel1;
    property gainLevel2: Single read Get_gainLevel2 write Set_gainLevel2;
    property gainLevel3: Single read Get_gainLevel3 write Set_gainLevel3;
    property gainLevel4: Single read Get_gainLevel4 write Set_gainLevel4;
    property gainLevel5: Single read Get_gainLevel5 write Set_gainLevel5;
    property gainLevel6: Single read Get_gainLevel6 write Set_gainLevel6;
    property gainLevel7: Single read Get_gainLevel7 write Set_gainLevel7;
    property gainLevel8: Single read Get_gainLevel8 write Set_gainLevel8;
    property gainLevel9: Single read Get_gainLevel9 write Set_gainLevel9;
    property gainLevel10: Single read Get_gainLevel10 write Set_gainLevel10;
    property gainLevels[iIndex: Integer]: Single read Get_gainLevels write Set_gainLevels;
    property bands: Integer read Get_bands;
    property currentPreset: Integer read Get_currentPreset write Set_currentPreset;
    property currentPresetTitle: WideString read Get_currentPresetTitle;
    property presetCount: Integer read Get_presetCount;
    property enhancedAudio: WordBool read Get_enhancedAudio write Set_enhancedAudio;
    property speakerSize: Integer read Get_speakerSize write Set_speakerSize;
    property currentSpeakerName: WideString read Get_currentSpeakerName;
    property truBassLevel: Integer read Get_truBassLevel write Set_truBassLevel;
    property wowLevel: Integer read Get_wowLevel write Set_wowLevel;
    property splineTension: Single read Get_splineTension write Set_splineTension;
    property enableSplineTension: WordBool read Get_enableSplineTension write Set_enableSplineTension;
    property presetTitle[iIndex: Integer]: WideString read Get_presetTitle;
    property normalization: WordBool read Get_normalization write Set_normalization;
    property normalizationAverage: Single read Get_normalizationAverage;
    property normalizationPeak: Single read Get_normalizationPeak;
    property crossFade: WordBool read Get_crossFade write Set_crossFade;
    property crossFadeWindow: Integer read Get_crossFadeWindow write Set_crossFadeWindow;
  end;

// *********************************************************************//
// DispIntf:  IWMPEqualizerSettingsCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2BD3716F-A914-49FB-8655-996D5F495498}
// *********************************************************************//
  IWMPEqualizerSettingsCtrlDisp = dispinterface
    ['{2BD3716F-A914-49FB-8655-996D5F495498}']
    property bypass: WordBool dispid 5800;
    property gainLevel1: Single dispid 5804;
    property gainLevel2: Single dispid 5805;
    property gainLevel3: Single dispid 5806;
    property gainLevel4: Single dispid 5807;
    property gainLevel5: Single dispid 5808;
    property gainLevel6: Single dispid 5809;
    property gainLevel7: Single dispid 5810;
    property gainLevel8: Single dispid 5811;
    property gainLevel9: Single dispid 5812;
    property gainLevel10: Single dispid 5813;
    property gainLevels[iIndex: Integer]: Single dispid 5815;
    procedure reset; dispid 5814;
    property bands: Integer readonly dispid 5801;
    procedure nextPreset; dispid 5816;
    procedure previousPreset; dispid 5817;
    property currentPreset: Integer dispid 5818;
    property currentPresetTitle: WideString readonly dispid 5819;
    property presetCount: Integer readonly dispid 5820;
    property enhancedAudio: WordBool dispid 5821;
    property speakerSize: Integer dispid 5822;
    property currentSpeakerName: WideString readonly dispid 5823;
    property truBassLevel: Integer dispid 5824;
    property wowLevel: Integer dispid 5825;
    property splineTension: Single dispid 5827;
    property enableSplineTension: WordBool dispid 5826;
    property presetTitle[iIndex: Integer]: WideString readonly dispid 5828;
    property normalization: WordBool dispid 5829;
    property normalizationAverage: Single readonly dispid 5830;
    property normalizationPeak: Single readonly dispid 5831;
    property crossFade: WordBool dispid 5832;
    property crossFadeWindow: Integer dispid 5833;
  end;

// *********************************************************************//
// Interface: IWMPVideoSettingsCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07EC23DA-EF73-4BDE-A40F-F269E0B7AFD6}
// *********************************************************************//
  IWMPVideoSettingsCtrl = interface(IDispatch)
    ['{07EC23DA-EF73-4BDE-A40F-F269E0B7AFD6}']
    function Get_brightness: Integer; safecall;
    procedure Set_brightness(pVal: Integer); safecall;
    function Get_contrast: Integer; safecall;
    procedure Set_contrast(pVal: Integer); safecall;
    function Get_hue: Integer; safecall;
    procedure Set_hue(pVal: Integer); safecall;
    function Get_saturation: Integer; safecall;
    procedure Set_saturation(pVal: Integer); safecall;
    procedure reset; safecall;
    property brightness: Integer read Get_brightness write Set_brightness;
    property contrast: Integer read Get_contrast write Set_contrast;
    property hue: Integer read Get_hue write Set_hue;
    property saturation: Integer read Get_saturation write Set_saturation;
  end;

// *********************************************************************//
// DispIntf:  IWMPVideoSettingsCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07EC23DA-EF73-4BDE-A40F-F269E0B7AFD6}
// *********************************************************************//
  IWMPVideoSettingsCtrlDisp = dispinterface
    ['{07EC23DA-EF73-4BDE-A40F-F269E0B7AFD6}']
    property brightness: Integer dispid 5900;
    property contrast: Integer dispid 5901;
    property hue: Integer dispid 5902;
    property saturation: Integer dispid 5903;
    procedure reset; dispid 5904;
  end;

// *********************************************************************//
// Interface: IWMPLibraryTreeCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B738FCAE-F089-45DF-AED6-034B9E7DB632}
// *********************************************************************//
  IWMPLibraryTreeCtrl = interface(IDispatch)
    ['{B738FCAE-F089-45DF-AED6-034B9E7DB632}']
    function Get_dropDownVisible: WordBool; safecall;
    procedure Set_dropDownVisible(pVal: WordBool); safecall;
    function Get_foregroundColor: WideString; safecall;
    procedure Set_foregroundColor(const pVal: WideString); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_fontSize: Integer; safecall;
    procedure Set_fontSize(pVal: Integer); safecall;
    function Get_fontStyle: WideString; safecall;
    procedure Set_fontStyle(const pVal: WideString); safecall;
    function Get_fontFace: WideString; safecall;
    procedure Set_fontFace(const pVal: WideString); safecall;
    function Get_filter: WideString; safecall;
    procedure Set_filter(const pVal: WideString); safecall;
    function Get_expandState: WideString; safecall;
    procedure Set_expandState(const pVal: WideString); safecall;
    function Get_Playlist: IWMPPlaylist; safecall;
    procedure Set_Playlist(const ppPlaylist: IWMPPlaylist); safecall;
    function Get_selectedPlaylist: IWMPPlaylist; safecall;
    function Get_selectedMedia: IWMPMedia; safecall;
    property dropDownVisible: WordBool read Get_dropDownVisible write Set_dropDownVisible;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property filter: WideString read Get_filter write Set_filter;
    property expandState: WideString read Get_expandState write Set_expandState;
    property Playlist: IWMPPlaylist read Get_Playlist write Set_Playlist;
    property selectedPlaylist: IWMPPlaylist read Get_selectedPlaylist;
    property selectedMedia: IWMPMedia read Get_selectedMedia;
  end;

// *********************************************************************//
// DispIntf:  IWMPLibraryTreeCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B738FCAE-F089-45DF-AED6-034B9E7DB632}
// *********************************************************************//
  IWMPLibraryTreeCtrlDisp = dispinterface
    ['{B738FCAE-F089-45DF-AED6-034B9E7DB632}']
    property dropDownVisible: WordBool dispid 6401;
    property foregroundColor: WideString dispid 6402;
    property backgroundColor: WideString dispid 6403;
    property fontSize: Integer dispid 6404;
    property fontStyle: WideString dispid 6405;
    property fontFace: WideString dispid 6406;
    property filter: WideString dispid 6407;
    property expandState: WideString dispid 6408;
    property Playlist: IWMPPlaylist dispid 6409;
    property selectedPlaylist: IWMPPlaylist readonly dispid 6410;
    property selectedMedia: IWMPMedia readonly dispid 6411;
  end;

// *********************************************************************//
// Interface: IWMPEditCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70E1217C-C617-4CFD-BD8A-69CA2043E70B}
// *********************************************************************//
  IWMPEditCtrl = interface(IDispatch)
    ['{70E1217C-C617-4CFD-BD8A-69CA2043E70B}']
    function Get_value: WideString; safecall;
    procedure Set_value(const pVal: WideString); safecall;
    function Get_border: WordBool; safecall;
    procedure Set_border(pVal: WordBool); safecall;
    function Get_justification: WideString; safecall;
    procedure Set_justification(const pVal: WideString); safecall;
    function Get_editStyle: WideString; safecall;
    procedure Set_editStyle(const pVal: WideString); safecall;
    function Get_wordWrap: WordBool; safecall;
    procedure Set_wordWrap(pVal: WordBool); safecall;
    function Get_readOnly: WordBool; safecall;
    procedure Set_readOnly(pVal: WordBool); safecall;
    function Get_foregroundColor: WideString; safecall;
    procedure Set_foregroundColor(const pVal: WideString); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_fontSize: Integer; safecall;
    procedure Set_fontSize(pVal: Integer); safecall;
    function Get_fontStyle: WideString; safecall;
    procedure Set_fontStyle(const pVal: WideString); safecall;
    function Get_fontFace: WideString; safecall;
    procedure Set_fontFace(const pVal: WideString); safecall;
    function Get_textLimit: Integer; safecall;
    procedure Set_textLimit(pVal: Integer); safecall;
    function Get_lineCount: Integer; safecall;
    function getLine(nIndex: Integer): WideString; safecall;
    function getSelectionStart: Integer; safecall;
    function getSelectionEnd: Integer; safecall;
    procedure setSelection(nStart: Integer; nEnd: Integer); safecall;
    procedure replaceSelection(const newVal: WideString); safecall;
    function getLineIndex(nIndex: Integer): Integer; safecall;
    function getLineFromChar(nPosition: Integer): Integer; safecall;
    property value: WideString read Get_value write Set_value;
    property border: WordBool read Get_border write Set_border;
    property justification: WideString read Get_justification write Set_justification;
    property editStyle: WideString read Get_editStyle write Set_editStyle;
    property wordWrap: WordBool read Get_wordWrap write Set_wordWrap;
    property readOnly: WordBool read Get_readOnly write Set_readOnly;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property textLimit: Integer read Get_textLimit write Set_textLimit;
    property lineCount: Integer read Get_lineCount;
  end;

// *********************************************************************//
// DispIntf:  IWMPEditCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70E1217C-C617-4CFD-BD8A-69CA2043E70B}
// *********************************************************************//
  IWMPEditCtrlDisp = dispinterface
    ['{70E1217C-C617-4CFD-BD8A-69CA2043E70B}']
    property value: WideString dispid 0;
    property border: WordBool dispid 6000;
    property justification: WideString dispid 6001;
    property editStyle: WideString dispid 6002;
    property wordWrap: WordBool dispid 6003;
    property readOnly: WordBool dispid 6004;
    property foregroundColor: WideString dispid 6005;
    property backgroundColor: WideString dispid 6006;
    property fontSize: Integer dispid 6007;
    property fontStyle: WideString dispid 6008;
    property fontFace: WideString dispid 6009;
    property textLimit: Integer dispid 6010;
    property lineCount: Integer readonly dispid 6011;
    function getLine(nIndex: Integer): WideString; dispid 6012;
    function getSelectionStart: Integer; dispid 6013;
    function getSelectionEnd: Integer; dispid 6014;
    procedure setSelection(nStart: Integer; nEnd: Integer); dispid 6015;
    procedure replaceSelection(const newVal: WideString); dispid 6016;
    function getLineIndex(nIndex: Integer): Integer; dispid 6017;
    function getLineFromChar(nPosition: Integer): Integer; dispid 6018;
  end;

// *********************************************************************//
// Interface: IWMPPluginUIHost
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5D0AD945-289E-45C5-A9C6-F301F0152108}
// *********************************************************************//
  IWMPPluginUIHost = interface(IDispatch)
    ['{5D0AD945-289E-45C5-A9C6-F301F0152108}']
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_objectID: WideString; safecall;
    procedure Set_objectID(const pVal: WideString); safecall;
    function getProperty(const bstrName: WideString): OleVariant; safecall;
    procedure setProperty(const bstrName: WideString; newVal: OleVariant); safecall;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property objectID: WideString read Get_objectID write Set_objectID;
  end;

// *********************************************************************//
// DispIntf:  IWMPPluginUIHostDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5D0AD945-289E-45C5-A9C6-F301F0152108}
// *********************************************************************//
  IWMPPluginUIHostDisp = dispinterface
    ['{5D0AD945-289E-45C5-A9C6-F301F0152108}']
    property backgroundColor: WideString dispid 6201;
    property objectID: WideString dispid 6202;
    function getProperty(const bstrName: WideString): OleVariant; dispid 6203;
    procedure setProperty(const bstrName: WideString; newVal: OleVariant); dispid 6204;
  end;

// *********************************************************************//
// Interface: IWMPMenuCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {158A7ADC-33DA-4039-A553-BDDBBE389F5C}
// *********************************************************************//
  IWMPMenuCtrl = interface(IDispatch)
    ['{158A7ADC-33DA-4039-A553-BDDBBE389F5C}']
    procedure deleteAllItems; safecall;
    procedure appendItem(nID: Integer; const bstrItem: WideString); safecall;
    procedure appendSeparator; safecall;
    procedure enableItem(nID: Integer; newVal: WordBool); safecall;
    procedure checkItem(nID: Integer; newVal: WordBool); safecall;
    procedure checkRadioItem(nID: Integer; newVal: WordBool); safecall;
    function Get_showFlags: Integer; safecall;
    procedure Set_showFlags(pVal: Integer); safecall;
    function show: Integer; safecall;
    procedure showEx(nID: Integer); safecall;
    property showFlags: Integer read Get_showFlags write Set_showFlags;
  end;

// *********************************************************************//
// DispIntf:  IWMPMenuCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {158A7ADC-33DA-4039-A553-BDDBBE389F5C}
// *********************************************************************//
  IWMPMenuCtrlDisp = dispinterface
    ['{158A7ADC-33DA-4039-A553-BDDBBE389F5C}']
    procedure deleteAllItems; dispid 6301;
    procedure appendItem(nID: Integer; const bstrItem: WideString); dispid 6302;
    procedure appendSeparator; dispid 6303;
    procedure enableItem(nID: Integer; newVal: WordBool); dispid 6304;
    procedure checkItem(nID: Integer; newVal: WordBool); dispid 6305;
    procedure checkRadioItem(nID: Integer; newVal: WordBool); dispid 6306;
    property showFlags: Integer dispid 6307;
    function show: Integer; dispid 6308;
    procedure showEx(nID: Integer); dispid 6309;
  end;

// *********************************************************************//
// Interface: IWMPAutoMenuCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1AD13E0B-4F3A-41DF-9BE2-F9E6FE0A7875}
// *********************************************************************//
  IWMPAutoMenuCtrl = interface(IDispatch)
    ['{1AD13E0B-4F3A-41DF-9BE2-F9E6FE0A7875}']
    procedure show(const newVal: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPAutoMenuCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1AD13E0B-4F3A-41DF-9BE2-F9E6FE0A7875}
// *********************************************************************//
  IWMPAutoMenuCtrlDisp = dispinterface
    ['{1AD13E0B-4F3A-41DF-9BE2-F9E6FE0A7875}']
    procedure show(const newVal: WideString); dispid 6501;
  end;

// *********************************************************************//
// Interface: IWMPRegionalButtonCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58D507B1-2354-11D3-BD41-00C04F6EA5AE}
// *********************************************************************//
  IWMPRegionalButtonCtrl = interface(IDispatch)
    ['{58D507B1-2354-11D3-BD41-00C04F6EA5AE}']
    function Get_image: WideString; safecall;
    procedure Set_image(const pVal: WideString); safecall;
    function Get_hoverImage: WideString; safecall;
    procedure Set_hoverImage(const pVal: WideString); safecall;
    function Get_downImage: WideString; safecall;
    procedure Set_downImage(const pVal: WideString); safecall;
    function Get_hoverDownImage: WideString; safecall;
    procedure Set_hoverDownImage(const pVal: WideString); safecall;
    function Get_hoverHoverImage: WideString; safecall;
    procedure Set_hoverHoverImage(const pVal: WideString); safecall;
    function Get_disabledImage: WideString; safecall;
    procedure Set_disabledImage(const pVal: WideString); safecall;
    function Get_mappingImage: WideString; safecall;
    procedure Set_mappingImage(const pVal: WideString); safecall;
    function Get_transparencyColor: WideString; safecall;
    procedure Set_transparencyColor(const pVal: WideString); safecall;
    function Get_cursor: WideString; safecall;
    procedure Set_cursor(const pVal: WideString); safecall;
    function Get_showBackground: WordBool; safecall;
    procedure Set_showBackground(pVal: WordBool); safecall;
    function Get_radio: WordBool; safecall;
    procedure Set_radio(pVal: WordBool); safecall;
    function Get_buttonCount: Integer; safecall;
    function createButton: IDispatch; safecall;
    function getButton(nButton: Integer): IDispatch; safecall;
    procedure Click(nButton: Integer); safecall;
    function Get_hueShift: Single; safecall;
    procedure Set_hueShift(pVal: Single); safecall;
    function Get_saturation: Single; safecall;
    procedure Set_saturation(pVal: Single); safecall;
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property hoverDownImage: WideString read Get_hoverDownImage write Set_hoverDownImage;
    property hoverHoverImage: WideString read Get_hoverHoverImage write Set_hoverHoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property mappingImage: WideString read Get_mappingImage write Set_mappingImage;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property cursor: WideString read Get_cursor write Set_cursor;
    property showBackground: WordBool read Get_showBackground write Set_showBackground;
    property radio: WordBool read Get_radio write Set_radio;
    property buttonCount: Integer read Get_buttonCount;
    property hueShift: Single read Get_hueShift write Set_hueShift;
    property saturation: Single read Get_saturation write Set_saturation;
  end;

// *********************************************************************//
// DispIntf:  IWMPRegionalButtonCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58D507B1-2354-11D3-BD41-00C04F6EA5AE}
// *********************************************************************//
  IWMPRegionalButtonCtrlDisp = dispinterface
    ['{58D507B1-2354-11D3-BD41-00C04F6EA5AE}']
    property image: WideString dispid 5300;
    property hoverImage: WideString dispid 5301;
    property downImage: WideString dispid 5302;
    property hoverDownImage: WideString dispid 5303;
    property hoverHoverImage: WideString dispid 5317;
    property disabledImage: WideString dispid 5304;
    property mappingImage: WideString dispid 5305;
    property transparencyColor: WideString dispid 5306;
    property cursor: WideString dispid 5308;
    property showBackground: WordBool dispid 5309;
    property radio: WordBool dispid 5310;
    property buttonCount: Integer readonly dispid 5311;
    function createButton: IDispatch; dispid 5312;
    function getButton(nButton: Integer): IDispatch; dispid 5313;
    procedure Click(nButton: Integer); dispid 5314;
    property hueShift: Single dispid 5315;
    property saturation: Single dispid 5316;
  end;

// *********************************************************************//
// DispIntf:  IWMPRegionalButtonEvents
// Flags:     (4096) Dispatchable
// GUID:      {50FC8D31-67AC-11D3-BD4C-00C04F6EA5AE}
// *********************************************************************//
  IWMPRegionalButtonEvents = dispinterface
    ['{50FC8D31-67AC-11D3-BD4C-00C04F6EA5AE}']
    procedure onblur; dispid 5360;
    procedure onfocus; dispid 5361;
    procedure onclick; dispid 5362;
    procedure ondblclick; dispid 5363;
    procedure onmousedown; dispid 5364;
    procedure onmouseup; dispid 5365;
    procedure onmousemove; dispid 5366;
    procedure onmouseover; dispid 5367;
    procedure onmouseout; dispid 5368;
    procedure onkeypress; dispid 5369;
    procedure onkeydown; dispid 5370;
    procedure onkeyup; dispid 5371;
  end;

// *********************************************************************//
// Interface: IWMPRegionalButton
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58D507B2-2354-11D3-BD41-00C04F6EA5AE}
// *********************************************************************//
  IWMPRegionalButton = interface(IDispatch)
    ['{58D507B2-2354-11D3-BD41-00C04F6EA5AE}']
    function Get_upToolTip: WideString; safecall;
    procedure Set_upToolTip(const pVal: WideString); safecall;
    function Get_downToolTip: WideString; safecall;
    procedure Set_downToolTip(const pVal: WideString); safecall;
    function Get_mappingColor: WideString; safecall;
    procedure Set_mappingColor(const pVal: WideString); safecall;
    function Get_enabled: WordBool; safecall;
    procedure Set_enabled(pVal: WordBool); safecall;
    function Get_sticky: WordBool; safecall;
    procedure Set_sticky(pVal: WordBool); safecall;
    function Get_down: WordBool; safecall;
    procedure Set_down(pVal: WordBool); safecall;
    function Get_index: Integer; safecall;
    function Get_tabStop: WordBool; safecall;
    procedure Set_tabStop(pVal: WordBool); safecall;
    function Get_cursor: WideString; safecall;
    procedure Set_cursor(const pVal: WideString); safecall;
    procedure Click; safecall;
    function Get_accName: WideString; safecall;
    procedure Set_accName(const pszName: WideString); safecall;
    function Get_accDescription: WideString; safecall;
    procedure Set_accDescription(const pszDescription: WideString); safecall;
    function Get_accKeyboardShortcut: WideString; safecall;
    procedure Set_accKeyboardShortcut(const pszShortcut: WideString); safecall;
    property upToolTip: WideString read Get_upToolTip write Set_upToolTip;
    property downToolTip: WideString read Get_downToolTip write Set_downToolTip;
    property mappingColor: WideString read Get_mappingColor write Set_mappingColor;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property sticky: WordBool read Get_sticky write Set_sticky;
    property down: WordBool read Get_down write Set_down;
    property index: Integer read Get_index;
    property tabStop: WordBool read Get_tabStop write Set_tabStop;
    property cursor: WideString read Get_cursor write Set_cursor;
    property accName: WideString read Get_accName write Set_accName;
    property accDescription: WideString read Get_accDescription write Set_accDescription;
    property accKeyboardShortcut: WideString read Get_accKeyboardShortcut write Set_accKeyboardShortcut;
  end;

// *********************************************************************//
// DispIntf:  IWMPRegionalButtonDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58D507B2-2354-11D3-BD41-00C04F6EA5AE}
// *********************************************************************//
  IWMPRegionalButtonDisp = dispinterface
    ['{58D507B2-2354-11D3-BD41-00C04F6EA5AE}']
    property upToolTip: WideString dispid 5330;
    property downToolTip: WideString dispid 5331;
    property mappingColor: WideString dispid 5332;
    property enabled: WordBool dispid 5333;
    property sticky: WordBool dispid 5339;
    property down: WordBool dispid 5340;
    property index: Integer readonly dispid 5341;
    property tabStop: WordBool dispid 5342;
    property cursor: WideString dispid 5343;
    procedure Click; dispid 5344;
    property accName: WideString dispid 5345;
    property accDescription: WideString dispid 5346;
    property accKeyboardShortcut: WideString dispid 5347;
  end;

// *********************************************************************//
// DispIntf:  IWMPCustomSliderCtrlEvents
// Flags:     (4096) Dispatchable
// GUID:      {95F45AA4-ED0A-11D2-BA67-0000F80855E6}
// *********************************************************************//
  IWMPCustomSliderCtrlEvents = dispinterface
    ['{95F45AA4-ED0A-11D2-BA67-0000F80855E6}']
    procedure ondragbegin; dispid 5020;
    procedure ondragend; dispid 5021;
    procedure onpositionchange; dispid 5022;
  end;

// *********************************************************************//
// Interface: IWMPCustomSlider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {95F45AA2-ED0A-11D2-BA67-0000F80855E6}
// *********************************************************************//
  IWMPCustomSlider = interface(IDispatch)
    ['{95F45AA2-ED0A-11D2-BA67-0000F80855E6}']
    function Get_cursor: WideString; safecall;
    procedure Set_cursor(const pVal: WideString); safecall;
    function Get_min: Single; safecall;
    procedure Set_min(pVal: Single); safecall;
    function Get_max: Single; safecall;
    procedure Set_max(pVal: Single); safecall;
    function Get_value: Single; safecall;
    procedure Set_value(pVal: Single); safecall;
    function Get_toolTip: WideString; safecall;
    procedure Set_toolTip(const pVal: WideString); safecall;
    function Get_positionImage: WideString; safecall;
    procedure Set_positionImage(const pVal: WideString); safecall;
    function Get_image: WideString; safecall;
    procedure Set_image(const pVal: WideString); safecall;
    function Get_hoverImage: WideString; safecall;
    procedure Set_hoverImage(const pVal: WideString); safecall;
    function Get_disabledImage: WideString; safecall;
    procedure Set_disabledImage(const pVal: WideString); safecall;
    function Get_downImage: WideString; safecall;
    procedure Set_downImage(const pVal: WideString); safecall;
    function Get_transparencyColor: WideString; safecall;
    procedure Set_transparencyColor(const pVal: WideString); safecall;
    property cursor: WideString read Get_cursor write Set_cursor;
    property min: Single read Get_min write Set_min;
    property max: Single read Get_max write Set_max;
    property value: Single read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property positionImage: WideString read Get_positionImage write Set_positionImage;
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
  end;

// *********************************************************************//
// DispIntf:  IWMPCustomSliderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {95F45AA2-ED0A-11D2-BA67-0000F80855E6}
// *********************************************************************//
  IWMPCustomSliderDisp = dispinterface
    ['{95F45AA2-ED0A-11D2-BA67-0000F80855E6}']
    property cursor: WideString dispid 5009;
    property min: Single dispid 5005;
    property max: Single dispid 5006;
    property value: Single dispid 5010;
    property toolTip: WideString dispid 5011;
    property positionImage: WideString dispid 5002;
    property image: WideString dispid 5001;
    property hoverImage: WideString dispid 5003;
    property disabledImage: WideString dispid 5004;
    property downImage: WideString dispid 5012;
    property transparencyColor: WideString dispid 5008;
  end;

// *********************************************************************//
// Interface: IWMPTextCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {237DAC8E-0E32-11D3-A2E2-00C04F79F88E}
// *********************************************************************//
  IWMPTextCtrl = interface(IDispatch)
    ['{237DAC8E-0E32-11D3-A2E2-00C04F79F88E}']
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_fontFace: WideString; safecall;
    procedure Set_fontFace(const pVal: WideString); safecall;
    function Get_fontStyle: WideString; safecall;
    procedure Set_fontStyle(const pVal: WideString); safecall;
    function Get_fontSize: Integer; safecall;
    procedure Set_fontSize(pVal: Integer); safecall;
    function Get_foregroundColor: WideString; safecall;
    procedure Set_foregroundColor(const pVal: WideString); safecall;
    function Get_hoverBackgroundColor: WideString; safecall;
    procedure Set_hoverBackgroundColor(const pVal: WideString); safecall;
    function Get_hoverForegroundColor: WideString; safecall;
    procedure Set_hoverForegroundColor(const pVal: WideString); safecall;
    function Get_hoverFontStyle: WideString; safecall;
    procedure Set_hoverFontStyle(const pVal: WideString); safecall;
    function Get_value: WideString; safecall;
    procedure Set_value(const pVal: WideString); safecall;
    function Get_toolTip: WideString; safecall;
    procedure Set_toolTip(const pVal: WideString); safecall;
    function Get_disabledFontStyle: WideString; safecall;
    procedure Set_disabledFontStyle(const pVal: WideString); safecall;
    function Get_disabledForegroundColor: WideString; safecall;
    procedure Set_disabledForegroundColor(const pVal: WideString); safecall;
    function Get_disabledBackgroundColor: WideString; safecall;
    procedure Set_disabledBackgroundColor(const pVal: WideString); safecall;
    function Get_fontSmoothing: WordBool; safecall;
    procedure Set_fontSmoothing(pVal: WordBool); safecall;
    function Get_justification: WideString; safecall;
    procedure Set_justification(const pVal: WideString); safecall;
    function Get_wordWrap: WordBool; safecall;
    procedure Set_wordWrap(pVal: WordBool); safecall;
    function Get_cursor: WideString; safecall;
    procedure Set_cursor(const pVal: WideString); safecall;
    function Get_scrolling: WordBool; safecall;
    procedure Set_scrolling(pVal: WordBool); safecall;
    function Get_scrollingDirection: WideString; safecall;
    procedure Set_scrollingDirection(const pVal: WideString); safecall;
    function Get_scrollingDelay: SYSINT; safecall;
    procedure Set_scrollingDelay(pVal: SYSINT); safecall;
    function Get_scrollingAmount: SYSINT; safecall;
    procedure Set_scrollingAmount(pVal: SYSINT); safecall;
    function Get_textWidth: SYSINT; safecall;
    function Get_onGlass: WordBool; safecall;
    procedure Set_onGlass(pVal: WordBool); safecall;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property hoverBackgroundColor: WideString read Get_hoverBackgroundColor write Set_hoverBackgroundColor;
    property hoverForegroundColor: WideString read Get_hoverForegroundColor write Set_hoverForegroundColor;
    property hoverFontStyle: WideString read Get_hoverFontStyle write Set_hoverFontStyle;
    property value: WideString read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property disabledFontStyle: WideString read Get_disabledFontStyle write Set_disabledFontStyle;
    property disabledForegroundColor: WideString read Get_disabledForegroundColor write Set_disabledForegroundColor;
    property disabledBackgroundColor: WideString read Get_disabledBackgroundColor write Set_disabledBackgroundColor;
    property fontSmoothing: WordBool read Get_fontSmoothing write Set_fontSmoothing;
    property justification: WideString read Get_justification write Set_justification;
    property wordWrap: WordBool read Get_wordWrap write Set_wordWrap;
    property cursor: WideString read Get_cursor write Set_cursor;
    property scrolling: WordBool read Get_scrolling write Set_scrolling;
    property scrollingDirection: WideString read Get_scrollingDirection write Set_scrollingDirection;
    property scrollingDelay: SYSINT read Get_scrollingDelay write Set_scrollingDelay;
    property scrollingAmount: SYSINT read Get_scrollingAmount write Set_scrollingAmount;
    property textWidth: SYSINT read Get_textWidth;
    property onGlass: WordBool read Get_onGlass write Set_onGlass;
  end;

// *********************************************************************//
// DispIntf:  IWMPTextCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {237DAC8E-0E32-11D3-A2E2-00C04F79F88E}
// *********************************************************************//
  IWMPTextCtrlDisp = dispinterface
    ['{237DAC8E-0E32-11D3-A2E2-00C04F79F88E}']
    property backgroundColor: WideString dispid 5201;
    property fontFace: WideString dispid 5206;
    property fontStyle: WideString dispid 5207;
    property fontSize: Integer dispid 5208;
    property foregroundColor: WideString dispid 5209;
    property hoverBackgroundColor: WideString dispid 5210;
    property hoverForegroundColor: WideString dispid 5211;
    property hoverFontStyle: WideString dispid 5212;
    property value: WideString dispid 5213;
    property toolTip: WideString dispid 5214;
    property disabledFontStyle: WideString dispid 5215;
    property disabledForegroundColor: WideString dispid 5216;
    property disabledBackgroundColor: WideString dispid 5217;
    property fontSmoothing: WordBool dispid 5221;
    property justification: WideString dispid 5222;
    property wordWrap: WordBool dispid 5223;
    property cursor: WideString dispid 5224;
    property scrolling: WordBool dispid 5225;
    property scrollingDirection: WideString dispid 5226;
    property scrollingDelay: SYSINT dispid 5227;
    property scrollingAmount: SYSINT dispid 5228;
    property textWidth: SYSINT readonly dispid 5229;
    property onGlass: WordBool dispid 5230;
  end;

// *********************************************************************//
// Interface: ITaskCntrCtrl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {891EADB1-1C45-48B0-B704-49A888DA98C4}
// *********************************************************************//
  ITaskCntrCtrl = interface(IDispatch)
    ['{891EADB1-1C45-48B0-B704-49A888DA98C4}']
    function Get_CurrentContainer: IUnknown; safecall;
    procedure Set_CurrentContainer(const ppUnk: IUnknown); safecall;
    procedure Activate; safecall;
    property CurrentContainer: IUnknown read Get_CurrentContainer write Set_CurrentContainer;
  end;

// *********************************************************************//
// DispIntf:  ITaskCntrCtrlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {891EADB1-1C45-48B0-B704-49A888DA98C4}
// *********************************************************************//
  ITaskCntrCtrlDisp = dispinterface
    ['{891EADB1-1C45-48B0-B704-49A888DA98C4}']
    property CurrentContainer: IUnknown dispid 1610743808;
    procedure Activate; dispid 1610743810;
  end;

// *********************************************************************//
// DispIntf:  _WMPCoreEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D84CCA96-CCE2-11D2-9ECC-0000F8085981}
// *********************************************************************//
  _WMPCoreEvents = dispinterface
    ['{D84CCA96-CCE2-11D2-9ECC-0000F8085981}']
    procedure OpenStateChange(NewState: Integer); dispid 5001;
    procedure PlayStateChange(NewState: Integer); dispid 5101;
    procedure AudioLanguageChange(LangID: Integer); dispid 5102;
    procedure StatusChange; dispid 5002;
    procedure ScriptCommand(const scType: WideString; const Param: WideString); dispid 5301;
    procedure NewStream; dispid 5403;
    procedure Disconnect(Result: Integer); dispid 5401;
    procedure Buffering(Start: WordBool); dispid 5402;
    procedure Error; dispid 5501;
    procedure Warning(WarningType: Integer; Param: Integer; const Description: WideString); dispid 5601;
    procedure EndOfStream(Result: Integer); dispid 5201;
    procedure PositionChange(oldPosition: Double; newPosition: Double); dispid 5202;
    procedure MarkerHit(MarkerNum: Integer); dispid 5203;
    procedure DurationUnitChange(NewDurationUnit: Integer); dispid 5204;
    procedure CdromMediaChange(CdromNum: Integer); dispid 5701;
    procedure PlaylistChange(const Playlist: IDispatch; change: WMPPlaylistChangeEventType); dispid 5801;
    procedure CurrentPlaylistChange(change: WMPPlaylistChangeEventType); dispid 5804;
    procedure CurrentPlaylistItemAvailable(const bstrItemName: WideString); dispid 5805;
    procedure MediaChange(const Item: IDispatch); dispid 5802;
    procedure CurrentMediaItemAvailable(const bstrItemName: WideString); dispid 5803;
    procedure CurrentItemChange(const pdispMedia: IDispatch); dispid 5806;
    procedure MediaCollectionChange; dispid 5807;
    procedure MediaCollectionAttributeStringAdded(const bstrAttribName: WideString; 
                                                  const bstrAttribVal: WideString); dispid 5808;
    procedure MediaCollectionAttributeStringRemoved(const bstrAttribName: WideString; 
                                                    const bstrAttribVal: WideString); dispid 5809;
    procedure MediaCollectionAttributeStringChanged(const bstrAttribName: WideString; 
                                                    const bstrOldAttribVal: WideString; 
                                                    const bstrNewAttribVal: WideString); dispid 5820;
    procedure PlaylistCollectionChange; dispid 5810;
    procedure PlaylistCollectionPlaylistAdded(const bstrPlaylistName: WideString); dispid 5811;
    procedure PlaylistCollectionPlaylistRemoved(const bstrPlaylistName: WideString); dispid 5812;
    procedure PlaylistCollectionPlaylistSetAsDeleted(const bstrPlaylistName: WideString; 
                                                     varfIsDeleted: WordBool); dispid 5818;
    procedure ModeChange(const ModeName: WideString; NewValue: WordBool); dispid 5819;
    procedure MediaError(const pMediaObject: IDispatch); dispid 5821;
    procedure OpenPlaylistSwitch(const pItem: IDispatch); dispid 5823;
    procedure DomainChange(const strDomain: WideString); dispid 5822;
    procedure StringCollectionChange(const pdispStringCollection: IDispatch; 
                                     change: WMPStringCollectionChangeEventType; 
                                     lCollectionIndex: Integer); dispid 5824;
    procedure MediaCollectionMediaAdded(const pdispMedia: IDispatch); dispid 5825;
    procedure MediaCollectionMediaRemoved(const pdispMedia: IDispatch); dispid 5826;
  end;

// *********************************************************************//
// Interface: IWMPGraphEventHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B550945-018F-11D3-B14A-00C04F79FAA6}
// *********************************************************************//
  IWMPGraphEventHandler = interface(IDispatch)
    ['{6B550945-018F-11D3-B14A-00C04F79FAA6}']
    procedure NotifyGraphStateChange(punkGraph: ULONG_PTR; lGraphState: Integer); safecall;
    procedure AsyncNotifyGraphStateChange(punkGraph: ULONG_PTR; lGraphState: Integer); safecall;
    procedure NotifyRateChange(punkGraph: ULONG_PTR; dRate: Double); safecall;
    procedure NotifyPlaybackEnd(punkGraph: ULONG_PTR; const bstrQueuedUrl: WideString; 
                                dwCurrentContext: ULONG_PTR); safecall;
    procedure NotifyStreamEnd(punkGraph: ULONG_PTR); safecall;
    procedure NotifyScriptCommand(punkGraph: ULONG_PTR; const bstrCommand: WideString; 
                                  const bstrParam: WideString); safecall;
    procedure NotifyEarlyScriptCommand(punkGraph: ULONG_PTR; const bstrCommand: WideString; 
                                       const bstrParam: WideString; dTime: Double); safecall;
    procedure NotifyMarkerHit(punkGraph: ULONG_PTR; lMarker: Integer); safecall;
    procedure NotifyGraphError(punkGraph: ULONG_PTR; lErrMajor: Integer; lErrMinor: Integer; 
                               lCondition: Integer; const bstrInfo: WideString; 
                               const punkGraphData: IUnknown); safecall;
    procedure NotifyAcquireCredentials(punkGraph: ULONG_PTR; const bstrRealm: WideString; 
                                       const bstrSite: WideString; const bstrUser: WideString; 
                                       const bstrPassword: WideString; var pdwFlags: LongWord; 
                                       out pfCancel: WordBool); safecall;
    procedure NotifyUntrustedLicense(punkGraph: ULONG_PTR; const bstrURL: WideString; 
                                     out pfCancel: WordBool); safecall;
    procedure NotifyLicenseDialog(punkGraph: ULONG_PTR; const bstrURL: WideString; 
                                  const bstrContent: WideString; var pPostData: Byte; 
                                  dwPostDataSize: LongWord; lResult: Integer); safecall;
    procedure NotifyNeedsIndividualization(punkGraph: ULONG_PTR; out pfResult: WordBool); safecall;
    procedure NotifyNewMetadata(punkGraph: ULONG_PTR); safecall;
    procedure NotifyNewMediaCaps(punkGraph: ULONG_PTR); safecall;
    procedure NotifyDisconnect(punkGraph: ULONG_PTR; lResult: Integer); safecall;
    procedure NotifySave(punkGraph: ULONG_PTR; fStarted: Integer; lResult: Integer); safecall;
    procedure NotifyDelayClose(punkGraph: ULONG_PTR; fDelay: WordBool); safecall;
    procedure NotifyDVD(punkGraph: ULONG_PTR; lEventCode: Integer; lParam1: Integer; 
                        lParam2: Integer); safecall;
    procedure NotifyRequestAppThreadAction(punkGraph: ULONG_PTR; dwAction: LongWord); safecall;
    procedure NotifyPrerollReady(punkGraph: ULONG_PTR); safecall;
    procedure NotifyNewIcons(punkGraph: ULONG_PTR); safecall;
    procedure NotifyStepComplete(punkGraph: ULONG_PTR); safecall;
    procedure NotifyNewBitrate(punkGraph: ULONG_PTR; dwBitrate: LongWord); safecall;
    procedure NotifyGraphCreationPreRender(punkGraph: ULONG_PTR; punkFilterGraph: ULONG_PTR; 
                                           punkCardeaEncConfig: ULONG_PTR; phrContinue: ULONG_PTR; 
                                           hEventToSet: ULONG_PTR); safecall;
    procedure NotifyGraphCreationPostRender(punkGraph: ULONG_PTR; punkFilterGraph: ULONG_PTR; 
                                            phrContinue: ULONG_PTR; hEventToSet: ULONG_PTR); safecall;
    procedure NotifyGraphUserEvent(punkGraph: ULONG_PTR; EventCode: Integer); safecall;
    procedure NotifyRevocation(punkGraph: ULONG_PTR; out pfResult: WordBool); safecall;
    procedure NotifyNeedsWMGraphIndividualization(punkGraph: ULONG_PTR; phWnd: ULONG_PTR; 
                                                  hIndivEvent: ULONG_PTR; out pfCancel: WordBool; 
                                                  out pfResult: WordBool); safecall;
    procedure NotifyNeedsFullscreen(punkGraph: ULONG_PTR); safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPGraphEventHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B550945-018F-11D3-B14A-00C04F79FAA6}
// *********************************************************************//
  IWMPGraphEventHandlerDisp = dispinterface
    ['{6B550945-018F-11D3-B14A-00C04F79FAA6}']
    procedure NotifyGraphStateChange(punkGraph: ULONG_PTR; lGraphState: Integer); dispid 8151;
    procedure AsyncNotifyGraphStateChange(punkGraph: ULONG_PTR; lGraphState: Integer); dispid 8173;
    procedure NotifyRateChange(punkGraph: ULONG_PTR; dRate: Double); dispid 8153;
    procedure NotifyPlaybackEnd(punkGraph: ULONG_PTR; const bstrQueuedUrl: WideString; 
                                dwCurrentContext: ULONG_PTR); dispid 8157;
    procedure NotifyStreamEnd(punkGraph: ULONG_PTR); dispid 8156;
    procedure NotifyScriptCommand(punkGraph: ULONG_PTR; const bstrCommand: WideString; 
                                  const bstrParam: WideString); dispid 8158;
    procedure NotifyEarlyScriptCommand(punkGraph: ULONG_PTR; const bstrCommand: WideString; 
                                       const bstrParam: WideString; dTime: Double); dispid 8172;
    procedure NotifyMarkerHit(punkGraph: ULONG_PTR; lMarker: Integer); dispid 8159;
    procedure NotifyGraphError(punkGraph: ULONG_PTR; lErrMajor: Integer; lErrMinor: Integer; 
                               lCondition: Integer; const bstrInfo: WideString; 
                               const punkGraphData: IUnknown); dispid 8160;
    procedure NotifyAcquireCredentials(punkGraph: ULONG_PTR; const bstrRealm: WideString; 
                                       const bstrSite: WideString; const bstrUser: WideString; 
                                       const bstrPassword: WideString; var pdwFlags: LongWord; 
                                       out pfCancel: WordBool); dispid 8161;
    procedure NotifyUntrustedLicense(punkGraph: ULONG_PTR; const bstrURL: WideString; 
                                     out pfCancel: WordBool); dispid 8178;
    procedure NotifyLicenseDialog(punkGraph: ULONG_PTR; const bstrURL: WideString; 
                                  const bstrContent: WideString; var pPostData: Byte; 
                                  dwPostDataSize: LongWord; lResult: Integer); dispid 8162;
    procedure NotifyNeedsIndividualization(punkGraph: ULONG_PTR; out pfResult: WordBool); dispid 8163;
    procedure NotifyNewMetadata(punkGraph: ULONG_PTR); dispid 8165;
    procedure NotifyNewMediaCaps(punkGraph: ULONG_PTR); dispid 8166;
    procedure NotifyDisconnect(punkGraph: ULONG_PTR; lResult: Integer); dispid 8167;
    procedure NotifySave(punkGraph: ULONG_PTR; fStarted: Integer; lResult: Integer); dispid 8168;
    procedure NotifyDelayClose(punkGraph: ULONG_PTR; fDelay: WordBool); dispid 8169;
    procedure NotifyDVD(punkGraph: ULONG_PTR; lEventCode: Integer; lParam1: Integer; 
                        lParam2: Integer); dispid 8170;
    procedure NotifyRequestAppThreadAction(punkGraph: ULONG_PTR; dwAction: LongWord); dispid 8171;
    procedure NotifyPrerollReady(punkGraph: ULONG_PTR); dispid 8174;
    procedure NotifyNewIcons(punkGraph: ULONG_PTR); dispid 8177;
    procedure NotifyStepComplete(punkGraph: ULONG_PTR); dispid 8179;
    procedure NotifyNewBitrate(punkGraph: ULONG_PTR; dwBitrate: LongWord); dispid 8180;
    procedure NotifyGraphCreationPreRender(punkGraph: ULONG_PTR; punkFilterGraph: ULONG_PTR; 
                                           punkCardeaEncConfig: ULONG_PTR; phrContinue: ULONG_PTR; 
                                           hEventToSet: ULONG_PTR); dispid 8181;
    procedure NotifyGraphCreationPostRender(punkGraph: ULONG_PTR; punkFilterGraph: ULONG_PTR; 
                                            phrContinue: ULONG_PTR; hEventToSet: ULONG_PTR); dispid 8182;
    procedure NotifyGraphUserEvent(punkGraph: ULONG_PTR; EventCode: Integer); dispid 8186;
    procedure NotifyRevocation(punkGraph: ULONG_PTR; out pfResult: WordBool); dispid 8183;
    procedure NotifyNeedsWMGraphIndividualization(punkGraph: ULONG_PTR; phWnd: ULONG_PTR; 
                                                  hIndivEvent: ULONG_PTR; out pfCancel: WordBool; 
                                                  out pfResult: WordBool); dispid 8184;
    procedure NotifyNeedsFullscreen(punkGraph: ULONG_PTR); dispid 8185;
  end;

// *********************************************************************//
// Interface: IBattery
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8578BFA-CD8F-4CE1-A684-5B7E85FCA7DC}
// *********************************************************************//
  IBattery = interface(IDispatch)
    ['{F8578BFA-CD8F-4CE1-A684-5B7E85FCA7DC}']
    function Get_presetCount: Integer; safecall;
    function Get_preset(nIndex: Integer): IDispatch; safecall;
    property presetCount: Integer read Get_presetCount;
    property preset[nIndex: Integer]: IDispatch read Get_preset;
  end;

// *********************************************************************//
// DispIntf:  IBatteryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8578BFA-CD8F-4CE1-A684-5B7E85FCA7DC}
// *********************************************************************//
  IBatteryDisp = dispinterface
    ['{F8578BFA-CD8F-4CE1-A684-5B7E85FCA7DC}']
    property presetCount: Integer readonly dispid 1;
    property preset[nIndex: Integer]: IDispatch readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IBatteryPreset
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {40C6BDE7-9C90-49D4-AD20-BEF81A6C5F22}
// *********************************************************************//
  IBatteryPreset = interface(IDispatch)
    ['{40C6BDE7-9C90-49D4-AD20-BEF81A6C5F22}']
    function Get_title: WideString; safecall;
    procedure Set_title(const pVal: WideString); safecall;
    property title: WideString read Get_title write Set_title;
  end;

// *********************************************************************//
// DispIntf:  IBatteryPresetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {40C6BDE7-9C90-49D4-AD20-BEF81A6C5F22}
// *********************************************************************//
  IBatteryPresetDisp = dispinterface
    ['{40C6BDE7-9C90-49D4-AD20-BEF81A6C5F22}']
    property title: WideString dispid 1;
  end;

// *********************************************************************//
// Interface: IBatteryRandomPreset
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F85E2D65-207D-48DB-84B1-915E1735DB17}
// *********************************************************************//
  IBatteryRandomPreset = interface(IBatteryPreset)
    ['{F85E2D65-207D-48DB-84B1-915E1735DB17}']
  end;

// *********************************************************************//
// DispIntf:  IBatteryRandomPresetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F85E2D65-207D-48DB-84B1-915E1735DB17}
// *********************************************************************//
  IBatteryRandomPresetDisp = dispinterface
    ['{F85E2D65-207D-48DB-84B1-915E1735DB17}']
    property title: WideString dispid 1;
  end;

// *********************************************************************//
// Interface: IBatterySavedPreset
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {876E7208-0172-4EBB-B08B-2E1D30DFE44C}
// *********************************************************************//
  IBatterySavedPreset = interface(IBatteryPreset)
    ['{876E7208-0172-4EBB-B08B-2E1D30DFE44C}']
  end;

// *********************************************************************//
// DispIntf:  IBatterySavedPresetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {876E7208-0172-4EBB-B08B-2E1D30DFE44C}
// *********************************************************************//
  IBatterySavedPresetDisp = dispinterface
    ['{876E7208-0172-4EBB-B08B-2E1D30DFE44C}']
    property title: WideString dispid 1;
  end;

// *********************************************************************//
// Interface: IBarsEffect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33E9291A-F6A9-11D2-9435-00A0C92A2F2D}
// *********************************************************************//
  IBarsEffect = interface(IDispatch)
    ['{33E9291A-F6A9-11D2-9435-00A0C92A2F2D}']
    function Get_displayMode: Integer; safecall;
    procedure Set_displayMode(pVal: Integer); safecall;
    function Get_showPeaks: WordBool; safecall;
    procedure Set_showPeaks(pVal: WordBool); safecall;
    function Get_peakHangTime: Integer; safecall;
    procedure Set_peakHangTime(pVal: Integer); safecall;
    function Get_peakFallbackAcceleration: Single; safecall;
    procedure Set_peakFallbackAcceleration(pVal: Single); safecall;
    function Get_peakFallbackSpeed: Single; safecall;
    procedure Set_peakFallbackSpeed(pVal: Single); safecall;
    function Get_levelFallbackAcceleration: Single; safecall;
    procedure Set_levelFallbackAcceleration(pVal: Single); safecall;
    function Get_levelFallbackSpeed: Single; safecall;
    procedure Set_levelFallbackSpeed(pVal: Single); safecall;
    function Get_backgroundColor: WideString; safecall;
    procedure Set_backgroundColor(const pVal: WideString); safecall;
    function Get_levelColor: WideString; safecall;
    procedure Set_levelColor(const pVal: WideString); safecall;
    function Get_peakColor: WideString; safecall;
    procedure Set_peakColor(const pVal: WideString); safecall;
    function Get_horizontalSpacing: Integer; safecall;
    procedure Set_horizontalSpacing(pVal: Integer); safecall;
    function Get_levelWidth: Integer; safecall;
    procedure Set_levelWidth(pVal: Integer); safecall;
    function Get_levelScale: Single; safecall;
    procedure Set_levelScale(pVal: Single); safecall;
    function Get_fadeRate: Integer; safecall;
    procedure Set_fadeRate(pVal: Integer); safecall;
    function Get_fadeMode: Integer; safecall;
    procedure Set_fadeMode(pVal: Integer); safecall;
    function Get_transparent: WordBool; safecall;
    procedure Set_transparent(pVal: WordBool); safecall;
    property displayMode: Integer read Get_displayMode write Set_displayMode;
    property showPeaks: WordBool read Get_showPeaks write Set_showPeaks;
    property peakHangTime: Integer read Get_peakHangTime write Set_peakHangTime;
    property peakFallbackAcceleration: Single read Get_peakFallbackAcceleration write Set_peakFallbackAcceleration;
    property peakFallbackSpeed: Single read Get_peakFallbackSpeed write Set_peakFallbackSpeed;
    property levelFallbackAcceleration: Single read Get_levelFallbackAcceleration write Set_levelFallbackAcceleration;
    property levelFallbackSpeed: Single read Get_levelFallbackSpeed write Set_levelFallbackSpeed;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property levelColor: WideString read Get_levelColor write Set_levelColor;
    property peakColor: WideString read Get_peakColor write Set_peakColor;
    property horizontalSpacing: Integer read Get_horizontalSpacing write Set_horizontalSpacing;
    property levelWidth: Integer read Get_levelWidth write Set_levelWidth;
    property levelScale: Single read Get_levelScale write Set_levelScale;
    property fadeRate: Integer read Get_fadeRate write Set_fadeRate;
    property fadeMode: Integer read Get_fadeMode write Set_fadeMode;
    property transparent: WordBool read Get_transparent write Set_transparent;
  end;

// *********************************************************************//
// DispIntf:  IBarsEffectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {33E9291A-F6A9-11D2-9435-00A0C92A2F2D}
// *********************************************************************//
  IBarsEffectDisp = dispinterface
    ['{33E9291A-F6A9-11D2-9435-00A0C92A2F2D}']
    property displayMode: Integer dispid 8000;
    property showPeaks: WordBool dispid 8001;
    property peakHangTime: Integer dispid 8002;
    property peakFallbackAcceleration: Single dispid 8003;
    property peakFallbackSpeed: Single dispid 8004;
    property levelFallbackAcceleration: Single dispid 8005;
    property levelFallbackSpeed: Single dispid 8006;
    property backgroundColor: WideString dispid 8007;
    property levelColor: WideString dispid 8008;
    property peakColor: WideString dispid 8009;
    property horizontalSpacing: Integer dispid 8010;
    property levelWidth: Integer dispid 8012;
    property levelScale: Single dispid 8013;
    property fadeRate: Integer dispid 8014;
    property fadeMode: Integer dispid 8015;
    property transparent: WordBool dispid 8016;
  end;

// *********************************************************************//
// Interface: IWMPExternal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E2CC638C-FD2C-409B-A1EA-5DDB72DC8E84}
// *********************************************************************//
  IWMPExternal = interface(IDispatch)
    ['{E2CC638C-FD2C-409B-A1EA-5DDB72DC8E84}']
    function Get_version: WideString; safecall;
    function Get_appColorLight: WideString; safecall;
    procedure Set_OnColorChange(const Param1: IDispatch); safecall;
    property version: WideString read Get_version;
    property appColorLight: WideString read Get_appColorLight;
    property OnColorChange: IDispatch write Set_OnColorChange;
  end;

// *********************************************************************//
// DispIntf:  IWMPExternalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E2CC638C-FD2C-409B-A1EA-5DDB72DC8E84}
// *********************************************************************//
  IWMPExternalDisp = dispinterface
    ['{E2CC638C-FD2C-409B-A1EA-5DDB72DC8E84}']
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPExternalColors
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D10CCDFF-472D-498C-B5FE-3630E5405E0A}
// *********************************************************************//
  IWMPExternalColors = interface(IWMPExternal)
    ['{D10CCDFF-472D-498C-B5FE-3630E5405E0A}']
    function Get_appColorMedium: WideString; safecall;
    function Get_appColorDark: WideString; safecall;
    function Get_appColorButtonHighlight: WideString; safecall;
    function Get_appColorButtonShadow: WideString; safecall;
    function Get_appColorButtonHoverFace: WideString; safecall;
    property appColorMedium: WideString read Get_appColorMedium;
    property appColorDark: WideString read Get_appColorDark;
    property appColorButtonHighlight: WideString read Get_appColorButtonHighlight;
    property appColorButtonShadow: WideString read Get_appColorButtonShadow;
    property appColorButtonHoverFace: WideString read Get_appColorButtonHoverFace;
  end;

// *********************************************************************//
// DispIntf:  IWMPExternalColorsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D10CCDFF-472D-498C-B5FE-3630E5405E0A}
// *********************************************************************//
  IWMPExternalColorsDisp = dispinterface
    ['{D10CCDFF-472D-498C-B5FE-3630E5405E0A}']
    property appColorMedium: WideString readonly dispid 10013;
    property appColorDark: WideString readonly dispid 10014;
    property appColorButtonHighlight: WideString readonly dispid 10015;
    property appColorButtonShadow: WideString readonly dispid 10016;
    property appColorButtonHoverFace: WideString readonly dispid 10017;
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPSubscriptionServiceLimited
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54DF358E-CF38-4010-99F1-F44B0E9000E5}
// *********************************************************************//
  IWMPSubscriptionServiceLimited = interface(IWMPExternalColors)
    ['{54DF358E-CF38-4010-99F1-F44B0E9000E5}']
    procedure NavigateTaskPaneURL(const bstrKeyName: WideString; const bstrTaskPane: WideString; 
                                  const bstrParams: WideString); safecall;
    procedure Set_SelectedTaskPane(const bstrTaskPane: WideString); safecall;
    function Get_SelectedTaskPane: WideString; safecall;
    property SelectedTaskPane: WideString read Get_SelectedTaskPane write Set_SelectedTaskPane;
  end;

// *********************************************************************//
// DispIntf:  IWMPSubscriptionServiceLimitedDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54DF358E-CF38-4010-99F1-F44B0E9000E5}
// *********************************************************************//
  IWMPSubscriptionServiceLimitedDisp = dispinterface
    ['{54DF358E-CF38-4010-99F1-F44B0E9000E5}']
    procedure NavigateTaskPaneURL(const bstrKeyName: WideString; const bstrTaskPane: WideString; 
                                  const bstrParams: WideString); dispid 10026;
    property SelectedTaskPane: WideString dispid 10027;
    property appColorMedium: WideString readonly dispid 10013;
    property appColorDark: WideString readonly dispid 10014;
    property appColorButtonHighlight: WideString readonly dispid 10015;
    property appColorButtonShadow: WideString readonly dispid 10016;
    property appColorButtonHoverFace: WideString readonly dispid 10017;
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPSubscriptionServiceExternal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E922378-EE70-4CEB-BBAB-CE7CE4A04816}
// *********************************************************************//
  IWMPSubscriptionServiceExternal = interface(IWMPSubscriptionServiceLimited)
    ['{2E922378-EE70-4CEB-BBAB-CE7CE4A04816}']
    function Get_DownloadManager: IWMPDownloadManager; safecall;
    property DownloadManager: IWMPDownloadManager read Get_DownloadManager;
  end;

// *********************************************************************//
// DispIntf:  IWMPSubscriptionServiceExternalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E922378-EE70-4CEB-BBAB-CE7CE4A04816}
// *********************************************************************//
  IWMPSubscriptionServiceExternalDisp = dispinterface
    ['{2E922378-EE70-4CEB-BBAB-CE7CE4A04816}']
    property DownloadManager: IWMPDownloadManager readonly dispid 10009;
    procedure NavigateTaskPaneURL(const bstrKeyName: WideString; const bstrTaskPane: WideString; 
                                  const bstrParams: WideString); dispid 10026;
    property SelectedTaskPane: WideString dispid 10027;
    property appColorMedium: WideString readonly dispid 10013;
    property appColorDark: WideString readonly dispid 10014;
    property appColorButtonHighlight: WideString readonly dispid 10015;
    property appColorButtonShadow: WideString readonly dispid 10016;
    property appColorButtonHoverFace: WideString readonly dispid 10017;
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPDownloadManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E15E9AD1-8F20-4CC4-9EC7-1A328CA86A0D}
// *********************************************************************//
  IWMPDownloadManager = interface(IDispatch)
    ['{E15E9AD1-8F20-4CC4-9EC7-1A328CA86A0D}']
    function getDownloadCollection(lCollectionId: Integer): IWMPDownloadCollection; safecall;
    function createDownloadCollection: IWMPDownloadCollection; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPDownloadManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E15E9AD1-8F20-4CC4-9EC7-1A328CA86A0D}
// *********************************************************************//
  IWMPDownloadManagerDisp = dispinterface
    ['{E15E9AD1-8F20-4CC4-9EC7-1A328CA86A0D}']
    function getDownloadCollection(lCollectionId: Integer): IWMPDownloadCollection; dispid 1151;
    function createDownloadCollection: IWMPDownloadCollection; dispid 1152;
  end;

// *********************************************************************//
// Interface: IWMPDownloadCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A319C7F-85F9-436C-B88E-82FD88000E1C}
// *********************************************************************//
  IWMPDownloadCollection = interface(IDispatch)
    ['{0A319C7F-85F9-436C-B88E-82FD88000E1C}']
    function Get_ID: Integer; safecall;
    function Get_count: Integer; safecall;
    function Item(lItem: Integer): IWMPDownloadItem2; safecall;
    function startDownload(const bstrSourceURL: WideString; const bstrType: WideString): IWMPDownloadItem2; safecall;
    procedure removeItem(lItem: Integer); safecall;
    procedure clear; safecall;
    property ID: Integer read Get_ID;
    property count: Integer read Get_count;
  end;

// *********************************************************************//
// DispIntf:  IWMPDownloadCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A319C7F-85F9-436C-B88E-82FD88000E1C}
// *********************************************************************//
  IWMPDownloadCollectionDisp = dispinterface
    ['{0A319C7F-85F9-436C-B88E-82FD88000E1C}']
    property ID: Integer readonly dispid 1201;
    property count: Integer readonly dispid 1202;
    function Item(lItem: Integer): IWMPDownloadItem2; dispid 1203;
    function startDownload(const bstrSourceURL: WideString; const bstrType: WideString): IWMPDownloadItem2; dispid 1204;
    procedure removeItem(lItem: Integer); dispid 1205;
    procedure clear; dispid 1206;
  end;

// *********************************************************************//
// Interface: IWMPDownloadItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9470E8E-3F6B-46A9-A0A9-452815C34297}
// *********************************************************************//
  IWMPDownloadItem = interface(IDispatch)
    ['{C9470E8E-3F6B-46A9-A0A9-452815C34297}']
    function Get_sourceURL: WideString; safecall;
    function Get_size: Integer; safecall;
    function Get_type_: WideString; safecall;
    function Get_progress: Integer; safecall;
    function Get_downloadState: WMPSubscriptionDownloadState; safecall;
    procedure pause; safecall;
    procedure resume; safecall;
    procedure cancel; safecall;
    property sourceURL: WideString read Get_sourceURL;
    property size: Integer read Get_size;
    property type_: WideString read Get_type_;
    property progress: Integer read Get_progress;
    property downloadState: WMPSubscriptionDownloadState read Get_downloadState;
  end;

// *********************************************************************//
// DispIntf:  IWMPDownloadItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9470E8E-3F6B-46A9-A0A9-452815C34297}
// *********************************************************************//
  IWMPDownloadItemDisp = dispinterface
    ['{C9470E8E-3F6B-46A9-A0A9-452815C34297}']
    property sourceURL: WideString readonly dispid 1251;
    property size: Integer readonly dispid 1252;
    property type_: WideString readonly dispid 1253;
    property progress: Integer readonly dispid 1254;
    property downloadState: WMPSubscriptionDownloadState readonly dispid 1255;
    procedure pause; dispid 1256;
    procedure resume; dispid 1257;
    procedure cancel; dispid 1258;
  end;

// *********************************************************************//
// Interface: IWMPDownloadItem2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9FBB3336-6DA3-479D-B8FF-67D46E20A987}
// *********************************************************************//
  IWMPDownloadItem2 = interface(IWMPDownloadItem)
    ['{9FBB3336-6DA3-479D-B8FF-67D46E20A987}']
    function getItemInfo(const bstrItemName: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPDownloadItem2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9FBB3336-6DA3-479D-B8FF-67D46E20A987}
// *********************************************************************//
  IWMPDownloadItem2Disp = dispinterface
    ['{9FBB3336-6DA3-479D-B8FF-67D46E20A987}']
    function getItemInfo(const bstrItemName: WideString): WideString; dispid 1301;
    property sourceURL: WideString readonly dispid 1251;
    property size: Integer readonly dispid 1252;
    property type_: WideString readonly dispid 1253;
    property progress: Integer readonly dispid 1254;
    property downloadState: WMPSubscriptionDownloadState readonly dispid 1255;
    procedure pause; dispid 1256;
    procedure resume; dispid 1257;
    procedure cancel; dispid 1258;
  end;

// *********************************************************************//
// Interface: IWMPSubscriptionServicePlayMedia
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F0248C1-62B3-42D7-B927-029119E6AD14}
// *********************************************************************//
  IWMPSubscriptionServicePlayMedia = interface(IWMPSubscriptionServiceLimited)
    ['{5F0248C1-62B3-42D7-B927-029119E6AD14}']
    procedure playMedia(const bstrURL: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPSubscriptionServicePlayMediaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F0248C1-62B3-42D7-B927-029119E6AD14}
// *********************************************************************//
  IWMPSubscriptionServicePlayMediaDisp = dispinterface
    ['{5F0248C1-62B3-42D7-B927-029119E6AD14}']
    procedure playMedia(const bstrURL: WideString); dispid 10004;
    procedure NavigateTaskPaneURL(const bstrKeyName: WideString; const bstrTaskPane: WideString; 
                                  const bstrParams: WideString); dispid 10026;
    property SelectedTaskPane: WideString dispid 10027;
    property appColorMedium: WideString readonly dispid 10013;
    property appColorDark: WideString readonly dispid 10014;
    property appColorButtonHighlight: WideString readonly dispid 10015;
    property appColorButtonShadow: WideString readonly dispid 10016;
    property appColorButtonHoverFace: WideString readonly dispid 10017;
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPDiscoExternal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A915CEA2-72DF-41E1-A576-EF0BAE5E5169}
// *********************************************************************//
  IWMPDiscoExternal = interface(IWMPSubscriptionServiceExternal)
    ['{A915CEA2-72DF-41E1-A576-EF0BAE5E5169}']
    procedure Set_OnLoginChange(const Param1: IDispatch); safecall;
    function Get_userLoggedIn: WordBool; safecall;
    procedure attemptLogin; safecall;
    function Get_accountType: WideString; safecall;
    procedure Set_OnViewChange(const Param1: IDispatch); safecall;
    procedure changeView(const bstrLibraryLocationType: WideString; 
                         const bstrLibraryLocationID: WideString; const bstrFilter: WideString; 
                         const bstrViewParams: WideString); safecall;
    procedure changeViewOnlineList(const bstrLibraryLocationType: WideString; 
                                   const bstrLibraryLocationID: WideString; 
                                   const bstrParams: WideString; 
                                   const bstrFriendlyName: WideString; 
                                   const bstrListType: WideString; const bstrViewMode: WideString); safecall;
    function Get_libraryLocationType: WideString; safecall;
    function Get_libraryLocationID: WideString; safecall;
    function Get_selectedItemType: WideString; safecall;
    function Get_selectedItemID: WideString; safecall;
    function Get_filter: WideString; safecall;
    function Get_task: WideString; safecall;
    function Get_viewParameters: WideString; safecall;
    procedure cancelNavigate; safecall;
    procedure showPopup(lPopupIndex: Integer; const bstrParameters: WideString); safecall;
    procedure addToBasket(const bstrViewType: WideString; const bstrViewIDs: WideString); safecall;
    function Get_basketTitle: WideString; safecall;
    procedure play(const bstrLibraryLocationType: WideString; 
                   const bstrLibraryLocationIDs: WideString); safecall;
    procedure download(const bstrViewType: WideString; const bstrViewIDs: WideString); safecall;
    procedure buy(const bstrViewType: WideString; const bstrViewIDs: WideString); safecall;
    procedure saveCurrentViewToLibrary(const bstrFriendlyListType: WideString; fDynamic: WordBool); safecall;
    procedure authenticate(lAuthenticationIndex: Integer); safecall;
    procedure sendMessage(const bstrMsg: WideString; const bstrParam: WideString); safecall;
    procedure Set_OnSendMessageComplete(const Param1: IDispatch); safecall;
    procedure Set_ignoreIEHistory(Param1: WordBool); safecall;
    function Get_pluginRunning: WordBool; safecall;
    function Get_templateBeingDisplayedInLocalLibrary: WordBool; safecall;
    procedure Set_OnChangeViewError(const Param1: IDispatch); safecall;
    procedure Set_OnChangeViewOnlineListError(const Param1: IDispatch); safecall;
    property OnLoginChange: IDispatch write Set_OnLoginChange;
    property userLoggedIn: WordBool read Get_userLoggedIn;
    property accountType: WideString read Get_accountType;
    property OnViewChange: IDispatch write Set_OnViewChange;
    property libraryLocationType: WideString read Get_libraryLocationType;
    property libraryLocationID: WideString read Get_libraryLocationID;
    property selectedItemType: WideString read Get_selectedItemType;
    property selectedItemID: WideString read Get_selectedItemID;
    property filter: WideString read Get_filter;
    property task: WideString read Get_task;
    property viewParameters: WideString read Get_viewParameters;
    property basketTitle: WideString read Get_basketTitle;
    property OnSendMessageComplete: IDispatch write Set_OnSendMessageComplete;
    property ignoreIEHistory: WordBool write Set_ignoreIEHistory;
    property pluginRunning: WordBool read Get_pluginRunning;
    property templateBeingDisplayedInLocalLibrary: WordBool read Get_templateBeingDisplayedInLocalLibrary;
    property OnChangeViewError: IDispatch write Set_OnChangeViewError;
    property OnChangeViewOnlineListError: IDispatch write Set_OnChangeViewOnlineListError;
  end;

// *********************************************************************//
// DispIntf:  IWMPDiscoExternalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A915CEA2-72DF-41E1-A576-EF0BAE5E5169}
// *********************************************************************//
  IWMPDiscoExternalDisp = dispinterface
    ['{A915CEA2-72DF-41E1-A576-EF0BAE5E5169}']
    property OnLoginChange: IDispatch writeonly dispid 10028;
    property userLoggedIn: WordBool readonly dispid 10029;
    procedure attemptLogin; dispid 10030;
    property accountType: WideString readonly dispid 10031;
    property OnViewChange: IDispatch writeonly dispid 10032;
    procedure changeView(const bstrLibraryLocationType: WideString; 
                         const bstrLibraryLocationID: WideString; const bstrFilter: WideString; 
                         const bstrViewParams: WideString); dispid 10033;
    procedure changeViewOnlineList(const bstrLibraryLocationType: WideString; 
                                   const bstrLibraryLocationID: WideString; 
                                   const bstrParams: WideString; 
                                   const bstrFriendlyName: WideString; 
                                   const bstrListType: WideString; const bstrViewMode: WideString); dispid 10034;
    property libraryLocationType: WideString readonly dispid 10035;
    property libraryLocationID: WideString readonly dispid 10036;
    property selectedItemType: WideString readonly dispid 10037;
    property selectedItemID: WideString readonly dispid 10038;
    property filter: WideString readonly dispid 10039;
    property task: WideString readonly dispid 10040;
    property viewParameters: WideString readonly dispid 10041;
    procedure cancelNavigate; dispid 10042;
    procedure showPopup(lPopupIndex: Integer; const bstrParameters: WideString); dispid 10043;
    procedure addToBasket(const bstrViewType: WideString; const bstrViewIDs: WideString); dispid 10044;
    property basketTitle: WideString readonly dispid 10045;
    procedure play(const bstrLibraryLocationType: WideString; 
                   const bstrLibraryLocationIDs: WideString); dispid 10046;
    procedure download(const bstrViewType: WideString; const bstrViewIDs: WideString); dispid 10047;
    procedure buy(const bstrViewType: WideString; const bstrViewIDs: WideString); dispid 10048;
    procedure saveCurrentViewToLibrary(const bstrFriendlyListType: WideString; fDynamic: WordBool); dispid 10049;
    procedure authenticate(lAuthenticationIndex: Integer); dispid 10050;
    procedure sendMessage(const bstrMsg: WideString; const bstrParam: WideString); dispid 10051;
    property OnSendMessageComplete: IDispatch writeonly dispid 10052;
    property ignoreIEHistory: WordBool writeonly dispid 10053;
    property pluginRunning: WordBool readonly dispid 10054;
    property templateBeingDisplayedInLocalLibrary: WordBool readonly dispid 10055;
    property OnChangeViewError: IDispatch writeonly dispid 10056;
    property OnChangeViewOnlineListError: IDispatch writeonly dispid 10057;
    property DownloadManager: IWMPDownloadManager readonly dispid 10009;
    procedure NavigateTaskPaneURL(const bstrKeyName: WideString; const bstrTaskPane: WideString; 
                                  const bstrParams: WideString); dispid 10026;
    property SelectedTaskPane: WideString dispid 10027;
    property appColorMedium: WideString readonly dispid 10013;
    property appColorDark: WideString readonly dispid 10014;
    property appColorButtonHighlight: WideString readonly dispid 10015;
    property appColorButtonShadow: WideString readonly dispid 10016;
    property appColorButtonHoverFace: WideString readonly dispid 10017;
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPCDDVDWizardExternal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D7EF888-1D3C-484A-A906-9F49D99BB344}
// *********************************************************************//
  IWMPCDDVDWizardExternal = interface(IWMPExternalColors)
    ['{2D7EF888-1D3C-484A-A906-9F49D99BB344}']
    procedure WriteNames(const bstrTOC: WideString; const bstrMetadata: WideString); safecall;
    procedure ReturnToMainTask; safecall;
    procedure WriteNamesEx(type_: WMP_WRITENAMESEX_TYPE; const bstrTypeId: WideString; 
                           const bstrMetadata: WideString; fRenameRegroupFiles: WordBool); safecall;
    function GetMDQByRequestID(const bstrRequestID: WideString): WideString; safecall;
    procedure EditMetadata; safecall;
    function IsMetadataAvailableForEdit: WordBool; safecall;
    procedure BuyCD(const bstrTitle: WideString; const bstrArtist: WideString; 
                    const bstrAlbum: WideString; const bstrUFID: WideString; 
                    const bstrWMID: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPCDDVDWizardExternalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D7EF888-1D3C-484A-A906-9F49D99BB344}
// *********************************************************************//
  IWMPCDDVDWizardExternalDisp = dispinterface
    ['{2D7EF888-1D3C-484A-A906-9F49D99BB344}']
    procedure WriteNames(const bstrTOC: WideString; const bstrMetadata: WideString); dispid 10001;
    procedure ReturnToMainTask; dispid 10002;
    procedure WriteNamesEx(type_: WMP_WRITENAMESEX_TYPE; const bstrTypeId: WideString; 
                           const bstrMetadata: WideString; fRenameRegroupFiles: WordBool); dispid 10007;
    function GetMDQByRequestID(const bstrRequestID: WideString): WideString; dispid 10008;
    procedure EditMetadata; dispid 10011;
    function IsMetadataAvailableForEdit: WordBool; dispid 10010;
    procedure BuyCD(const bstrTitle: WideString; const bstrArtist: WideString; 
                    const bstrAlbum: WideString; const bstrUFID: WideString; 
                    const bstrWMID: WideString); dispid 10023;
    property appColorMedium: WideString readonly dispid 10013;
    property appColorDark: WideString readonly dispid 10014;
    property appColorButtonHighlight: WideString readonly dispid 10015;
    property appColorButtonShadow: WideString readonly dispid 10016;
    property appColorButtonHoverFace: WideString readonly dispid 10017;
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPBaseExternal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F81B2A59-02BC-4003-8B2F-C124AF66FC66}
// *********************************************************************//
  IWMPBaseExternal = interface(IWMPExternal)
    ['{F81B2A59-02BC-4003-8B2F-C124AF66FC66}']
  end;

// *********************************************************************//
// DispIntf:  IWMPBaseExternalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F81B2A59-02BC-4003-8B2F-C124AF66FC66}
// *********************************************************************//
  IWMPBaseExternalDisp = dispinterface
    ['{F81B2A59-02BC-4003-8B2F-C124AF66FC66}']
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPOfflineExternal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3148E685-B243-423D-8341-8480D6EFF674}
// *********************************************************************//
  IWMPOfflineExternal = interface(IWMPExternal)
    ['{3148E685-B243-423D-8341-8480D6EFF674}']
    procedure forceOnline; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPOfflineExternalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3148E685-B243-423D-8341-8480D6EFF674}
// *********************************************************************//
  IWMPOfflineExternalDisp = dispinterface
    ['{3148E685-B243-423D-8341-8480D6EFF674}']
    procedure forceOnline; dispid 10025;
    property version: WideString readonly dispid 10005;
    property appColorLight: WideString readonly dispid 10012;
    property OnColorChange: IDispatch writeonly dispid 10018;
  end;

// *********************************************************************//
// Interface: IWMPRemoteUPnPService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17E5DC63-E296-4EDE-B9CC-CF57D18ED10E}
// *********************************************************************//
  IWMPRemoteUPnPService = interface(IDispatch)
    ['{17E5DC63-E296-4EDE-B9CC-CF57D18ED10E}']
    procedure RegisterEvent(const bstrVariableName: WideString; const pdispJScriptCode: IDispatch); safecall;
    procedure UnregisterEvent(const bstrVariableName: WideString); safecall;
    function ID: WideString; safecall;
    procedure InvokeAction(const bstrActionName: WideString; const pdispInArgs: IDispatch; 
                           const pdispOutArgs: IDispatch; const pdispRetVals: IDispatch); safecall;
    function LastTransportStatus: Integer; safecall;
    function QueryStateVariable(const bstrVariableName: WideString): OleVariant; safecall;
    function ServiceTypeIdentifier: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPRemoteUPnPServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17E5DC63-E296-4EDE-B9CC-CF57D18ED10E}
// *********************************************************************//
  IWMPRemoteUPnPServiceDisp = dispinterface
    ['{17E5DC63-E296-4EDE-B9CC-CF57D18ED10E}']
    procedure RegisterEvent(const bstrVariableName: WideString; const pdispJScriptCode: IDispatch); dispid 10121;
    procedure UnregisterEvent(const bstrVariableName: WideString); dispid 10122;
    function ID: WideString; dispid 10123;
    procedure InvokeAction(const bstrActionName: WideString; const pdispInArgs: IDispatch; 
                           const pdispOutArgs: IDispatch; const pdispRetVals: IDispatch); dispid 10124;
    function LastTransportStatus: Integer; dispid 10125;
    function QueryStateVariable(const bstrVariableName: WideString): OleVariant; dispid 10126;
    function ServiceTypeIdentifier: WideString; dispid 10127;
  end;

// *********************************************************************//
// Interface: IWMPRemoteUPnPDevice
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {76F13F00-6E17-4D98-BE2D-D2A84CFF5BFD}
// *********************************************************************//
  IWMPRemoteUPnPDevice = interface(IDispatch)
    ['{76F13F00-6E17-4D98-BE2D-D2A84CFF5BFD}']
    function friendlyName: WideString; safecall;
    function FindService(const bstrService: WideString): IDispatch; safecall;
    procedure getDevice(var ppDevice: IUnknown); safecall;
  end;

// *********************************************************************//
// DispIntf:  IWMPRemoteUPnPDeviceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {76F13F00-6E17-4D98-BE2D-D2A84CFF5BFD}
// *********************************************************************//
  IWMPRemoteUPnPDeviceDisp = dispinterface
    ['{76F13F00-6E17-4D98-BE2D-D2A84CFF5BFD}']
    function friendlyName: WideString; dispid 10131;
    function FindService(const bstrService: WideString): IDispatch; dispid 10132;
    procedure getDevice(var ppDevice: IUnknown); dispid 10133;
  end;

// *********************************************************************//
// Interface: IWMPRemoteDeviceController
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {968F36CA-CB43-4F6A-A03B-66A9C05A93EE}
// *********************************************************************//
  IWMPRemoteDeviceController = interface(IDispatch)
    ['{968F36CA-CB43-4F6A-A03B-66A9C05A93EE}']
    procedure RegisterDeviceSwitch(const pdispJScriptFunction: IDispatch); safecall;
    procedure SyncDeviceList; safecall;
    function Get_numberDevices: Integer; safecall;
    function getDevice(lIndex: Integer): IDispatch; safecall;
    procedure SwitchUIToMatchDevice(const pdispDevice: IDispatch); safecall;
    property numberDevices: Integer read Get_numberDevices;
  end;

// *********************************************************************//
// DispIntf:  IWMPRemoteDeviceControllerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {968F36CA-CB43-4F6A-A03B-66A9C05A93EE}
// *********************************************************************//
  IWMPRemoteDeviceControllerDisp = dispinterface
    ['{968F36CA-CB43-4F6A-A03B-66A9C05A93EE}']
    procedure RegisterDeviceSwitch(const pdispJScriptFunction: IDispatch); dispid 10101;
    procedure SyncDeviceList; dispid 10102;
    property numberDevices: Integer readonly dispid 10103;
    function getDevice(lIndex: Integer): IDispatch; dispid 10104;
    procedure SwitchUIToMatchDevice(const pdispDevice: IDispatch); dispid 10106;
  end;

// *********************************************************************//
// Interface: IUPnPService_IWMPUPnPAVTransportDual
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0EA1DE14-E288-4958-A23C-942634A27EB5}
// *********************************************************************//
  IUPnPService_IWMPUPnPAVTransportDual = interface(IDispatch)
    ['{0EA1DE14-E288-4958-A23C-942634A27EB5}']
    function Get_TransportState: WideString; safecall;
    function Get_TransportStatus: WideString; safecall;
    function Get_PlaybackStorageMedium: WideString; safecall;
    function Get_RecordStorageMedium: WideString; safecall;
    function Get_PossiblePlaybackStorageMedia: WideString; safecall;
    function Get_PossibleRecordStorageMedia: WideString; safecall;
    function Get_CurrentPlayMode: WideString; safecall;
    function Get_TransportPlaySpeed: WideString; safecall;
    function Get_RecordMediumWriteStatus: WideString; safecall;
    function Get_CurrentRecordQualityMode: WideString; safecall;
    function Get_PossibleRecordQualityModes: WideString; safecall;
    function Get_NumberOfTracks: LongWord; safecall;
    function Get_CurrentTrack: LongWord; safecall;
    function Get_CurrentTrackDuration: WideString; safecall;
    function Get_CurrentMediaDuration: WideString; safecall;
    function Get_CurrentTrackMetaData: WideString; safecall;
    function Get_CurrentTrackURI: WideString; safecall;
    function Get_AVTransportURI: WideString; safecall;
    function Get_AVTransportURIMetaData: WideString; safecall;
    function Get_NextAVTransportURI: WideString; safecall;
    function Get_NextAVTransportURIMetaData: WideString; safecall;
    function Get_RelativeTimePosition: WideString; safecall;
    function Get_AbsoluteTimePosition: WideString; safecall;
    function Get_RelativeCounterPosition: Integer; safecall;
    function Get_AbsoluteCounterPosition: Integer; safecall;
    function Get_CurrentTransportActions: WideString; safecall;
    function Get_LastChange: WideString; safecall;
    function Get_A_ARG_TYPE_SeekMode: WideString; safecall;
    function Get_A_ARG_TYPE_SeekTarget: WideString; safecall;
    function Get_A_ARG_TYPE_InstanceID: LongWord; safecall;
    procedure SetAVTransportURI(InstanceID: LongWord; const CurrentURI: WideString; 
                                const CurrentURIMetaData: WideString); safecall;
    procedure SetNextAVTransportURI(InstanceID: LongWord; const NextURI: WideString; 
                                    const NextURIMetaData: WideString); safecall;
    procedure GetMediaInfo(InstanceID: LongWord; var pNrTracks: LongWord; 
                           var pMediaDuration: WideString; var pCurrentURI: WideString; 
                           var pCurrentURIMetaData: WideString; var pNextURI: WideString; 
                           var pNextURIMetaData: WideString; var pPlayMedium: WideString; 
                           var pRecordMedium: WideString; var pWriteStatus: WideString); safecall;
    procedure GetTransportInfo(InstanceID: LongWord; var pCurrentTransportState: WideString; 
                               var pCurrentTransportStatus: WideString; 
                               var pCurrentSpeed: WideString); safecall;
    procedure GetPositionInfo(InstanceID: LongWord; var pTrack: LongWord; 
                              var pTrackDuration: WideString; var pTrackMetaData: WideString; 
                              var pTrackURI: WideString; var pRelTime: WideString; 
                              var pAbsTime: WideString; var pRelCount: Integer; 
                              var pAbsCount: Integer); safecall;
    procedure GetDeviceCapabilities(InstanceID: LongWord; var pPlayMedia: WideString; 
                                    var pRecMedia: WideString; var pRecQualityModes: WideString); safecall;
    procedure GetTransportSettings(InstanceID: LongWord; var pPlayMode: WideString; 
                                   var pRecQualityMode: WideString); safecall;
    procedure stop(InstanceID: LongWord); safecall;
    procedure play(InstanceID: LongWord; const Speed: WideString); safecall;
    procedure pause(InstanceID: LongWord); safecall;
    procedure Record_(InstanceID: LongWord); safecall;
    procedure Seek(InstanceID: LongWord; const Unit_: WideString; const Target: WideString); safecall;
    procedure next(InstanceID: LongWord); safecall;
    procedure previous(InstanceID: LongWord); safecall;
    procedure SetPlayMode(InstanceID: LongWord; const NewPlayMode: WideString); safecall;
    procedure SetRecordQualityMode(InstanceID: LongWord; const NewRecordQualityMode: WideString); safecall;
    procedure GetCurrentTransportActions(InstanceID: LongWord; var pActions: WideString); safecall;
    property TransportState: WideString read Get_TransportState;
    property TransportStatus: WideString read Get_TransportStatus;
    property PlaybackStorageMedium: WideString read Get_PlaybackStorageMedium;
    property RecordStorageMedium: WideString read Get_RecordStorageMedium;
    property PossiblePlaybackStorageMedia: WideString read Get_PossiblePlaybackStorageMedia;
    property PossibleRecordStorageMedia: WideString read Get_PossibleRecordStorageMedia;
    property CurrentPlayMode: WideString read Get_CurrentPlayMode;
    property TransportPlaySpeed: WideString read Get_TransportPlaySpeed;
    property RecordMediumWriteStatus: WideString read Get_RecordMediumWriteStatus;
    property CurrentRecordQualityMode: WideString read Get_CurrentRecordQualityMode;
    property PossibleRecordQualityModes: WideString read Get_PossibleRecordQualityModes;
    property NumberOfTracks: LongWord read Get_NumberOfTracks;
    property CurrentTrack: LongWord read Get_CurrentTrack;
    property CurrentTrackDuration: WideString read Get_CurrentTrackDuration;
    property CurrentMediaDuration: WideString read Get_CurrentMediaDuration;
    property CurrentTrackMetaData: WideString read Get_CurrentTrackMetaData;
    property CurrentTrackURI: WideString read Get_CurrentTrackURI;
    property AVTransportURI: WideString read Get_AVTransportURI;
    property AVTransportURIMetaData: WideString read Get_AVTransportURIMetaData;
    property NextAVTransportURI: WideString read Get_NextAVTransportURI;
    property NextAVTransportURIMetaData: WideString read Get_NextAVTransportURIMetaData;
    property RelativeTimePosition: WideString read Get_RelativeTimePosition;
    property AbsoluteTimePosition: WideString read Get_AbsoluteTimePosition;
    property RelativeCounterPosition: Integer read Get_RelativeCounterPosition;
    property AbsoluteCounterPosition: Integer read Get_AbsoluteCounterPosition;
    property CurrentTransportActions: WideString read Get_CurrentTransportActions;
    property LastChange: WideString read Get_LastChange;
    property A_ARG_TYPE_SeekMode: WideString read Get_A_ARG_TYPE_SeekMode;
    property A_ARG_TYPE_SeekTarget: WideString read Get_A_ARG_TYPE_SeekTarget;
    property A_ARG_TYPE_InstanceID: LongWord read Get_A_ARG_TYPE_InstanceID;
  end;

// *********************************************************************//
// DispIntf:  IUPnPService_IWMPUPnPAVTransportDualDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0EA1DE14-E288-4958-A23C-942634A27EB5}
// *********************************************************************//
  IUPnPService_IWMPUPnPAVTransportDualDisp = dispinterface
    ['{0EA1DE14-E288-4958-A23C-942634A27EB5}']
    property TransportState: WideString readonly dispid 1;
    property TransportStatus: WideString readonly dispid 2;
    property PlaybackStorageMedium: WideString readonly dispid 3;
    property RecordStorageMedium: WideString readonly dispid 4;
    property PossiblePlaybackStorageMedia: WideString readonly dispid 5;
    property PossibleRecordStorageMedia: WideString readonly dispid 6;
    property CurrentPlayMode: WideString readonly dispid 7;
    property TransportPlaySpeed: WideString readonly dispid 8;
    property RecordMediumWriteStatus: WideString readonly dispid 9;
    property CurrentRecordQualityMode: WideString readonly dispid 10;
    property PossibleRecordQualityModes: WideString readonly dispid 11;
    property NumberOfTracks: LongWord readonly dispid 12;
    property CurrentTrack: LongWord readonly dispid 13;
    property CurrentTrackDuration: WideString readonly dispid 14;
    property CurrentMediaDuration: WideString readonly dispid 15;
    property CurrentTrackMetaData: WideString readonly dispid 16;
    property CurrentTrackURI: WideString readonly dispid 17;
    property AVTransportURI: WideString readonly dispid 18;
    property AVTransportURIMetaData: WideString readonly dispid 19;
    property NextAVTransportURI: WideString readonly dispid 20;
    property NextAVTransportURIMetaData: WideString readonly dispid 21;
    property RelativeTimePosition: WideString readonly dispid 22;
    property AbsoluteTimePosition: WideString readonly dispid 23;
    property RelativeCounterPosition: Integer readonly dispid 24;
    property AbsoluteCounterPosition: Integer readonly dispid 25;
    property CurrentTransportActions: WideString readonly dispid 26;
    property LastChange: WideString readonly dispid 27;
    property A_ARG_TYPE_SeekMode: WideString readonly dispid 28;
    property A_ARG_TYPE_SeekTarget: WideString readonly dispid 29;
    property A_ARG_TYPE_InstanceID: LongWord readonly dispid 30;
    procedure SetAVTransportURI(InstanceID: LongWord; const CurrentURI: WideString; 
                                const CurrentURIMetaData: WideString); dispid 31;
    procedure SetNextAVTransportURI(InstanceID: LongWord; const NextURI: WideString; 
                                    const NextURIMetaData: WideString); dispid 32;
    procedure GetMediaInfo(InstanceID: LongWord; var pNrTracks: LongWord; 
                           var pMediaDuration: WideString; var pCurrentURI: WideString; 
                           var pCurrentURIMetaData: WideString; var pNextURI: WideString; 
                           var pNextURIMetaData: WideString; var pPlayMedium: WideString; 
                           var pRecordMedium: WideString; var pWriteStatus: WideString); dispid 33;
    procedure GetTransportInfo(InstanceID: LongWord; var pCurrentTransportState: WideString; 
                               var pCurrentTransportStatus: WideString; 
                               var pCurrentSpeed: WideString); dispid 34;
    procedure GetPositionInfo(InstanceID: LongWord; var pTrack: LongWord; 
                              var pTrackDuration: WideString; var pTrackMetaData: WideString; 
                              var pTrackURI: WideString; var pRelTime: WideString; 
                              var pAbsTime: WideString; var pRelCount: Integer; 
                              var pAbsCount: Integer); dispid 35;
    procedure GetDeviceCapabilities(InstanceID: LongWord; var pPlayMedia: WideString; 
                                    var pRecMedia: WideString; var pRecQualityModes: WideString); dispid 36;
    procedure GetTransportSettings(InstanceID: LongWord; var pPlayMode: WideString; 
                                   var pRecQualityMode: WideString); dispid 37;
    procedure stop(InstanceID: LongWord); dispid 38;
    procedure play(InstanceID: LongWord; const Speed: WideString); dispid 39;
    procedure pause(InstanceID: LongWord); dispid 40;
    procedure Record_(InstanceID: LongWord); dispid 41;
    procedure Seek(InstanceID: LongWord; const Unit_: WideString; const Target: WideString); dispid 42;
    procedure next(InstanceID: LongWord); dispid 43;
    procedure previous(InstanceID: LongWord); dispid 44;
    procedure SetPlayMode(InstanceID: LongWord; const NewPlayMode: WideString); dispid 45;
    procedure SetRecordQualityMode(InstanceID: LongWord; const NewRecordQualityMode: WideString); dispid 46;
    procedure GetCurrentTransportActions(InstanceID: LongWord; var pActions: WideString); dispid 47;
  end;

// *********************************************************************//
// Interface: IUPnPService_IWMPUPnPBinaryControlDual
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7CAD1D24-EDED-47FA-A1D8-4628FBE5638C}
// *********************************************************************//
  IUPnPService_IWMPUPnPBinaryControlDual = interface(IDispatch)
    ['{7CAD1D24-EDED-47FA-A1D8-4628FBE5638C}']
    function Get_CurrentState: WideString; safecall;
    function GetCurrentState: WideString; safecall;
    procedure SetCurrentState(const NewState: WideString); safecall;
    procedure SetOn; safecall;
    procedure SetOff; safecall;
    property CurrentState: WideString read Get_CurrentState;
  end;

// *********************************************************************//
// DispIntf:  IUPnPService_IWMPUPnPBinaryControlDualDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7CAD1D24-EDED-47FA-A1D8-4628FBE5638C}
// *********************************************************************//
  IUPnPService_IWMPUPnPBinaryControlDualDisp = dispinterface
    ['{7CAD1D24-EDED-47FA-A1D8-4628FBE5638C}']
    property CurrentState: WideString readonly dispid 1;
    function GetCurrentState: WideString; dispid 2;
    procedure SetCurrentState(const NewState: WideString); dispid 3;
    procedure SetOn; dispid 4;
    procedure SetOff; dispid 5;
  end;

// *********************************************************************//
// Interface: IUPnPService_IWMPUPnPVariableControlDual
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A09862E-47B1-4D17-94EA-2BDE3014DD42}
// *********************************************************************//
  IUPnPService_IWMPUPnPVariableControlDual = interface(IDispatch)
    ['{5A09862E-47B1-4D17-94EA-2BDE3014DD42}']
    function Get_CurrentPercent: Single; safecall;
    function Get_CurrentValue: Single; safecall;
    function Get_UnitOfMeasure: WideString; safecall;
    function Get_MinValue: Single; safecall;
    function Get_MaxValue: Single; safecall;
    function Get_NumberOfSteps: LongWord; safecall;
    procedure GetCurrentPercent(var pcurPercent: Single); safecall;
    procedure GetCurrentValue(var pcurValue: Single); safecall;
    procedure GetUnitOfMeasure(var pUnitOfMeasure: WideString); safecall;
    procedure GetMinValue(var pMinValue: Single); safecall;
    procedure GetMaxValue(var pMaxValue: Single); safecall;
    procedure GetNumberOfSteps(var pNumberOfSteps: LongWord); safecall;
    procedure SetCurrentPercent(newCurrentPercent: Single); safecall;
    procedure SetCurrentValue(newCurrentValue: Single); safecall;
    property CurrentPercent: Single read Get_CurrentPercent;
    property CurrentValue: Single read Get_CurrentValue;
    property UnitOfMeasure: WideString read Get_UnitOfMeasure;
    property MinValue: Single read Get_MinValue;
    property MaxValue: Single read Get_MaxValue;
    property NumberOfSteps: LongWord read Get_NumberOfSteps;
  end;

// *********************************************************************//
// DispIntf:  IUPnPService_IWMPUPnPVariableControlDualDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A09862E-47B1-4D17-94EA-2BDE3014DD42}
// *********************************************************************//
  IUPnPService_IWMPUPnPVariableControlDualDisp = dispinterface
    ['{5A09862E-47B1-4D17-94EA-2BDE3014DD42}']
    property CurrentPercent: Single readonly dispid 1;
    property CurrentValue: Single readonly dispid 2;
    property UnitOfMeasure: WideString readonly dispid 3;
    property MinValue: Single readonly dispid 4;
    property MaxValue: Single readonly dispid 5;
    property NumberOfSteps: LongWord readonly dispid 6;
    procedure GetCurrentPercent(var pcurPercent: Single); dispid 7;
    procedure GetCurrentValue(var pcurValue: Single); dispid 8;
    procedure GetUnitOfMeasure(var pUnitOfMeasure: WideString); dispid 9;
    procedure GetMinValue(var pMinValue: Single); dispid 10;
    procedure GetMaxValue(var pMaxValue: Single); dispid 11;
    procedure GetNumberOfSteps(var pNumberOfSteps: LongWord); dispid 12;
    procedure SetCurrentPercent(newCurrentPercent: Single); dispid 13;
    procedure SetCurrentValue(newCurrentValue: Single); dispid 14;
  end;

// *********************************************************************//
// Interface: IUPnPService_IWMPUPnPConnectionManagerDual
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1AF41667-542C-42EA-BF53-DC101168C503}
// *********************************************************************//
  IUPnPService_IWMPUPnPConnectionManagerDual = interface(IDispatch)
    ['{1AF41667-542C-42EA-BF53-DC101168C503}']
    function Get_SourceProtocolInfo: WideString; safecall;
    function Get_SinkProtocolInfo: WideString; safecall;
    function Get_CurrentConnectionIDs: WideString; safecall;
    function Get_A_ARG_TYPE_ConnectionStatus: WideString; safecall;
    function Get_A_ARG_TYPE_ConnectionManager: WideString; safecall;
    function Get_A_ARG_TYPE_Direction: WideString; safecall;
    function Get_A_ARG_TYPE_ProtocolInfo: WideString; safecall;
    function Get_A_ARG_TYPE_ConnectionID: Integer; safecall;
    function Get_A_ARG_TYPE_AVTransportID: Integer; safecall;
    function Get_A_ARG_TYPE_RcsID: Integer; safecall;
    procedure GetProtocolInfo(var pSourceProtocol: WideString; var pSinkProtocol: WideString); safecall;
    procedure PrepareForConnection(const remoteProtocolInfo: WideString; 
                                   const peerConnectionManager: WideString; 
                                   peerConnectionID: Integer; const direction: WideString; 
                                   var pConnectionID: Integer; var pAVTransportID: Integer; 
                                   var pResID: Integer); safecall;
    procedure ConnectionComplete(connectionID: Integer); safecall;
    procedure GetCurrentConnectionIDs(var pCurrentConnectionIDs: WideString); safecall;
    procedure GetCurrentConnectionInfo(connectionID: Integer; var pResID: Integer; 
                                       var pAVTransportID: Integer; var pProtocolInfo: WideString; 
                                       var pPeerConnectionManager: WideString; 
                                       var pPeerConnectionID: Integer; var pDirection: WideString; 
                                       var pStatus: WideString); safecall;
    property SourceProtocolInfo: WideString read Get_SourceProtocolInfo;
    property SinkProtocolInfo: WideString read Get_SinkProtocolInfo;
    property CurrentConnectionIDs: WideString read Get_CurrentConnectionIDs;
    property A_ARG_TYPE_ConnectionStatus: WideString read Get_A_ARG_TYPE_ConnectionStatus;
    property A_ARG_TYPE_ConnectionManager: WideString read Get_A_ARG_TYPE_ConnectionManager;
    property A_ARG_TYPE_Direction: WideString read Get_A_ARG_TYPE_Direction;
    property A_ARG_TYPE_ProtocolInfo: WideString read Get_A_ARG_TYPE_ProtocolInfo;
    property A_ARG_TYPE_ConnectionID: Integer read Get_A_ARG_TYPE_ConnectionID;
    property A_ARG_TYPE_AVTransportID: Integer read Get_A_ARG_TYPE_AVTransportID;
    property A_ARG_TYPE_RcsID: Integer read Get_A_ARG_TYPE_RcsID;
  end;

// *********************************************************************//
// DispIntf:  IUPnPService_IWMPUPnPConnectionManagerDualDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1AF41667-542C-42EA-BF53-DC101168C503}
// *********************************************************************//
  IUPnPService_IWMPUPnPConnectionManagerDualDisp = dispinterface
    ['{1AF41667-542C-42EA-BF53-DC101168C503}']
    property SourceProtocolInfo: WideString readonly dispid 1;
    property SinkProtocolInfo: WideString readonly dispid 2;
    property CurrentConnectionIDs: WideString readonly dispid 3;
    property A_ARG_TYPE_ConnectionStatus: WideString readonly dispid 4;
    property A_ARG_TYPE_ConnectionManager: WideString readonly dispid 5;
    property A_ARG_TYPE_Direction: WideString readonly dispid 6;
    property A_ARG_TYPE_ProtocolInfo: WideString readonly dispid 7;
    property A_ARG_TYPE_ConnectionID: Integer readonly dispid 8;
    property A_ARG_TYPE_AVTransportID: Integer readonly dispid 9;
    property A_ARG_TYPE_RcsID: Integer readonly dispid 10;
    procedure GetProtocolInfo(var pSourceProtocol: WideString; var pSinkProtocol: WideString); dispid 11;
    procedure PrepareForConnection(const remoteProtocolInfo: WideString; 
                                   const peerConnectionManager: WideString; 
                                   peerConnectionID: Integer; const direction: WideString; 
                                   var pConnectionID: Integer; var pAVTransportID: Integer; 
                                   var pResID: Integer); dispid 12;
    procedure ConnectionComplete(connectionID: Integer); dispid 13;
    procedure GetCurrentConnectionIDs(var pCurrentConnectionIDs: WideString); dispid 14;
    procedure GetCurrentConnectionInfo(connectionID: Integer; var pResID: Integer; 
                                       var pAVTransportID: Integer; var pProtocolInfo: WideString; 
                                       var pPeerConnectionManager: WideString; 
                                       var pPeerConnectionID: Integer; var pDirection: WideString; 
                                       var pStatus: WideString); dispid 15;
  end;

// *********************************************************************//
// Interface: IUPnPService_IWMPUPnPSkinRetrieverDual
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AC743628-971D-4C1E-B019-50543EFE2BAD}
// *********************************************************************//
  IUPnPService_IWMPUPnPSkinRetrieverDual = interface(IDispatch)
    ['{AC743628-971D-4C1E-B019-50543EFE2BAD}']
    function Get_SkinURL: WideString; safecall;
    procedure GetSkinURL(var ppbstrSkinURL: WideString); safecall;
    property SkinURL: WideString read Get_SkinURL;
  end;

// *********************************************************************//
// DispIntf:  IUPnPService_IWMPUPnPSkinRetrieverDualDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AC743628-971D-4C1E-B019-50543EFE2BAD}
// *********************************************************************//
  IUPnPService_IWMPUPnPSkinRetrieverDualDisp = dispinterface
    ['{AC743628-971D-4C1E-B019-50543EFE2BAD}']
    property SkinURL: WideString readonly dispid 1;
    procedure GetSkinURL(var ppbstrSkinURL: WideString); dispid 2;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TWindowsMediaPlayer
// Help String      : Windows Media Player ActiveX Control
// Default Interface: IWMPPlayer4
// Def. Intf. DISP? : No
// Event   Interface: _WMPOCXEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TWindowsMediaPlayerOpenStateChange = procedure(ASender: TObject; NewState: Integer) of object;
  TWindowsMediaPlayerPlayStateChange = procedure(ASender: TObject; NewState: Integer) of object;
  TWindowsMediaPlayerAudioLanguageChange = procedure(ASender: TObject; LangID: Integer) of object;
  TWindowsMediaPlayerScriptCommand = procedure(ASender: TObject; const scType: WideString; 
                                                                 const Param: WideString) of object;
  TWindowsMediaPlayerDisconnect = procedure(ASender: TObject; Result: Integer) of object;
  TWindowsMediaPlayerBuffering = procedure(ASender: TObject; Start: WordBool) of object;
  TWindowsMediaPlayerWarning = procedure(ASender: TObject; WarningType: Integer; Param: Integer; 
                                                           const Description: WideString) of object;
  TWindowsMediaPlayerEndOfStream = procedure(ASender: TObject; Result: Integer) of object;
  TWindowsMediaPlayerPositionChange = procedure(ASender: TObject; oldPosition: Double; 
                                                                  newPosition: Double) of object;
  TWindowsMediaPlayerMarkerHit = procedure(ASender: TObject; MarkerNum: Integer) of object;
  TWindowsMediaPlayerDurationUnitChange = procedure(ASender: TObject; NewDurationUnit: Integer) of object;
  TWindowsMediaPlayerCdromMediaChange = procedure(ASender: TObject; CdromNum: Integer) of object;
  TWindowsMediaPlayerPlaylistChange = procedure(ASender: TObject; const Playlist: IDispatch; 
                                                                  change: WMPPlaylistChangeEventType) of object;
  TWindowsMediaPlayerCurrentPlaylistChange = procedure(ASender: TObject; change: WMPPlaylistChangeEventType) of object;
  TWindowsMediaPlayerCurrentPlaylistItemAvailable = procedure(ASender: TObject; const bstrItemName: WideString) of object;
  TWindowsMediaPlayerMediaChange = procedure(ASender: TObject; const Item: IDispatch) of object;
  TWindowsMediaPlayerCurrentMediaItemAvailable = procedure(ASender: TObject; const bstrItemName: WideString) of object;
  TWindowsMediaPlayerCurrentItemChange = procedure(ASender: TObject; const pdispMedia: IDispatch) of object;
  TWindowsMediaPlayerMediaCollectionAttributeStringAdded = procedure(ASender: TObject; const bstrAttribName: WideString; 
                                                                                       const bstrAttribVal: WideString) of object;
  TWindowsMediaPlayerMediaCollectionAttributeStringRemoved = procedure(ASender: TObject; const bstrAttribName: WideString; 
                                                                                         const bstrAttribVal: WideString) of object;
  TWindowsMediaPlayerMediaCollectionAttributeStringChanged = procedure(ASender: TObject; const bstrAttribName: WideString; 
                                                                                         const bstrOldAttribVal: WideString; 
                                                                                         const bstrNewAttribVal: WideString) of object;
  TWindowsMediaPlayerPlaylistCollectionPlaylistAdded = procedure(ASender: TObject; const bstrPlaylistName: WideString) of object;
  TWindowsMediaPlayerPlaylistCollectionPlaylistRemoved = procedure(ASender: TObject; const bstrPlaylistName: WideString) of object;
  TWindowsMediaPlayerPlaylistCollectionPlaylistSetAsDeleted = procedure(ASender: TObject; const bstrPlaylistName: WideString; 
                                                                                          varfIsDeleted: WordBool) of object;
  TWindowsMediaPlayerModeChange = procedure(ASender: TObject; const ModeName: WideString; 
                                                              NewValue: WordBool) of object;
  TWindowsMediaPlayerMediaError = procedure(ASender: TObject; const pMediaObject: IDispatch) of object;
  TWindowsMediaPlayerOpenPlaylistSwitch = procedure(ASender: TObject; const pItem: IDispatch) of object;
  TWindowsMediaPlayerDomainChange = procedure(ASender: TObject; const strDomain: WideString) of object;
  TWindowsMediaPlayerClick = procedure(ASender: TObject; nButton: Smallint; nShiftState: Smallint; 
                                                         fX: Integer; fY: Integer) of object;
  TWindowsMediaPlayerDoubleClick = procedure(ASender: TObject; nButton: Smallint; 
                                                               nShiftState: Smallint; fX: Integer; 
                                                               fY: Integer) of object;
  TWindowsMediaPlayerKeyDown = procedure(ASender: TObject; nKeyCode: Smallint; nShiftState: Smallint) of object;
  TWindowsMediaPlayerKeyPress = procedure(ASender: TObject; nKeyAscii: Smallint) of object;
  TWindowsMediaPlayerKeyUp = procedure(ASender: TObject; nKeyCode: Smallint; nShiftState: Smallint) of object;
  TWindowsMediaPlayerMouseDown = procedure(ASender: TObject; nButton: Smallint; 
                                                             nShiftState: Smallint; fX: Integer; 
                                                             fY: Integer) of object;
  TWindowsMediaPlayerMouseMove = procedure(ASender: TObject; nButton: Smallint; 
                                                             nShiftState: Smallint; fX: Integer; 
                                                             fY: Integer) of object;
  TWindowsMediaPlayerMouseUp = procedure(ASender: TObject; nButton: Smallint; 
                                                           nShiftState: Smallint; fX: Integer; 
                                                           fY: Integer) of object;
  TWindowsMediaPlayerDeviceConnect = procedure(ASender: TObject; const pDevice: IWMPSyncDevice) of object;
  TWindowsMediaPlayerDeviceDisconnect = procedure(ASender: TObject; const pDevice: IWMPSyncDevice) of object;
  TWindowsMediaPlayerDeviceStatusChange = procedure(ASender: TObject; const pDevice: IWMPSyncDevice; 
                                                                      NewStatus: WMPDeviceStatus) of object;
  TWindowsMediaPlayerDeviceSyncStateChange = procedure(ASender: TObject; const pDevice: IWMPSyncDevice; 
                                                                         NewState: WMPSyncState) of object;
  TWindowsMediaPlayerDeviceSyncError = procedure(ASender: TObject; const pDevice: IWMPSyncDevice; 
                                                                   const pMedia: IDispatch) of object;
  TWindowsMediaPlayerCreatePartnershipComplete = procedure(ASender: TObject; const pDevice: IWMPSyncDevice; 
                                                                             hrResult: HResult) of object;
  TWindowsMediaPlayerCdromRipStateChange = procedure(ASender: TObject; const pCdromRip: IWMPCdromRip; 
                                                                       wmprs: WMPRipState) of object;
  TWindowsMediaPlayerCdromRipMediaError = procedure(ASender: TObject; const pCdromRip: IWMPCdromRip; 
                                                                      const pMedia: IDispatch) of object;
  TWindowsMediaPlayerCdromBurnStateChange = procedure(ASender: TObject; const pCdromBurn: IWMPCdromBurn; 
                                                                        wmpbs: WMPBurnState) of object;
  TWindowsMediaPlayerCdromBurnMediaError = procedure(ASender: TObject; const pCdromBurn: IWMPCdromBurn; 
                                                                       const pMedia: IDispatch) of object;
  TWindowsMediaPlayerCdromBurnError = procedure(ASender: TObject; const pCdromBurn: IWMPCdromBurn; 
                                                                  hrError: HResult) of object;
  TWindowsMediaPlayerLibraryConnect = procedure(ASender: TObject; const pLibrary: IWMPLibrary) of object;
  TWindowsMediaPlayerLibraryDisconnect = procedure(ASender: TObject; const pLibrary: IWMPLibrary) of object;
  TWindowsMediaPlayerFolderScanStateChange = procedure(ASender: TObject; wmpfss: WMPFolderScanState) of object;
  TWindowsMediaPlayerStringCollectionChange = procedure(ASender: TObject; const pdispStringCollection: IDispatch; 
                                                                          change: WMPStringCollectionChangeEventType; 
                                                                          lCollectionIndex: Integer) of object;
  TWindowsMediaPlayerMediaCollectionMediaAdded = procedure(ASender: TObject; const pdispMedia: IDispatch) of object;
  TWindowsMediaPlayerMediaCollectionMediaRemoved = procedure(ASender: TObject; const pdispMedia: IDispatch) of object;

  TWindowsMediaPlayer = class(TOleControl)
  private
    FOnOpenStateChange: TWindowsMediaPlayerOpenStateChange;
    FOnPlayStateChange: TWindowsMediaPlayerPlayStateChange;
    FOnAudioLanguageChange: TWindowsMediaPlayerAudioLanguageChange;
    FOnStatusChange: TNotifyEvent;
    FOnScriptCommand: TWindowsMediaPlayerScriptCommand;
    FOnNewStream: TNotifyEvent;
    FOnDisconnect: TWindowsMediaPlayerDisconnect;
    FOnBuffering: TWindowsMediaPlayerBuffering;
    FOnError: TNotifyEvent;
    FOnWarning: TWindowsMediaPlayerWarning;
    FOnEndOfStream: TWindowsMediaPlayerEndOfStream;
    FOnPositionChange: TWindowsMediaPlayerPositionChange;
    FOnMarkerHit: TWindowsMediaPlayerMarkerHit;
    FOnDurationUnitChange: TWindowsMediaPlayerDurationUnitChange;
    FOnCdromMediaChange: TWindowsMediaPlayerCdromMediaChange;
    FOnPlaylistChange: TWindowsMediaPlayerPlaylistChange;
    FOnCurrentPlaylistChange: TWindowsMediaPlayerCurrentPlaylistChange;
    FOnCurrentPlaylistItemAvailable: TWindowsMediaPlayerCurrentPlaylistItemAvailable;
    FOnMediaChange: TWindowsMediaPlayerMediaChange;
    FOnCurrentMediaItemAvailable: TWindowsMediaPlayerCurrentMediaItemAvailable;
    FOnCurrentItemChange: TWindowsMediaPlayerCurrentItemChange;
    FOnMediaCollectionChange: TNotifyEvent;
    FOnMediaCollectionAttributeStringAdded: TWindowsMediaPlayerMediaCollectionAttributeStringAdded;
    FOnMediaCollectionAttributeStringRemoved: TWindowsMediaPlayerMediaCollectionAttributeStringRemoved;
    FOnMediaCollectionAttributeStringChanged: TWindowsMediaPlayerMediaCollectionAttributeStringChanged;
    FOnPlaylistCollectionChange: TNotifyEvent;
    FOnPlaylistCollectionPlaylistAdded: TWindowsMediaPlayerPlaylistCollectionPlaylistAdded;
    FOnPlaylistCollectionPlaylistRemoved: TWindowsMediaPlayerPlaylistCollectionPlaylistRemoved;
    FOnPlaylistCollectionPlaylistSetAsDeleted: TWindowsMediaPlayerPlaylistCollectionPlaylistSetAsDeleted;
    FOnModeChange: TWindowsMediaPlayerModeChange;
    FOnMediaError: TWindowsMediaPlayerMediaError;
    FOnOpenPlaylistSwitch: TWindowsMediaPlayerOpenPlaylistSwitch;
    FOnDomainChange: TWindowsMediaPlayerDomainChange;
    FOnSwitchedToPlayerApplication: TNotifyEvent;
    FOnSwitchedToControl: TNotifyEvent;
    FOnPlayerDockedStateChange: TNotifyEvent;
    FOnPlayerReconnect: TNotifyEvent;
    FOnClick: TWindowsMediaPlayerClick;
    FOnDoubleClick: TWindowsMediaPlayerDoubleClick;
    FOnKeyDown: TWindowsMediaPlayerKeyDown;
    FOnKeyPress: TWindowsMediaPlayerKeyPress;
    FOnKeyUp: TWindowsMediaPlayerKeyUp;
    FOnMouseDown: TWindowsMediaPlayerMouseDown;
    FOnMouseMove: TWindowsMediaPlayerMouseMove;
    FOnMouseUp: TWindowsMediaPlayerMouseUp;
    FOnDeviceConnect: TWindowsMediaPlayerDeviceConnect;
    FOnDeviceDisconnect: TWindowsMediaPlayerDeviceDisconnect;
    FOnDeviceStatusChange: TWindowsMediaPlayerDeviceStatusChange;
    FOnDeviceSyncStateChange: TWindowsMediaPlayerDeviceSyncStateChange;
    FOnDeviceSyncError: TWindowsMediaPlayerDeviceSyncError;
    FOnCreatePartnershipComplete: TWindowsMediaPlayerCreatePartnershipComplete;
    FOnCdromRipStateChange: TWindowsMediaPlayerCdromRipStateChange;
    FOnCdromRipMediaError: TWindowsMediaPlayerCdromRipMediaError;
    FOnCdromBurnStateChange: TWindowsMediaPlayerCdromBurnStateChange;
    FOnCdromBurnMediaError: TWindowsMediaPlayerCdromBurnMediaError;
    FOnCdromBurnError: TWindowsMediaPlayerCdromBurnError;
    FOnLibraryConnect: TWindowsMediaPlayerLibraryConnect;
    FOnLibraryDisconnect: TWindowsMediaPlayerLibraryDisconnect;
    FOnFolderScanStateChange: TWindowsMediaPlayerFolderScanStateChange;
    FOnStringCollectionChange: TWindowsMediaPlayerStringCollectionChange;
    FOnMediaCollectionMediaAdded: TWindowsMediaPlayerMediaCollectionMediaAdded;
    FOnMediaCollectionMediaRemoved: TWindowsMediaPlayerMediaCollectionMediaRemoved;
    FIntf: IWMPPlayer4;
    function  GetControlInterface: IWMPPlayer4;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_controls: IWMPControls;
    function Get_settings: IWMPSettings;
    function Get_currentMedia: IWMPMedia;
    procedure Set_currentMedia(const ppMedia: IWMPMedia);
    function Get_mediaCollection: IWMPMediaCollection;
    function Get_playlistCollection: IWMPPlaylistCollection;
    function Get_network: IWMPNetwork;
    function Get_currentPlaylist: IWMPPlaylist;
    procedure Set_currentPlaylist(const ppPL: IWMPPlaylist);
    function Get_cdromCollection: IWMPCdromCollection;
    function Get_closedCaption: IWMPClosedCaption;
    function Get_Error: IWMPError;
    function Get_dvd: IWMPDVD;
    function Get_playerApplication: IWMPPlayerApplication;
  public
    procedure close;
    procedure launchURL(const bstrURL: WideString);
    function newPlaylist(const bstrName: WideString; const bstrURL: WideString): IWMPPlaylist;
    function newMedia(const bstrURL: WideString): IWMPMedia;
    procedure openPlayer(const bstrURL: WideString);
    property  ControlInterface: IWMPPlayer4 read GetControlInterface;
    property  DefaultInterface: IWMPPlayer4 read GetControlInterface;
    property openState: TOleEnum index 2 read GetTOleEnumProp;
    property playState: TOleEnum index 10 read GetTOleEnumProp;
    property controls: IWMPControls read Get_controls;
    property settings: IWMPSettings read Get_settings;
    property mediaCollection: IWMPMediaCollection read Get_mediaCollection;
    property playlistCollection: IWMPPlaylistCollection read Get_playlistCollection;
    property versionInfo: WideString index 11 read GetWideStringProp;
    property network: IWMPNetwork read Get_network;
    property cdromCollection: IWMPCdromCollection read Get_cdromCollection;
    property closedCaption: IWMPClosedCaption read Get_closedCaption;
    property isOnline: WordBool index 16 read GetWordBoolProp;
    property Error: IWMPError read Get_Error;
    property status: WideString index 18 read GetWideStringProp;
    property dvd: IWMPDVD read Get_dvd;
    property isRemote: WordBool index 26 read GetWordBoolProp;
    property playerApplication: IWMPPlayerApplication read Get_playerApplication;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property URL: WideString index 1 read GetWideStringProp write SetWideStringProp stored False;
    property currentMedia: IWMPMedia read Get_currentMedia write Set_currentMedia stored False;
    property currentPlaylist: IWMPPlaylist read Get_currentPlaylist write Set_currentPlaylist stored False;
    property enabled: WordBool index 19 read GetWordBoolProp write SetWordBoolProp stored False;
    property fullScreen: WordBool index 21 read GetWordBoolProp write SetWordBoolProp stored False;
    property enableContextMenu: WordBool index 22 read GetWordBoolProp write SetWordBoolProp stored False;
    property uiMode: WideString index 23 read GetWideStringProp write SetWideStringProp stored False;
    property stretchToFit: WordBool index 24 read GetWordBoolProp write SetWordBoolProp stored False;
    property windowlessVideo: WordBool index 25 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnOpenStateChange: TWindowsMediaPlayerOpenStateChange read FOnOpenStateChange write FOnOpenStateChange;
    property OnPlayStateChange: TWindowsMediaPlayerPlayStateChange read FOnPlayStateChange write FOnPlayStateChange;
    property OnAudioLanguageChange: TWindowsMediaPlayerAudioLanguageChange read FOnAudioLanguageChange write FOnAudioLanguageChange;
    property OnStatusChange: TNotifyEvent read FOnStatusChange write FOnStatusChange;
    property OnScriptCommand: TWindowsMediaPlayerScriptCommand read FOnScriptCommand write FOnScriptCommand;
    property OnNewStream: TNotifyEvent read FOnNewStream write FOnNewStream;
    property OnDisconnect: TWindowsMediaPlayerDisconnect read FOnDisconnect write FOnDisconnect;
    property OnBuffering: TWindowsMediaPlayerBuffering read FOnBuffering write FOnBuffering;
    property OnError: TNotifyEvent read FOnError write FOnError;
    property OnWarning: TWindowsMediaPlayerWarning read FOnWarning write FOnWarning;
    property OnEndOfStream: TWindowsMediaPlayerEndOfStream read FOnEndOfStream write FOnEndOfStream;
    property OnPositionChange: TWindowsMediaPlayerPositionChange read FOnPositionChange write FOnPositionChange;
    property OnMarkerHit: TWindowsMediaPlayerMarkerHit read FOnMarkerHit write FOnMarkerHit;
    property OnDurationUnitChange: TWindowsMediaPlayerDurationUnitChange read FOnDurationUnitChange write FOnDurationUnitChange;
    property OnCdromMediaChange: TWindowsMediaPlayerCdromMediaChange read FOnCdromMediaChange write FOnCdromMediaChange;
    property OnPlaylistChange: TWindowsMediaPlayerPlaylistChange read FOnPlaylistChange write FOnPlaylistChange;
    property OnCurrentPlaylistChange: TWindowsMediaPlayerCurrentPlaylistChange read FOnCurrentPlaylistChange write FOnCurrentPlaylistChange;
    property OnCurrentPlaylistItemAvailable: TWindowsMediaPlayerCurrentPlaylistItemAvailable read FOnCurrentPlaylistItemAvailable write FOnCurrentPlaylistItemAvailable;
    property OnMediaChange: TWindowsMediaPlayerMediaChange read FOnMediaChange write FOnMediaChange;
    property OnCurrentMediaItemAvailable: TWindowsMediaPlayerCurrentMediaItemAvailable read FOnCurrentMediaItemAvailable write FOnCurrentMediaItemAvailable;
    property OnCurrentItemChange: TWindowsMediaPlayerCurrentItemChange read FOnCurrentItemChange write FOnCurrentItemChange;
    property OnMediaCollectionChange: TNotifyEvent read FOnMediaCollectionChange write FOnMediaCollectionChange;
    property OnMediaCollectionAttributeStringAdded: TWindowsMediaPlayerMediaCollectionAttributeStringAdded read FOnMediaCollectionAttributeStringAdded write FOnMediaCollectionAttributeStringAdded;
    property OnMediaCollectionAttributeStringRemoved: TWindowsMediaPlayerMediaCollectionAttributeStringRemoved read FOnMediaCollectionAttributeStringRemoved write FOnMediaCollectionAttributeStringRemoved;
    property OnMediaCollectionAttributeStringChanged: TWindowsMediaPlayerMediaCollectionAttributeStringChanged read FOnMediaCollectionAttributeStringChanged write FOnMediaCollectionAttributeStringChanged;
    property OnPlaylistCollectionChange: TNotifyEvent read FOnPlaylistCollectionChange write FOnPlaylistCollectionChange;
    property OnPlaylistCollectionPlaylistAdded: TWindowsMediaPlayerPlaylistCollectionPlaylistAdded read FOnPlaylistCollectionPlaylistAdded write FOnPlaylistCollectionPlaylistAdded;
    property OnPlaylistCollectionPlaylistRemoved: TWindowsMediaPlayerPlaylistCollectionPlaylistRemoved read FOnPlaylistCollectionPlaylistRemoved write FOnPlaylistCollectionPlaylistRemoved;
    property OnPlaylistCollectionPlaylistSetAsDeleted: TWindowsMediaPlayerPlaylistCollectionPlaylistSetAsDeleted read FOnPlaylistCollectionPlaylistSetAsDeleted write FOnPlaylistCollectionPlaylistSetAsDeleted;
    property OnModeChange: TWindowsMediaPlayerModeChange read FOnModeChange write FOnModeChange;
    property OnMediaError: TWindowsMediaPlayerMediaError read FOnMediaError write FOnMediaError;
    property OnOpenPlaylistSwitch: TWindowsMediaPlayerOpenPlaylistSwitch read FOnOpenPlaylistSwitch write FOnOpenPlaylistSwitch;
    property OnDomainChange: TWindowsMediaPlayerDomainChange read FOnDomainChange write FOnDomainChange;
    property OnSwitchedToPlayerApplication: TNotifyEvent read FOnSwitchedToPlayerApplication write FOnSwitchedToPlayerApplication;
    property OnSwitchedToControl: TNotifyEvent read FOnSwitchedToControl write FOnSwitchedToControl;
    property OnPlayerDockedStateChange: TNotifyEvent read FOnPlayerDockedStateChange write FOnPlayerDockedStateChange;
    property OnPlayerReconnect: TNotifyEvent read FOnPlayerReconnect write FOnPlayerReconnect;
    property OnClick: TWindowsMediaPlayerClick read FOnClick write FOnClick;
    property OnDoubleClick: TWindowsMediaPlayerDoubleClick read FOnDoubleClick write FOnDoubleClick;
    property OnKeyDown: TWindowsMediaPlayerKeyDown read FOnKeyDown write FOnKeyDown;
    property OnKeyPress: TWindowsMediaPlayerKeyPress read FOnKeyPress write FOnKeyPress;
    property OnKeyUp: TWindowsMediaPlayerKeyUp read FOnKeyUp write FOnKeyUp;
    property OnMouseDown: TWindowsMediaPlayerMouseDown read FOnMouseDown write FOnMouseDown;
    property OnMouseMove: TWindowsMediaPlayerMouseMove read FOnMouseMove write FOnMouseMove;
    property OnMouseUp: TWindowsMediaPlayerMouseUp read FOnMouseUp write FOnMouseUp;
    property OnDeviceConnect: TWindowsMediaPlayerDeviceConnect read FOnDeviceConnect write FOnDeviceConnect;
    property OnDeviceDisconnect: TWindowsMediaPlayerDeviceDisconnect read FOnDeviceDisconnect write FOnDeviceDisconnect;
    property OnDeviceStatusChange: TWindowsMediaPlayerDeviceStatusChange read FOnDeviceStatusChange write FOnDeviceStatusChange;
    property OnDeviceSyncStateChange: TWindowsMediaPlayerDeviceSyncStateChange read FOnDeviceSyncStateChange write FOnDeviceSyncStateChange;
    property OnDeviceSyncError: TWindowsMediaPlayerDeviceSyncError read FOnDeviceSyncError write FOnDeviceSyncError;
    property OnCreatePartnershipComplete: TWindowsMediaPlayerCreatePartnershipComplete read FOnCreatePartnershipComplete write FOnCreatePartnershipComplete;
    property OnCdromRipStateChange: TWindowsMediaPlayerCdromRipStateChange read FOnCdromRipStateChange write FOnCdromRipStateChange;
    property OnCdromRipMediaError: TWindowsMediaPlayerCdromRipMediaError read FOnCdromRipMediaError write FOnCdromRipMediaError;
    property OnCdromBurnStateChange: TWindowsMediaPlayerCdromBurnStateChange read FOnCdromBurnStateChange write FOnCdromBurnStateChange;
    property OnCdromBurnMediaError: TWindowsMediaPlayerCdromBurnMediaError read FOnCdromBurnMediaError write FOnCdromBurnMediaError;
    property OnCdromBurnError: TWindowsMediaPlayerCdromBurnError read FOnCdromBurnError write FOnCdromBurnError;
    property OnLibraryConnect: TWindowsMediaPlayerLibraryConnect read FOnLibraryConnect write FOnLibraryConnect;
    property OnLibraryDisconnect: TWindowsMediaPlayerLibraryDisconnect read FOnLibraryDisconnect write FOnLibraryDisconnect;
    property OnFolderScanStateChange: TWindowsMediaPlayerFolderScanStateChange read FOnFolderScanStateChange write FOnFolderScanStateChange;
    property OnStringCollectionChange: TWindowsMediaPlayerStringCollectionChange read FOnStringCollectionChange write FOnStringCollectionChange;
    property OnMediaCollectionMediaAdded: TWindowsMediaPlayerMediaCollectionMediaAdded read FOnMediaCollectionMediaAdded write FOnMediaCollectionMediaAdded;
    property OnMediaCollectionMediaRemoved: TWindowsMediaPlayerMediaCollectionMediaRemoved read FOnMediaCollectionMediaRemoved write FOnMediaCollectionMediaRemoved;
  end;

// *********************************************************************//
// The Class CoWMPButtonCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPButtonCtrl exposed by              
// the CoClass WMPButtonCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPButtonCtrl = class
    class function Create: IWMPButtonCtrl;
    class function CreateRemote(const MachineName: string): IWMPButtonCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPButtonCtrl
// Help String      : WMPButtonCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPButtonCtrl
// Def. Intf. DISP? : No
// Event   Interface: IWMPButtonCtrlEvents
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPButtonCtrlProperties= class;
{$ENDIF}
  TWMPButtonCtrl = class(TOleServer)
  private
    FOnonclick: TNotifyEvent;
    FIntf: IWMPButtonCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPButtonCtrlProperties;
    function GetServerProperties: TWMPButtonCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPButtonCtrl;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_image: WideString;
    procedure Set_image(const pVal: WideString);
    function Get_hoverImage: WideString;
    procedure Set_hoverImage(const pVal: WideString);
    function Get_downImage: WideString;
    procedure Set_downImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_hoverDownImage: WideString;
    procedure Set_hoverDownImage(const pVal: WideString);
    function Get_tiled: WordBool;
    procedure Set_tiled(pVal: WordBool);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
    function Get_down: WordBool;
    procedure Set_down(pVal: WordBool);
    function Get_sticky: WordBool;
    procedure Set_sticky(pVal: WordBool);
    function Get_upToolTip: WideString;
    procedure Set_upToolTip(const pVal: WideString);
    function Get_downToolTip: WideString;
    procedure Set_downToolTip(const pVal: WideString);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPButtonCtrl);
    procedure Disconnect; override;
    property DefaultInterface: IWMPButtonCtrl read GetDefaultInterface;
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property hoverDownImage: WideString read Get_hoverDownImage write Set_hoverDownImage;
    property tiled: WordBool read Get_tiled write Set_tiled;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property down: WordBool read Get_down write Set_down;
    property sticky: WordBool read Get_sticky write Set_sticky;
    property upToolTip: WideString read Get_upToolTip write Set_upToolTip;
    property downToolTip: WideString read Get_downToolTip write Set_downToolTip;
    property cursor: WideString read Get_cursor write Set_cursor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPButtonCtrlProperties read GetServerProperties;
{$ENDIF}
    property Ononclick: TNotifyEvent read FOnonclick write FOnonclick;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPButtonCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPButtonCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPButtonCtrl;
    function    GetDefaultInterface: IWMPButtonCtrl;
    constructor Create(AServer: TWMPButtonCtrl);
  protected
    function Get_image: WideString;
    procedure Set_image(const pVal: WideString);
    function Get_hoverImage: WideString;
    procedure Set_hoverImage(const pVal: WideString);
    function Get_downImage: WideString;
    procedure Set_downImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_hoverDownImage: WideString;
    procedure Set_hoverDownImage(const pVal: WideString);
    function Get_tiled: WordBool;
    procedure Set_tiled(pVal: WordBool);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
    function Get_down: WordBool;
    procedure Set_down(pVal: WordBool);
    function Get_sticky: WordBool;
    procedure Set_sticky(pVal: WordBool);
    function Get_upToolTip: WideString;
    procedure Set_upToolTip(const pVal: WideString);
    function Get_downToolTip: WideString;
    procedure Set_downToolTip(const pVal: WideString);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
  public
    property DefaultInterface: IWMPButtonCtrl read GetDefaultInterface;
  published
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property hoverDownImage: WideString read Get_hoverDownImage write Set_hoverDownImage;
    property tiled: WordBool read Get_tiled write Set_tiled;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property down: WordBool read Get_down write Set_down;
    property sticky: WordBool read Get_sticky write Set_sticky;
    property upToolTip: WideString read Get_upToolTip write Set_upToolTip;
    property downToolTip: WideString read Get_downToolTip write Set_downToolTip;
    property cursor: WideString read Get_cursor write Set_cursor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPListBoxCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPListBoxCtrl exposed by              
// the CoClass WMPListBoxCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPListBoxCtrl = class
    class function Create: IWMPListBoxCtrl;
    class function CreateRemote(const MachineName: string): IWMPListBoxCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPListBoxCtrl
// Help String      : WMPListBoxCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPListBoxCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPListBoxCtrlProperties= class;
{$ENDIF}
  TWMPListBoxCtrl = class(TOleServer)
  private
    FIntf: IWMPListBoxCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPListBoxCtrlProperties;
    function GetServerProperties: TWMPListBoxCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPListBoxCtrl;
  protected
    procedure InitServerData; override;
    function Get_selectedItem: Integer;
    procedure Set_selectedItem(pnPos: Integer);
    function Get_sorted: WordBool;
    procedure Set_sorted(pVal: WordBool);
    function Get_multiselect: WordBool;
    procedure Set_multiselect(pVal: WordBool);
    function Get_readOnly: WordBool;
    procedure Set_readOnly(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_itemCount: Integer;
    function Get_firstVisibleItem: Integer;
    procedure Set_firstVisibleItem(pVal: Integer);
    procedure Set_popUp(Param1: WordBool);
    function Get_focusItem: Integer;
    procedure Set_focusItem(pVal: Integer);
    function Get_border: WordBool;
    procedure Set_border(pVal: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPListBoxCtrl);
    procedure Disconnect; override;
    function getItem(nPos: Integer): WideString;
    procedure insertItem(nPos: Integer; const newVal: WideString);
    procedure appendItem(const newVal: WideString);
    procedure replaceItem(nPos: Integer; const newVal: WideString);
    procedure deleteItem(nPos: Integer);
    procedure deleteAll;
    function findItem(nStartIndex: Integer; const newVal: WideString): Integer;
    function getNextSelectedItem(nStartIndex: Integer): Integer;
    procedure setSelectedState(nPos: Integer; vbSelected: WordBool);
    procedure show;
    procedure dismiss;
    property DefaultInterface: IWMPListBoxCtrl read GetDefaultInterface;
    property itemCount: Integer read Get_itemCount;
    property popUp: WordBool write Set_popUp;
    property selectedItem: Integer read Get_selectedItem write Set_selectedItem;
    property sorted: WordBool read Get_sorted write Set_sorted;
    property multiselect: WordBool read Get_multiselect write Set_multiselect;
    property readOnly: WordBool read Get_readOnly write Set_readOnly;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property firstVisibleItem: Integer read Get_firstVisibleItem write Set_firstVisibleItem;
    property focusItem: Integer read Get_focusItem write Set_focusItem;
    property border: WordBool read Get_border write Set_border;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPListBoxCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPListBoxCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPListBoxCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPListBoxCtrl;
    function    GetDefaultInterface: IWMPListBoxCtrl;
    constructor Create(AServer: TWMPListBoxCtrl);
  protected
    function Get_selectedItem: Integer;
    procedure Set_selectedItem(pnPos: Integer);
    function Get_sorted: WordBool;
    procedure Set_sorted(pVal: WordBool);
    function Get_multiselect: WordBool;
    procedure Set_multiselect(pVal: WordBool);
    function Get_readOnly: WordBool;
    procedure Set_readOnly(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_itemCount: Integer;
    function Get_firstVisibleItem: Integer;
    procedure Set_firstVisibleItem(pVal: Integer);
    procedure Set_popUp(Param1: WordBool);
    function Get_focusItem: Integer;
    procedure Set_focusItem(pVal: Integer);
    function Get_border: WordBool;
    procedure Set_border(pVal: WordBool);
  public
    property DefaultInterface: IWMPListBoxCtrl read GetDefaultInterface;
  published
    property selectedItem: Integer read Get_selectedItem write Set_selectedItem;
    property sorted: WordBool read Get_sorted write Set_sorted;
    property multiselect: WordBool read Get_multiselect write Set_multiselect;
    property readOnly: WordBool read Get_readOnly write Set_readOnly;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property firstVisibleItem: Integer read Get_firstVisibleItem write Set_firstVisibleItem;
    property focusItem: Integer read Get_focusItem write Set_focusItem;
    property border: WordBool read Get_border write Set_border;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPSliderCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPSliderCtrl exposed by              
// the CoClass WMPSliderCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPSliderCtrl = class
    class function Create: IWMPSliderCtrl;
    class function CreateRemote(const MachineName: string): IWMPSliderCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPSliderCtrl
// Help String      : WMPSliderCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPSliderCtrl
// Def. Intf. DISP? : No
// Event   Interface: IWMPSliderCtrlEvents
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPSliderCtrlProperties= class;
{$ENDIF}
  TWMPSliderCtrl = class(TOleServer)
  private
    FOnondragbegin: TNotifyEvent;
    FOnondragend: TNotifyEvent;
    FOnonpositionchange: TNotifyEvent;
    FIntf: IWMPSliderCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPSliderCtrlProperties;
    function GetServerProperties: TWMPSliderCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPSliderCtrl;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_direction: WideString;
    procedure Set_direction(const pVal: WideString);
    function Get_slide: WordBool;
    procedure Set_slide(pVal: WordBool);
    function Get_tiled: WordBool;
    procedure Set_tiled(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_foregroundEndColor: WideString;
    procedure Set_foregroundEndColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_backgroundEndColor: WideString;
    procedure Set_backgroundEndColor(const pVal: WideString);
    function Get_disabledColor: WideString;
    procedure Set_disabledColor(const pVal: WideString);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
    function Get_foregroundImage: WideString;
    procedure Set_foregroundImage(const pVal: WideString);
    function Get_backgroundImage: WideString;
    procedure Set_backgroundImage(const pVal: WideString);
    function Get_backgroundHoverImage: WideString;
    procedure Set_backgroundHoverImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_thumbImage: WideString;
    procedure Set_thumbImage(const pVal: WideString);
    function Get_thumbHoverImage: WideString;
    procedure Set_thumbHoverImage(const pVal: WideString);
    function Get_thumbDownImage: WideString;
    procedure Set_thumbDownImage(const pVal: WideString);
    function Get_thumbDisabledImage: WideString;
    procedure Set_thumbDisabledImage(const pVal: WideString);
    function Get_min: Single;
    procedure Set_min(pVal: Single);
    function Get_max: Single;
    procedure Set_max(pVal: Single);
    function Get_value: Single;
    procedure Set_value(pVal: Single);
    function Get_toolTip: WideString;
    procedure Set_toolTip(const pVal: WideString);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_borderSize: SYSINT;
    procedure Set_borderSize(pVal: SYSINT);
    function Get_foregroundHoverImage: WideString;
    procedure Set_foregroundHoverImage(const pVal: WideString);
    function Get_foregroundProgress: Single;
    procedure Set_foregroundProgress(pVal: Single);
    function Get_useForegroundProgress: WordBool;
    procedure Set_useForegroundProgress(pVal: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPSliderCtrl);
    procedure Disconnect; override;
    property DefaultInterface: IWMPSliderCtrl read GetDefaultInterface;
    property direction: WideString read Get_direction write Set_direction;
    property slide: WordBool read Get_slide write Set_slide;
    property tiled: WordBool read Get_tiled write Set_tiled;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property foregroundEndColor: WideString read Get_foregroundEndColor write Set_foregroundEndColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property backgroundEndColor: WideString read Get_backgroundEndColor write Set_backgroundEndColor;
    property disabledColor: WideString read Get_disabledColor write Set_disabledColor;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property foregroundImage: WideString read Get_foregroundImage write Set_foregroundImage;
    property backgroundImage: WideString read Get_backgroundImage write Set_backgroundImage;
    property backgroundHoverImage: WideString read Get_backgroundHoverImage write Set_backgroundHoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property thumbImage: WideString read Get_thumbImage write Set_thumbImage;
    property thumbHoverImage: WideString read Get_thumbHoverImage write Set_thumbHoverImage;
    property thumbDownImage: WideString read Get_thumbDownImage write Set_thumbDownImage;
    property thumbDisabledImage: WideString read Get_thumbDisabledImage write Set_thumbDisabledImage;
    property min: Single read Get_min write Set_min;
    property max: Single read Get_max write Set_max;
    property value: Single read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property cursor: WideString read Get_cursor write Set_cursor;
    property borderSize: SYSINT read Get_borderSize write Set_borderSize;
    property foregroundHoverImage: WideString read Get_foregroundHoverImage write Set_foregroundHoverImage;
    property foregroundProgress: Single read Get_foregroundProgress write Set_foregroundProgress;
    property useForegroundProgress: WordBool read Get_useForegroundProgress write Set_useForegroundProgress;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPSliderCtrlProperties read GetServerProperties;
{$ENDIF}
    property Onondragbegin: TNotifyEvent read FOnondragbegin write FOnondragbegin;
    property Onondragend: TNotifyEvent read FOnondragend write FOnondragend;
    property Ononpositionchange: TNotifyEvent read FOnonpositionchange write FOnonpositionchange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPSliderCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPSliderCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPSliderCtrl;
    function    GetDefaultInterface: IWMPSliderCtrl;
    constructor Create(AServer: TWMPSliderCtrl);
  protected
    function Get_direction: WideString;
    procedure Set_direction(const pVal: WideString);
    function Get_slide: WordBool;
    procedure Set_slide(pVal: WordBool);
    function Get_tiled: WordBool;
    procedure Set_tiled(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_foregroundEndColor: WideString;
    procedure Set_foregroundEndColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_backgroundEndColor: WideString;
    procedure Set_backgroundEndColor(const pVal: WideString);
    function Get_disabledColor: WideString;
    procedure Set_disabledColor(const pVal: WideString);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
    function Get_foregroundImage: WideString;
    procedure Set_foregroundImage(const pVal: WideString);
    function Get_backgroundImage: WideString;
    procedure Set_backgroundImage(const pVal: WideString);
    function Get_backgroundHoverImage: WideString;
    procedure Set_backgroundHoverImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_thumbImage: WideString;
    procedure Set_thumbImage(const pVal: WideString);
    function Get_thumbHoverImage: WideString;
    procedure Set_thumbHoverImage(const pVal: WideString);
    function Get_thumbDownImage: WideString;
    procedure Set_thumbDownImage(const pVal: WideString);
    function Get_thumbDisabledImage: WideString;
    procedure Set_thumbDisabledImage(const pVal: WideString);
    function Get_min: Single;
    procedure Set_min(pVal: Single);
    function Get_max: Single;
    procedure Set_max(pVal: Single);
    function Get_value: Single;
    procedure Set_value(pVal: Single);
    function Get_toolTip: WideString;
    procedure Set_toolTip(const pVal: WideString);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_borderSize: SYSINT;
    procedure Set_borderSize(pVal: SYSINT);
    function Get_foregroundHoverImage: WideString;
    procedure Set_foregroundHoverImage(const pVal: WideString);
    function Get_foregroundProgress: Single;
    procedure Set_foregroundProgress(pVal: Single);
    function Get_useForegroundProgress: WordBool;
    procedure Set_useForegroundProgress(pVal: WordBool);
  public
    property DefaultInterface: IWMPSliderCtrl read GetDefaultInterface;
  published
    property direction: WideString read Get_direction write Set_direction;
    property slide: WordBool read Get_slide write Set_slide;
    property tiled: WordBool read Get_tiled write Set_tiled;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property foregroundEndColor: WideString read Get_foregroundEndColor write Set_foregroundEndColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property backgroundEndColor: WideString read Get_backgroundEndColor write Set_backgroundEndColor;
    property disabledColor: WideString read Get_disabledColor write Set_disabledColor;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property foregroundImage: WideString read Get_foregroundImage write Set_foregroundImage;
    property backgroundImage: WideString read Get_backgroundImage write Set_backgroundImage;
    property backgroundHoverImage: WideString read Get_backgroundHoverImage write Set_backgroundHoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property thumbImage: WideString read Get_thumbImage write Set_thumbImage;
    property thumbHoverImage: WideString read Get_thumbHoverImage write Set_thumbHoverImage;
    property thumbDownImage: WideString read Get_thumbDownImage write Set_thumbDownImage;
    property thumbDisabledImage: WideString read Get_thumbDisabledImage write Set_thumbDisabledImage;
    property min: Single read Get_min write Set_min;
    property max: Single read Get_max write Set_max;
    property value: Single read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property cursor: WideString read Get_cursor write Set_cursor;
    property borderSize: SYSINT read Get_borderSize write Set_borderSize;
    property foregroundHoverImage: WideString read Get_foregroundHoverImage write Set_foregroundHoverImage;
    property foregroundProgress: Single read Get_foregroundProgress write Set_foregroundProgress;
    property useForegroundProgress: WordBool read Get_useForegroundProgress write Set_useForegroundProgress;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPVideoCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPVideoCtrl exposed by              
// the CoClass WMPVideoCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPVideoCtrl = class
    class function Create: IWMPVideoCtrl;
    class function CreateRemote(const MachineName: string): IWMPVideoCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPVideoCtrl
// Help String      : WMPVideoCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPVideoCtrl
// Def. Intf. DISP? : No
// Event   Interface: IWMPVideoCtrlEvents
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPVideoCtrlProperties= class;
{$ENDIF}
  TWMPVideoCtrl = class(TOleServer)
  private
    FOnonvideostart: TNotifyEvent;
    FOnonvideoend: TNotifyEvent;
    FIntf: IWMPVideoCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPVideoCtrlProperties;
    function GetServerProperties: TWMPVideoCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPVideoCtrl;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    procedure Set_windowless(pbClipped: WordBool);
    function Get_windowless: WordBool;
    procedure Set_cursor(const pbstrCursor: WideString);
    function Get_cursor: WideString;
    procedure Set_backgroundColor(const pbstrColor: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_maintainAspectRatio(pbMaintainAspectRatio: WordBool);
    function Get_maintainAspectRatio: WordBool;
    procedure Set_toolTip(const bstrToolTip: WideString);
    function Get_toolTip: WideString;
    function Get_fullScreen: WordBool;
    procedure Set_fullScreen(pbFullScreen: WordBool);
    procedure Set_shrinkToFit(pbShrinkToFit: WordBool);
    function Get_shrinkToFit: WordBool;
    procedure Set_stretchToFit(pbStretchToFit: WordBool);
    function Get_stretchToFit: WordBool;
    procedure Set_zoom(pzoom: Integer);
    function Get_zoom: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPVideoCtrl);
    procedure Disconnect; override;
    property DefaultInterface: IWMPVideoCtrl read GetDefaultInterface;
    property windowless: WordBool read Get_windowless write Set_windowless;
    property cursor: WideString read Get_cursor write Set_cursor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property maintainAspectRatio: WordBool read Get_maintainAspectRatio write Set_maintainAspectRatio;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property shrinkToFit: WordBool read Get_shrinkToFit write Set_shrinkToFit;
    property stretchToFit: WordBool read Get_stretchToFit write Set_stretchToFit;
    property zoom: Integer read Get_zoom write Set_zoom;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPVideoCtrlProperties read GetServerProperties;
{$ENDIF}
    property Ononvideostart: TNotifyEvent read FOnonvideostart write FOnonvideostart;
    property Ononvideoend: TNotifyEvent read FOnonvideoend write FOnonvideoend;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPVideoCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPVideoCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPVideoCtrl;
    function    GetDefaultInterface: IWMPVideoCtrl;
    constructor Create(AServer: TWMPVideoCtrl);
  protected
    procedure Set_windowless(pbClipped: WordBool);
    function Get_windowless: WordBool;
    procedure Set_cursor(const pbstrCursor: WideString);
    function Get_cursor: WideString;
    procedure Set_backgroundColor(const pbstrColor: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_maintainAspectRatio(pbMaintainAspectRatio: WordBool);
    function Get_maintainAspectRatio: WordBool;
    procedure Set_toolTip(const bstrToolTip: WideString);
    function Get_toolTip: WideString;
    function Get_fullScreen: WordBool;
    procedure Set_fullScreen(pbFullScreen: WordBool);
    procedure Set_shrinkToFit(pbShrinkToFit: WordBool);
    function Get_shrinkToFit: WordBool;
    procedure Set_stretchToFit(pbStretchToFit: WordBool);
    function Get_stretchToFit: WordBool;
    procedure Set_zoom(pzoom: Integer);
    function Get_zoom: Integer;
  public
    property DefaultInterface: IWMPVideoCtrl read GetDefaultInterface;
  published
    property windowless: WordBool read Get_windowless write Set_windowless;
    property cursor: WideString read Get_cursor write Set_cursor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property maintainAspectRatio: WordBool read Get_maintainAspectRatio write Set_maintainAspectRatio;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
    property shrinkToFit: WordBool read Get_shrinkToFit write Set_shrinkToFit;
    property stretchToFit: WordBool read Get_stretchToFit write Set_stretchToFit;
    property zoom: Integer read Get_zoom write Set_zoom;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPEffects provides a Create and CreateRemote method to          
// create instances of the default interface IWMPEffectsCtrl exposed by              
// the CoClass WMPEffects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPEffects = class
    class function Create: IWMPEffectsCtrl;
    class function CreateRemote(const MachineName: string): IWMPEffectsCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPEffects
// Help String      : WMPEffects: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPEffectsCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPEffectsProperties= class;
{$ENDIF}
  TWMPEffects = class(TOleServer)
  private
    FIntf: IWMPEffectsCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPEffectsProperties;
    function GetServerProperties: TWMPEffectsProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPEffectsCtrl;
  protected
    procedure InitServerData; override;
    function Get_windowed: WordBool;
    procedure Set_windowed(pVal: WordBool);
    function Get_allowAll: WordBool;
    procedure Set_allowAll(pVal: WordBool);
    procedure Set_currentEffectType(const pVal: WideString);
    function Get_currentEffectType: WideString;
    function Get_currentEffectTitle: WideString;
    function Get_currentEffect: IDispatch;
    procedure Set_currentEffect(const p: IDispatch);
    function Get_currentPreset: Integer;
    procedure Set_currentPreset(pVal: Integer);
    function Get_currentPresetTitle: WideString;
    function Get_currentEffectPresetCount: Integer;
    function Get_fullScreen: WordBool;
    procedure Set_fullScreen(pbFullScreen: WordBool);
    function Get_effectCanGoFullScreen: WordBool;
    function Get_effectHasPropertyPage: WordBool;
    function Get_effectCount: Integer;
    function Get_effectTitle(index: Integer): WideString;
    function Get_effectType(index: Integer): WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPEffectsCtrl);
    procedure Disconnect; override;
    procedure next;
    procedure previous;
    procedure settings;
    procedure nextEffect;
    procedure previousEffect;
    procedure nextPreset;
    procedure previousPreset;
    property DefaultInterface: IWMPEffectsCtrl read GetDefaultInterface;
    property currentEffectTitle: WideString read Get_currentEffectTitle;
    property currentEffect: IDispatch read Get_currentEffect write Set_currentEffect;
    property currentPresetTitle: WideString read Get_currentPresetTitle;
    property currentEffectPresetCount: Integer read Get_currentEffectPresetCount;
    property effectCanGoFullScreen: WordBool read Get_effectCanGoFullScreen;
    property effectHasPropertyPage: WordBool read Get_effectHasPropertyPage;
    property effectCount: Integer read Get_effectCount;
    property effectTitle[index: Integer]: WideString read Get_effectTitle;
    property effectType[index: Integer]: WideString read Get_effectType;
    property windowed: WordBool read Get_windowed write Set_windowed;
    property allowAll: WordBool read Get_allowAll write Set_allowAll;
    property currentEffectType: WideString read Get_currentEffectType write Set_currentEffectType;
    property currentPreset: Integer read Get_currentPreset write Set_currentPreset;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPEffectsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPEffects
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPEffectsProperties = class(TPersistent)
  private
    FServer:    TWMPEffects;
    function    GetDefaultInterface: IWMPEffectsCtrl;
    constructor Create(AServer: TWMPEffects);
  protected
    function Get_windowed: WordBool;
    procedure Set_windowed(pVal: WordBool);
    function Get_allowAll: WordBool;
    procedure Set_allowAll(pVal: WordBool);
    procedure Set_currentEffectType(const pVal: WideString);
    function Get_currentEffectType: WideString;
    function Get_currentEffectTitle: WideString;
    function Get_currentEffect: IDispatch;
    procedure Set_currentEffect(const p: IDispatch);
    function Get_currentPreset: Integer;
    procedure Set_currentPreset(pVal: Integer);
    function Get_currentPresetTitle: WideString;
    function Get_currentEffectPresetCount: Integer;
    function Get_fullScreen: WordBool;
    procedure Set_fullScreen(pbFullScreen: WordBool);
    function Get_effectCanGoFullScreen: WordBool;
    function Get_effectHasPropertyPage: WordBool;
    function Get_effectCount: Integer;
    function Get_effectTitle(index: Integer): WideString;
    function Get_effectType(index: Integer): WideString;
  public
    property DefaultInterface: IWMPEffectsCtrl read GetDefaultInterface;
  published
    property windowed: WordBool read Get_windowed write Set_windowed;
    property allowAll: WordBool read Get_allowAll write Set_allowAll;
    property currentEffectType: WideString read Get_currentEffectType write Set_currentEffectType;
    property currentPreset: Integer read Get_currentPreset write Set_currentPreset;
    property fullScreen: WordBool read Get_fullScreen write Set_fullScreen;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPEqualizerSettingsCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPEqualizerSettingsCtrl exposed by              
// the CoClass WMPEqualizerSettingsCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPEqualizerSettingsCtrl = class
    class function Create: IWMPEqualizerSettingsCtrl;
    class function CreateRemote(const MachineName: string): IWMPEqualizerSettingsCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPEqualizerSettingsCtrl
// Help String      : WMPEqualizerSettingsCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPEqualizerSettingsCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPEqualizerSettingsCtrlProperties= class;
{$ENDIF}
  TWMPEqualizerSettingsCtrl = class(TOleServer)
  private
    FIntf: IWMPEqualizerSettingsCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPEqualizerSettingsCtrlProperties;
    function GetServerProperties: TWMPEqualizerSettingsCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPEqualizerSettingsCtrl;
  protected
    procedure InitServerData; override;
    function Get_bypass: WordBool;
    procedure Set_bypass(pVal: WordBool);
    function Get_gainLevel1: Single;
    procedure Set_gainLevel1(pflLevel: Single);
    function Get_gainLevel2: Single;
    procedure Set_gainLevel2(pflLevel: Single);
    function Get_gainLevel3: Single;
    procedure Set_gainLevel3(pflLevel: Single);
    function Get_gainLevel4: Single;
    procedure Set_gainLevel4(pflLevel: Single);
    function Get_gainLevel5: Single;
    procedure Set_gainLevel5(pflLevel: Single);
    function Get_gainLevel6: Single;
    procedure Set_gainLevel6(pflLevel: Single);
    function Get_gainLevel7: Single;
    procedure Set_gainLevel7(pflLevel: Single);
    function Get_gainLevel8: Single;
    procedure Set_gainLevel8(pflLevel: Single);
    function Get_gainLevel9: Single;
    procedure Set_gainLevel9(pflLevel: Single);
    function Get_gainLevel10: Single;
    procedure Set_gainLevel10(pflLevel: Single);
    function Get_gainLevels(iIndex: Integer): Single;
    procedure Set_gainLevels(iIndex: Integer; pflLevel: Single);
    function Get_bands: Integer;
    function Get_currentPreset: Integer;
    procedure Set_currentPreset(pVal: Integer);
    function Get_currentPresetTitle: WideString;
    function Get_presetCount: Integer;
    function Get_enhancedAudio: WordBool;
    procedure Set_enhancedAudio(pfVal: WordBool);
    function Get_speakerSize: Integer;
    procedure Set_speakerSize(plVal: Integer);
    function Get_currentSpeakerName: WideString;
    function Get_truBassLevel: Integer;
    procedure Set_truBassLevel(plTruBassLevel: Integer);
    function Get_wowLevel: Integer;
    procedure Set_wowLevel(plWowLevel: Integer);
    function Get_splineTension: Single;
    procedure Set_splineTension(pflSplineTension: Single);
    function Get_enableSplineTension: WordBool;
    procedure Set_enableSplineTension(pfEnableSplineTension: WordBool);
    function Get_presetTitle(iIndex: Integer): WideString;
    function Get_normalization: WordBool;
    procedure Set_normalization(pfVal: WordBool);
    function Get_normalizationAverage: Single;
    function Get_normalizationPeak: Single;
    function Get_crossFade: WordBool;
    procedure Set_crossFade(pfVal: WordBool);
    function Get_crossFadeWindow: Integer;
    procedure Set_crossFadeWindow(plWindow: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPEqualizerSettingsCtrl);
    procedure Disconnect; override;
    procedure reset;
    procedure nextPreset;
    procedure previousPreset;
    property DefaultInterface: IWMPEqualizerSettingsCtrl read GetDefaultInterface;
    property gainLevels[iIndex: Integer]: Single read Get_gainLevels write Set_gainLevels;
    property bands: Integer read Get_bands;
    property currentPresetTitle: WideString read Get_currentPresetTitle;
    property presetCount: Integer read Get_presetCount;
    property currentSpeakerName: WideString read Get_currentSpeakerName;
    property presetTitle[iIndex: Integer]: WideString read Get_presetTitle;
    property normalizationAverage: Single read Get_normalizationAverage;
    property normalizationPeak: Single read Get_normalizationPeak;
    property bypass: WordBool read Get_bypass write Set_bypass;
    property gainLevel1: Single read Get_gainLevel1 write Set_gainLevel1;
    property gainLevel2: Single read Get_gainLevel2 write Set_gainLevel2;
    property gainLevel3: Single read Get_gainLevel3 write Set_gainLevel3;
    property gainLevel4: Single read Get_gainLevel4 write Set_gainLevel4;
    property gainLevel5: Single read Get_gainLevel5 write Set_gainLevel5;
    property gainLevel6: Single read Get_gainLevel6 write Set_gainLevel6;
    property gainLevel7: Single read Get_gainLevel7 write Set_gainLevel7;
    property gainLevel8: Single read Get_gainLevel8 write Set_gainLevel8;
    property gainLevel9: Single read Get_gainLevel9 write Set_gainLevel9;
    property gainLevel10: Single read Get_gainLevel10 write Set_gainLevel10;
    property currentPreset: Integer read Get_currentPreset write Set_currentPreset;
    property enhancedAudio: WordBool read Get_enhancedAudio write Set_enhancedAudio;
    property speakerSize: Integer read Get_speakerSize write Set_speakerSize;
    property truBassLevel: Integer read Get_truBassLevel write Set_truBassLevel;
    property wowLevel: Integer read Get_wowLevel write Set_wowLevel;
    property splineTension: Single read Get_splineTension write Set_splineTension;
    property enableSplineTension: WordBool read Get_enableSplineTension write Set_enableSplineTension;
    property normalization: WordBool read Get_normalization write Set_normalization;
    property crossFade: WordBool read Get_crossFade write Set_crossFade;
    property crossFadeWindow: Integer read Get_crossFadeWindow write Set_crossFadeWindow;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPEqualizerSettingsCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPEqualizerSettingsCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPEqualizerSettingsCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPEqualizerSettingsCtrl;
    function    GetDefaultInterface: IWMPEqualizerSettingsCtrl;
    constructor Create(AServer: TWMPEqualizerSettingsCtrl);
  protected
    function Get_bypass: WordBool;
    procedure Set_bypass(pVal: WordBool);
    function Get_gainLevel1: Single;
    procedure Set_gainLevel1(pflLevel: Single);
    function Get_gainLevel2: Single;
    procedure Set_gainLevel2(pflLevel: Single);
    function Get_gainLevel3: Single;
    procedure Set_gainLevel3(pflLevel: Single);
    function Get_gainLevel4: Single;
    procedure Set_gainLevel4(pflLevel: Single);
    function Get_gainLevel5: Single;
    procedure Set_gainLevel5(pflLevel: Single);
    function Get_gainLevel6: Single;
    procedure Set_gainLevel6(pflLevel: Single);
    function Get_gainLevel7: Single;
    procedure Set_gainLevel7(pflLevel: Single);
    function Get_gainLevel8: Single;
    procedure Set_gainLevel8(pflLevel: Single);
    function Get_gainLevel9: Single;
    procedure Set_gainLevel9(pflLevel: Single);
    function Get_gainLevel10: Single;
    procedure Set_gainLevel10(pflLevel: Single);
    function Get_gainLevels(iIndex: Integer): Single;
    procedure Set_gainLevels(iIndex: Integer; pflLevel: Single);
    function Get_bands: Integer;
    function Get_currentPreset: Integer;
    procedure Set_currentPreset(pVal: Integer);
    function Get_currentPresetTitle: WideString;
    function Get_presetCount: Integer;
    function Get_enhancedAudio: WordBool;
    procedure Set_enhancedAudio(pfVal: WordBool);
    function Get_speakerSize: Integer;
    procedure Set_speakerSize(plVal: Integer);
    function Get_currentSpeakerName: WideString;
    function Get_truBassLevel: Integer;
    procedure Set_truBassLevel(plTruBassLevel: Integer);
    function Get_wowLevel: Integer;
    procedure Set_wowLevel(plWowLevel: Integer);
    function Get_splineTension: Single;
    procedure Set_splineTension(pflSplineTension: Single);
    function Get_enableSplineTension: WordBool;
    procedure Set_enableSplineTension(pfEnableSplineTension: WordBool);
    function Get_presetTitle(iIndex: Integer): WideString;
    function Get_normalization: WordBool;
    procedure Set_normalization(pfVal: WordBool);
    function Get_normalizationAverage: Single;
    function Get_normalizationPeak: Single;
    function Get_crossFade: WordBool;
    procedure Set_crossFade(pfVal: WordBool);
    function Get_crossFadeWindow: Integer;
    procedure Set_crossFadeWindow(plWindow: Integer);
  public
    property DefaultInterface: IWMPEqualizerSettingsCtrl read GetDefaultInterface;
  published
    property bypass: WordBool read Get_bypass write Set_bypass;
    property gainLevel1: Single read Get_gainLevel1 write Set_gainLevel1;
    property gainLevel2: Single read Get_gainLevel2 write Set_gainLevel2;
    property gainLevel3: Single read Get_gainLevel3 write Set_gainLevel3;
    property gainLevel4: Single read Get_gainLevel4 write Set_gainLevel4;
    property gainLevel5: Single read Get_gainLevel5 write Set_gainLevel5;
    property gainLevel6: Single read Get_gainLevel6 write Set_gainLevel6;
    property gainLevel7: Single read Get_gainLevel7 write Set_gainLevel7;
    property gainLevel8: Single read Get_gainLevel8 write Set_gainLevel8;
    property gainLevel9: Single read Get_gainLevel9 write Set_gainLevel9;
    property gainLevel10: Single read Get_gainLevel10 write Set_gainLevel10;
    property currentPreset: Integer read Get_currentPreset write Set_currentPreset;
    property enhancedAudio: WordBool read Get_enhancedAudio write Set_enhancedAudio;
    property speakerSize: Integer read Get_speakerSize write Set_speakerSize;
    property truBassLevel: Integer read Get_truBassLevel write Set_truBassLevel;
    property wowLevel: Integer read Get_wowLevel write Set_wowLevel;
    property splineTension: Single read Get_splineTension write Set_splineTension;
    property enableSplineTension: WordBool read Get_enableSplineTension write Set_enableSplineTension;
    property normalization: WordBool read Get_normalization write Set_normalization;
    property crossFade: WordBool read Get_crossFade write Set_crossFade;
    property crossFadeWindow: Integer read Get_crossFadeWindow write Set_crossFadeWindow;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPVideoSettingsCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPVideoSettingsCtrl exposed by              
// the CoClass WMPVideoSettingsCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPVideoSettingsCtrl = class
    class function Create: IWMPVideoSettingsCtrl;
    class function CreateRemote(const MachineName: string): IWMPVideoSettingsCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPVideoSettingsCtrl
// Help String      : WMPVideoSettingsCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPVideoSettingsCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPVideoSettingsCtrlProperties= class;
{$ENDIF}
  TWMPVideoSettingsCtrl = class(TOleServer)
  private
    FIntf: IWMPVideoSettingsCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPVideoSettingsCtrlProperties;
    function GetServerProperties: TWMPVideoSettingsCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPVideoSettingsCtrl;
  protected
    procedure InitServerData; override;
    function Get_brightness: Integer;
    procedure Set_brightness(pVal: Integer);
    function Get_contrast: Integer;
    procedure Set_contrast(pVal: Integer);
    function Get_hue: Integer;
    procedure Set_hue(pVal: Integer);
    function Get_saturation: Integer;
    procedure Set_saturation(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPVideoSettingsCtrl);
    procedure Disconnect; override;
    procedure reset;
    property DefaultInterface: IWMPVideoSettingsCtrl read GetDefaultInterface;
    property brightness: Integer read Get_brightness write Set_brightness;
    property contrast: Integer read Get_contrast write Set_contrast;
    property hue: Integer read Get_hue write Set_hue;
    property saturation: Integer read Get_saturation write Set_saturation;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPVideoSettingsCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPVideoSettingsCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPVideoSettingsCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPVideoSettingsCtrl;
    function    GetDefaultInterface: IWMPVideoSettingsCtrl;
    constructor Create(AServer: TWMPVideoSettingsCtrl);
  protected
    function Get_brightness: Integer;
    procedure Set_brightness(pVal: Integer);
    function Get_contrast: Integer;
    procedure Set_contrast(pVal: Integer);
    function Get_hue: Integer;
    procedure Set_hue(pVal: Integer);
    function Get_saturation: Integer;
    procedure Set_saturation(pVal: Integer);
  public
    property DefaultInterface: IWMPVideoSettingsCtrl read GetDefaultInterface;
  published
    property brightness: Integer read Get_brightness write Set_brightness;
    property contrast: Integer read Get_contrast write Set_contrast;
    property hue: Integer read Get_hue write Set_hue;
    property saturation: Integer read Get_saturation write Set_saturation;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPLibraryTreeCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPLibraryTreeCtrl exposed by              
// the CoClass WMPLibraryTreeCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPLibraryTreeCtrl = class
    class function Create: IWMPLibraryTreeCtrl;
    class function CreateRemote(const MachineName: string): IWMPLibraryTreeCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPLibraryTreeCtrl
// Help String      : WMPLibraryTreeCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPLibraryTreeCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPLibraryTreeCtrlProperties= class;
{$ENDIF}
  TWMPLibraryTreeCtrl = class(TOleServer)
  private
    FIntf: IWMPLibraryTreeCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPLibraryTreeCtrlProperties;
    function GetServerProperties: TWMPLibraryTreeCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPLibraryTreeCtrl;
  protected
    procedure InitServerData; override;
    function Get_dropDownVisible: WordBool;
    procedure Set_dropDownVisible(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_filter: WideString;
    procedure Set_filter(const pVal: WideString);
    function Get_expandState: WideString;
    procedure Set_expandState(const pVal: WideString);
    function Get_Playlist: IWMPPlaylist;
    procedure Set_Playlist(const ppPlaylist: IWMPPlaylist);
    function Get_selectedPlaylist: IWMPPlaylist;
    function Get_selectedMedia: IWMPMedia;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPLibraryTreeCtrl);
    procedure Disconnect; override;
    property DefaultInterface: IWMPLibraryTreeCtrl read GetDefaultInterface;
    property selectedPlaylist: IWMPPlaylist read Get_selectedPlaylist;
    property selectedMedia: IWMPMedia read Get_selectedMedia;
    property dropDownVisible: WordBool read Get_dropDownVisible write Set_dropDownVisible;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property filter: WideString read Get_filter write Set_filter;
    property expandState: WideString read Get_expandState write Set_expandState;
    property Playlist: IWMPPlaylist read Get_Playlist write Set_Playlist;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPLibraryTreeCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPLibraryTreeCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPLibraryTreeCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPLibraryTreeCtrl;
    function    GetDefaultInterface: IWMPLibraryTreeCtrl;
    constructor Create(AServer: TWMPLibraryTreeCtrl);
  protected
    function Get_dropDownVisible: WordBool;
    procedure Set_dropDownVisible(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_filter: WideString;
    procedure Set_filter(const pVal: WideString);
    function Get_expandState: WideString;
    procedure Set_expandState(const pVal: WideString);
    function Get_Playlist: IWMPPlaylist;
    procedure Set_Playlist(const ppPlaylist: IWMPPlaylist);
    function Get_selectedPlaylist: IWMPPlaylist;
    function Get_selectedMedia: IWMPMedia;
  public
    property DefaultInterface: IWMPLibraryTreeCtrl read GetDefaultInterface;
  published
    property dropDownVisible: WordBool read Get_dropDownVisible write Set_dropDownVisible;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property filter: WideString read Get_filter write Set_filter;
    property expandState: WideString read Get_expandState write Set_expandState;
    property Playlist: IWMPPlaylist read Get_Playlist write Set_Playlist;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPEditCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPEditCtrl exposed by              
// the CoClass WMPEditCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPEditCtrl = class
    class function Create: IWMPEditCtrl;
    class function CreateRemote(const MachineName: string): IWMPEditCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPEditCtrl
// Help String      : WMPEditCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPEditCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPEditCtrlProperties= class;
{$ENDIF}
  TWMPEditCtrl = class(TOleServer)
  private
    FIntf: IWMPEditCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPEditCtrlProperties;
    function GetServerProperties: TWMPEditCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPEditCtrl;
  protected
    procedure InitServerData; override;
    function Get_value: WideString;
    procedure Set_value(const pVal: WideString);
    function Get_border: WordBool;
    procedure Set_border(pVal: WordBool);
    function Get_justification: WideString;
    procedure Set_justification(const pVal: WideString);
    function Get_editStyle: WideString;
    procedure Set_editStyle(const pVal: WideString);
    function Get_wordWrap: WordBool;
    procedure Set_wordWrap(pVal: WordBool);
    function Get_readOnly: WordBool;
    procedure Set_readOnly(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_textLimit: Integer;
    procedure Set_textLimit(pVal: Integer);
    function Get_lineCount: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPEditCtrl);
    procedure Disconnect; override;
    function getLine(nIndex: Integer): WideString;
    function getSelectionStart: Integer;
    function getSelectionEnd: Integer;
    procedure setSelection(nStart: Integer; nEnd: Integer);
    procedure replaceSelection(const newVal: WideString);
    function getLineIndex(nIndex: Integer): Integer;
    function getLineFromChar(nPosition: Integer): Integer;
    property DefaultInterface: IWMPEditCtrl read GetDefaultInterface;
    property lineCount: Integer read Get_lineCount;
    property value: WideString read Get_value write Set_value;
    property border: WordBool read Get_border write Set_border;
    property justification: WideString read Get_justification write Set_justification;
    property editStyle: WideString read Get_editStyle write Set_editStyle;
    property wordWrap: WordBool read Get_wordWrap write Set_wordWrap;
    property readOnly: WordBool read Get_readOnly write Set_readOnly;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property textLimit: Integer read Get_textLimit write Set_textLimit;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPEditCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPEditCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPEditCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPEditCtrl;
    function    GetDefaultInterface: IWMPEditCtrl;
    constructor Create(AServer: TWMPEditCtrl);
  protected
    function Get_value: WideString;
    procedure Set_value(const pVal: WideString);
    function Get_border: WordBool;
    procedure Set_border(pVal: WordBool);
    function Get_justification: WideString;
    procedure Set_justification(const pVal: WideString);
    function Get_editStyle: WideString;
    procedure Set_editStyle(const pVal: WideString);
    function Get_wordWrap: WordBool;
    procedure Set_wordWrap(pVal: WordBool);
    function Get_readOnly: WordBool;
    procedure Set_readOnly(pVal: WordBool);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_textLimit: Integer;
    procedure Set_textLimit(pVal: Integer);
    function Get_lineCount: Integer;
  public
    property DefaultInterface: IWMPEditCtrl read GetDefaultInterface;
  published
    property value: WideString read Get_value write Set_value;
    property border: WordBool read Get_border write Set_border;
    property justification: WideString read Get_justification write Set_justification;
    property editStyle: WideString read Get_editStyle write Set_editStyle;
    property wordWrap: WordBool read Get_wordWrap write Set_wordWrap;
    property readOnly: WordBool read Get_readOnly write Set_readOnly;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property textLimit: Integer read Get_textLimit write Set_textLimit;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPMenuCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPMenuCtrl exposed by              
// the CoClass WMPMenuCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPMenuCtrl = class
    class function Create: IWMPMenuCtrl;
    class function CreateRemote(const MachineName: string): IWMPMenuCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPMenuCtrl
// Help String      : WMPMenuCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPMenuCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPMenuCtrlProperties= class;
{$ENDIF}
  TWMPMenuCtrl = class(TOleServer)
  private
    FIntf: IWMPMenuCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPMenuCtrlProperties;
    function GetServerProperties: TWMPMenuCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPMenuCtrl;
  protected
    procedure InitServerData; override;
    function Get_showFlags: Integer;
    procedure Set_showFlags(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPMenuCtrl);
    procedure Disconnect; override;
    procedure deleteAllItems;
    procedure appendItem(nID: Integer; const bstrItem: WideString);
    procedure appendSeparator;
    procedure enableItem(nID: Integer; newVal: WordBool);
    procedure checkItem(nID: Integer; newVal: WordBool);
    procedure checkRadioItem(nID: Integer; newVal: WordBool);
    function show: Integer;
    procedure showEx(nID: Integer);
    property DefaultInterface: IWMPMenuCtrl read GetDefaultInterface;
    property showFlags: Integer read Get_showFlags write Set_showFlags;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPMenuCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPMenuCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPMenuCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPMenuCtrl;
    function    GetDefaultInterface: IWMPMenuCtrl;
    constructor Create(AServer: TWMPMenuCtrl);
  protected
    function Get_showFlags: Integer;
    procedure Set_showFlags(pVal: Integer);
  public
    property DefaultInterface: IWMPMenuCtrl read GetDefaultInterface;
  published
    property showFlags: Integer read Get_showFlags write Set_showFlags;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPAutoMenuCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPAutoMenuCtrl exposed by              
// the CoClass WMPAutoMenuCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPAutoMenuCtrl = class
    class function Create: IWMPAutoMenuCtrl;
    class function CreateRemote(const MachineName: string): IWMPAutoMenuCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPAutoMenuCtrl
// Help String      : WMPAutoMenuCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPAutoMenuCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPAutoMenuCtrlProperties= class;
{$ENDIF}
  TWMPAutoMenuCtrl = class(TOleServer)
  private
    FIntf: IWMPAutoMenuCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPAutoMenuCtrlProperties;
    function GetServerProperties: TWMPAutoMenuCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPAutoMenuCtrl;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPAutoMenuCtrl);
    procedure Disconnect; override;
    procedure show(const newVal: WideString);
    property DefaultInterface: IWMPAutoMenuCtrl read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPAutoMenuCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPAutoMenuCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPAutoMenuCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPAutoMenuCtrl;
    function    GetDefaultInterface: IWMPAutoMenuCtrl;
    constructor Create(AServer: TWMPAutoMenuCtrl);
  protected
  public
    property DefaultInterface: IWMPAutoMenuCtrl read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPRegionalButtonCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPRegionalButtonCtrl exposed by              
// the CoClass WMPRegionalButtonCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPRegionalButtonCtrl = class
    class function Create: IWMPRegionalButtonCtrl;
    class function CreateRemote(const MachineName: string): IWMPRegionalButtonCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPRegionalButtonCtrl
// Help String      : WMPRegionalButtonCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPRegionalButtonCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPRegionalButtonCtrlProperties= class;
{$ENDIF}
  TWMPRegionalButtonCtrl = class(TOleServer)
  private
    FIntf: IWMPRegionalButtonCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPRegionalButtonCtrlProperties;
    function GetServerProperties: TWMPRegionalButtonCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPRegionalButtonCtrl;
  protected
    procedure InitServerData; override;
    function Get_image: WideString;
    procedure Set_image(const pVal: WideString);
    function Get_hoverImage: WideString;
    procedure Set_hoverImage(const pVal: WideString);
    function Get_downImage: WideString;
    procedure Set_downImage(const pVal: WideString);
    function Get_hoverDownImage: WideString;
    procedure Set_hoverDownImage(const pVal: WideString);
    function Get_hoverHoverImage: WideString;
    procedure Set_hoverHoverImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_mappingImage: WideString;
    procedure Set_mappingImage(const pVal: WideString);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_showBackground: WordBool;
    procedure Set_showBackground(pVal: WordBool);
    function Get_radio: WordBool;
    procedure Set_radio(pVal: WordBool);
    function Get_buttonCount: Integer;
    function Get_hueShift: Single;
    procedure Set_hueShift(pVal: Single);
    function Get_saturation: Single;
    procedure Set_saturation(pVal: Single);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPRegionalButtonCtrl);
    procedure Disconnect; override;
    function createButton: IDispatch;
    function getButton(nButton: Integer): IDispatch;
    procedure Click(nButton: Integer);
    property DefaultInterface: IWMPRegionalButtonCtrl read GetDefaultInterface;
    property buttonCount: Integer read Get_buttonCount;
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property hoverDownImage: WideString read Get_hoverDownImage write Set_hoverDownImage;
    property hoverHoverImage: WideString read Get_hoverHoverImage write Set_hoverHoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property mappingImage: WideString read Get_mappingImage write Set_mappingImage;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property cursor: WideString read Get_cursor write Set_cursor;
    property showBackground: WordBool read Get_showBackground write Set_showBackground;
    property radio: WordBool read Get_radio write Set_radio;
    property hueShift: Single read Get_hueShift write Set_hueShift;
    property saturation: Single read Get_saturation write Set_saturation;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPRegionalButtonCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPRegionalButtonCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPRegionalButtonCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPRegionalButtonCtrl;
    function    GetDefaultInterface: IWMPRegionalButtonCtrl;
    constructor Create(AServer: TWMPRegionalButtonCtrl);
  protected
    function Get_image: WideString;
    procedure Set_image(const pVal: WideString);
    function Get_hoverImage: WideString;
    procedure Set_hoverImage(const pVal: WideString);
    function Get_downImage: WideString;
    procedure Set_downImage(const pVal: WideString);
    function Get_hoverDownImage: WideString;
    procedure Set_hoverDownImage(const pVal: WideString);
    function Get_hoverHoverImage: WideString;
    procedure Set_hoverHoverImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_mappingImage: WideString;
    procedure Set_mappingImage(const pVal: WideString);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_showBackground: WordBool;
    procedure Set_showBackground(pVal: WordBool);
    function Get_radio: WordBool;
    procedure Set_radio(pVal: WordBool);
    function Get_buttonCount: Integer;
    function Get_hueShift: Single;
    procedure Set_hueShift(pVal: Single);
    function Get_saturation: Single;
    procedure Set_saturation(pVal: Single);
  public
    property DefaultInterface: IWMPRegionalButtonCtrl read GetDefaultInterface;
  published
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property hoverDownImage: WideString read Get_hoverDownImage write Set_hoverDownImage;
    property hoverHoverImage: WideString read Get_hoverHoverImage write Set_hoverHoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property mappingImage: WideString read Get_mappingImage write Set_mappingImage;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
    property cursor: WideString read Get_cursor write Set_cursor;
    property showBackground: WordBool read Get_showBackground write Set_showBackground;
    property radio: WordBool read Get_radio write Set_radio;
    property hueShift: Single read Get_hueShift write Set_hueShift;
    property saturation: Single read Get_saturation write Set_saturation;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPRegionalButton provides a Create and CreateRemote method to          
// create instances of the default interface IWMPRegionalButton exposed by              
// the CoClass WMPRegionalButton. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPRegionalButton = class
    class function Create: IWMPRegionalButton;
    class function CreateRemote(const MachineName: string): IWMPRegionalButton;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPRegionalButton
// Help String      : WMPRegionalButton: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPRegionalButton
// Def. Intf. DISP? : No
// Event   Interface: IWMPRegionalButtonEvents
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPRegionalButtonProperties= class;
{$ENDIF}
  TWMPRegionalButton = class(TOleServer)
  private
    FOnonblur: TNotifyEvent;
    FOnonfocus: TNotifyEvent;
    FOnonclick: TNotifyEvent;
    FOnondblclick: TNotifyEvent;
    FOnonmousedown: TNotifyEvent;
    FOnonmouseup: TNotifyEvent;
    FOnonmousemove: TNotifyEvent;
    FOnonmouseover: TNotifyEvent;
    FOnonmouseout: TNotifyEvent;
    FOnonkeypress: TNotifyEvent;
    FOnonkeydown: TNotifyEvent;
    FOnonkeyup: TNotifyEvent;
    FIntf: IWMPRegionalButton;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPRegionalButtonProperties;
    function GetServerProperties: TWMPRegionalButtonProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPRegionalButton;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_upToolTip: WideString;
    procedure Set_upToolTip(const pVal: WideString);
    function Get_downToolTip: WideString;
    procedure Set_downToolTip(const pVal: WideString);
    function Get_mappingColor: WideString;
    procedure Set_mappingColor(const pVal: WideString);
    function Get_enabled: WordBool;
    procedure Set_enabled(pVal: WordBool);
    function Get_sticky: WordBool;
    procedure Set_sticky(pVal: WordBool);
    function Get_down: WordBool;
    procedure Set_down(pVal: WordBool);
    function Get_index: Integer;
    function Get_tabStop: WordBool;
    procedure Set_tabStop(pVal: WordBool);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_accName: WideString;
    procedure Set_accName(const pszName: WideString);
    function Get_accDescription: WideString;
    procedure Set_accDescription(const pszDescription: WideString);
    function Get_accKeyboardShortcut: WideString;
    procedure Set_accKeyboardShortcut(const pszShortcut: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPRegionalButton);
    procedure Disconnect; override;
    procedure Click;
    property DefaultInterface: IWMPRegionalButton read GetDefaultInterface;
    property index: Integer read Get_index;
    property upToolTip: WideString read Get_upToolTip write Set_upToolTip;
    property downToolTip: WideString read Get_downToolTip write Set_downToolTip;
    property mappingColor: WideString read Get_mappingColor write Set_mappingColor;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property sticky: WordBool read Get_sticky write Set_sticky;
    property down: WordBool read Get_down write Set_down;
    property tabStop: WordBool read Get_tabStop write Set_tabStop;
    property cursor: WideString read Get_cursor write Set_cursor;
    property accName: WideString read Get_accName write Set_accName;
    property accDescription: WideString read Get_accDescription write Set_accDescription;
    property accKeyboardShortcut: WideString read Get_accKeyboardShortcut write Set_accKeyboardShortcut;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPRegionalButtonProperties read GetServerProperties;
{$ENDIF}
    property Ononblur: TNotifyEvent read FOnonblur write FOnonblur;
    property Ononfocus: TNotifyEvent read FOnonfocus write FOnonfocus;
    property Ononclick: TNotifyEvent read FOnonclick write FOnonclick;
    property Onondblclick: TNotifyEvent read FOnondblclick write FOnondblclick;
    property Ononmousedown: TNotifyEvent read FOnonmousedown write FOnonmousedown;
    property Ononmouseup: TNotifyEvent read FOnonmouseup write FOnonmouseup;
    property Ononmousemove: TNotifyEvent read FOnonmousemove write FOnonmousemove;
    property Ononmouseover: TNotifyEvent read FOnonmouseover write FOnonmouseover;
    property Ononmouseout: TNotifyEvent read FOnonmouseout write FOnonmouseout;
    property Ononkeypress: TNotifyEvent read FOnonkeypress write FOnonkeypress;
    property Ononkeydown: TNotifyEvent read FOnonkeydown write FOnonkeydown;
    property Ononkeyup: TNotifyEvent read FOnonkeyup write FOnonkeyup;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPRegionalButton
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPRegionalButtonProperties = class(TPersistent)
  private
    FServer:    TWMPRegionalButton;
    function    GetDefaultInterface: IWMPRegionalButton;
    constructor Create(AServer: TWMPRegionalButton);
  protected
    function Get_upToolTip: WideString;
    procedure Set_upToolTip(const pVal: WideString);
    function Get_downToolTip: WideString;
    procedure Set_downToolTip(const pVal: WideString);
    function Get_mappingColor: WideString;
    procedure Set_mappingColor(const pVal: WideString);
    function Get_enabled: WordBool;
    procedure Set_enabled(pVal: WordBool);
    function Get_sticky: WordBool;
    procedure Set_sticky(pVal: WordBool);
    function Get_down: WordBool;
    procedure Set_down(pVal: WordBool);
    function Get_index: Integer;
    function Get_tabStop: WordBool;
    procedure Set_tabStop(pVal: WordBool);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_accName: WideString;
    procedure Set_accName(const pszName: WideString);
    function Get_accDescription: WideString;
    procedure Set_accDescription(const pszDescription: WideString);
    function Get_accKeyboardShortcut: WideString;
    procedure Set_accKeyboardShortcut(const pszShortcut: WideString);
  public
    property DefaultInterface: IWMPRegionalButton read GetDefaultInterface;
  published
    property upToolTip: WideString read Get_upToolTip write Set_upToolTip;
    property downToolTip: WideString read Get_downToolTip write Set_downToolTip;
    property mappingColor: WideString read Get_mappingColor write Set_mappingColor;
    property enabled: WordBool read Get_enabled write Set_enabled;
    property sticky: WordBool read Get_sticky write Set_sticky;
    property down: WordBool read Get_down write Set_down;
    property tabStop: WordBool read Get_tabStop write Set_tabStop;
    property cursor: WideString read Get_cursor write Set_cursor;
    property accName: WideString read Get_accName write Set_accName;
    property accDescription: WideString read Get_accDescription write Set_accDescription;
    property accKeyboardShortcut: WideString read Get_accKeyboardShortcut write Set_accKeyboardShortcut;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPCustomSliderCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPCustomSlider exposed by              
// the CoClass WMPCustomSliderCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPCustomSliderCtrl = class
    class function Create: IWMPCustomSlider;
    class function CreateRemote(const MachineName: string): IWMPCustomSlider;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPCustomSliderCtrl
// Help String      : WMPCustomSliderCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPCustomSlider
// Def. Intf. DISP? : No
// Event   Interface: IWMPCustomSliderCtrlEvents
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPCustomSliderCtrlProperties= class;
{$ENDIF}
  TWMPCustomSliderCtrl = class(TOleServer)
  private
    FOnondragbegin: TNotifyEvent;
    FOnondragend: TNotifyEvent;
    FOnonpositionchange: TNotifyEvent;
    FIntf: IWMPCustomSlider;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPCustomSliderCtrlProperties;
    function GetServerProperties: TWMPCustomSliderCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPCustomSlider;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_min: Single;
    procedure Set_min(pVal: Single);
    function Get_max: Single;
    procedure Set_max(pVal: Single);
    function Get_value: Single;
    procedure Set_value(pVal: Single);
    function Get_toolTip: WideString;
    procedure Set_toolTip(const pVal: WideString);
    function Get_positionImage: WideString;
    procedure Set_positionImage(const pVal: WideString);
    function Get_image: WideString;
    procedure Set_image(const pVal: WideString);
    function Get_hoverImage: WideString;
    procedure Set_hoverImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_downImage: WideString;
    procedure Set_downImage(const pVal: WideString);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPCustomSlider);
    procedure Disconnect; override;
    property DefaultInterface: IWMPCustomSlider read GetDefaultInterface;
    property cursor: WideString read Get_cursor write Set_cursor;
    property min: Single read Get_min write Set_min;
    property max: Single read Get_max write Set_max;
    property value: Single read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property positionImage: WideString read Get_positionImage write Set_positionImage;
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPCustomSliderCtrlProperties read GetServerProperties;
{$ENDIF}
    property Onondragbegin: TNotifyEvent read FOnondragbegin write FOnondragbegin;
    property Onondragend: TNotifyEvent read FOnondragend write FOnondragend;
    property Ononpositionchange: TNotifyEvent read FOnonpositionchange write FOnonpositionchange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPCustomSliderCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPCustomSliderCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPCustomSliderCtrl;
    function    GetDefaultInterface: IWMPCustomSlider;
    constructor Create(AServer: TWMPCustomSliderCtrl);
  protected
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_min: Single;
    procedure Set_min(pVal: Single);
    function Get_max: Single;
    procedure Set_max(pVal: Single);
    function Get_value: Single;
    procedure Set_value(pVal: Single);
    function Get_toolTip: WideString;
    procedure Set_toolTip(const pVal: WideString);
    function Get_positionImage: WideString;
    procedure Set_positionImage(const pVal: WideString);
    function Get_image: WideString;
    procedure Set_image(const pVal: WideString);
    function Get_hoverImage: WideString;
    procedure Set_hoverImage(const pVal: WideString);
    function Get_disabledImage: WideString;
    procedure Set_disabledImage(const pVal: WideString);
    function Get_downImage: WideString;
    procedure Set_downImage(const pVal: WideString);
    function Get_transparencyColor: WideString;
    procedure Set_transparencyColor(const pVal: WideString);
  public
    property DefaultInterface: IWMPCustomSlider read GetDefaultInterface;
  published
    property cursor: WideString read Get_cursor write Set_cursor;
    property min: Single read Get_min write Set_min;
    property max: Single read Get_max write Set_max;
    property value: Single read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property positionImage: WideString read Get_positionImage write Set_positionImage;
    property image: WideString read Get_image write Set_image;
    property hoverImage: WideString read Get_hoverImage write Set_hoverImage;
    property disabledImage: WideString read Get_disabledImage write Set_disabledImage;
    property downImage: WideString read Get_downImage write Set_downImage;
    property transparencyColor: WideString read Get_transparencyColor write Set_transparencyColor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPTextCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPTextCtrl exposed by              
// the CoClass WMPTextCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPTextCtrl = class
    class function Create: IWMPTextCtrl;
    class function CreateRemote(const MachineName: string): IWMPTextCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPTextCtrl
// Help String      : WMPTextCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPTextCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPTextCtrlProperties= class;
{$ENDIF}
  TWMPTextCtrl = class(TOleServer)
  private
    FIntf: IWMPTextCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPTextCtrlProperties;
    function GetServerProperties: TWMPTextCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPTextCtrl;
  protected
    procedure InitServerData; override;
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_hoverBackgroundColor: WideString;
    procedure Set_hoverBackgroundColor(const pVal: WideString);
    function Get_hoverForegroundColor: WideString;
    procedure Set_hoverForegroundColor(const pVal: WideString);
    function Get_hoverFontStyle: WideString;
    procedure Set_hoverFontStyle(const pVal: WideString);
    function Get_value: WideString;
    procedure Set_value(const pVal: WideString);
    function Get_toolTip: WideString;
    procedure Set_toolTip(const pVal: WideString);
    function Get_disabledFontStyle: WideString;
    procedure Set_disabledFontStyle(const pVal: WideString);
    function Get_disabledForegroundColor: WideString;
    procedure Set_disabledForegroundColor(const pVal: WideString);
    function Get_disabledBackgroundColor: WideString;
    procedure Set_disabledBackgroundColor(const pVal: WideString);
    function Get_fontSmoothing: WordBool;
    procedure Set_fontSmoothing(pVal: WordBool);
    function Get_justification: WideString;
    procedure Set_justification(const pVal: WideString);
    function Get_wordWrap: WordBool;
    procedure Set_wordWrap(pVal: WordBool);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_scrolling: WordBool;
    procedure Set_scrolling(pVal: WordBool);
    function Get_scrollingDirection: WideString;
    procedure Set_scrollingDirection(const pVal: WideString);
    function Get_scrollingDelay: SYSINT;
    procedure Set_scrollingDelay(pVal: SYSINT);
    function Get_scrollingAmount: SYSINT;
    procedure Set_scrollingAmount(pVal: SYSINT);
    function Get_textWidth: SYSINT;
    function Get_onGlass: WordBool;
    procedure Set_onGlass(pVal: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPTextCtrl);
    procedure Disconnect; override;
    property DefaultInterface: IWMPTextCtrl read GetDefaultInterface;
    property textWidth: SYSINT read Get_textWidth;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property hoverBackgroundColor: WideString read Get_hoverBackgroundColor write Set_hoverBackgroundColor;
    property hoverForegroundColor: WideString read Get_hoverForegroundColor write Set_hoverForegroundColor;
    property hoverFontStyle: WideString read Get_hoverFontStyle write Set_hoverFontStyle;
    property value: WideString read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property disabledFontStyle: WideString read Get_disabledFontStyle write Set_disabledFontStyle;
    property disabledForegroundColor: WideString read Get_disabledForegroundColor write Set_disabledForegroundColor;
    property disabledBackgroundColor: WideString read Get_disabledBackgroundColor write Set_disabledBackgroundColor;
    property fontSmoothing: WordBool read Get_fontSmoothing write Set_fontSmoothing;
    property justification: WideString read Get_justification write Set_justification;
    property wordWrap: WordBool read Get_wordWrap write Set_wordWrap;
    property cursor: WideString read Get_cursor write Set_cursor;
    property scrolling: WordBool read Get_scrolling write Set_scrolling;
    property scrollingDirection: WideString read Get_scrollingDirection write Set_scrollingDirection;
    property scrollingDelay: SYSINT read Get_scrollingDelay write Set_scrollingDelay;
    property scrollingAmount: SYSINT read Get_scrollingAmount write Set_scrollingAmount;
    property onGlass: WordBool read Get_onGlass write Set_onGlass;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPTextCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPTextCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPTextCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPTextCtrl;
    function    GetDefaultInterface: IWMPTextCtrl;
    constructor Create(AServer: TWMPTextCtrl);
  protected
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pVal: WideString);
    function Get_fontFace: WideString;
    procedure Set_fontFace(const pVal: WideString);
    function Get_fontStyle: WideString;
    procedure Set_fontStyle(const pVal: WideString);
    function Get_fontSize: Integer;
    procedure Set_fontSize(pVal: Integer);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pVal: WideString);
    function Get_hoverBackgroundColor: WideString;
    procedure Set_hoverBackgroundColor(const pVal: WideString);
    function Get_hoverForegroundColor: WideString;
    procedure Set_hoverForegroundColor(const pVal: WideString);
    function Get_hoverFontStyle: WideString;
    procedure Set_hoverFontStyle(const pVal: WideString);
    function Get_value: WideString;
    procedure Set_value(const pVal: WideString);
    function Get_toolTip: WideString;
    procedure Set_toolTip(const pVal: WideString);
    function Get_disabledFontStyle: WideString;
    procedure Set_disabledFontStyle(const pVal: WideString);
    function Get_disabledForegroundColor: WideString;
    procedure Set_disabledForegroundColor(const pVal: WideString);
    function Get_disabledBackgroundColor: WideString;
    procedure Set_disabledBackgroundColor(const pVal: WideString);
    function Get_fontSmoothing: WordBool;
    procedure Set_fontSmoothing(pVal: WordBool);
    function Get_justification: WideString;
    procedure Set_justification(const pVal: WideString);
    function Get_wordWrap: WordBool;
    procedure Set_wordWrap(pVal: WordBool);
    function Get_cursor: WideString;
    procedure Set_cursor(const pVal: WideString);
    function Get_scrolling: WordBool;
    procedure Set_scrolling(pVal: WordBool);
    function Get_scrollingDirection: WideString;
    procedure Set_scrollingDirection(const pVal: WideString);
    function Get_scrollingDelay: SYSINT;
    procedure Set_scrollingDelay(pVal: SYSINT);
    function Get_scrollingAmount: SYSINT;
    procedure Set_scrollingAmount(pVal: SYSINT);
    function Get_textWidth: SYSINT;
    function Get_onGlass: WordBool;
    procedure Set_onGlass(pVal: WordBool);
  public
    property DefaultInterface: IWMPTextCtrl read GetDefaultInterface;
  published
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property fontFace: WideString read Get_fontFace write Set_fontFace;
    property fontStyle: WideString read Get_fontStyle write Set_fontStyle;
    property fontSize: Integer read Get_fontSize write Set_fontSize;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property hoverBackgroundColor: WideString read Get_hoverBackgroundColor write Set_hoverBackgroundColor;
    property hoverForegroundColor: WideString read Get_hoverForegroundColor write Set_hoverForegroundColor;
    property hoverFontStyle: WideString read Get_hoverFontStyle write Set_hoverFontStyle;
    property value: WideString read Get_value write Set_value;
    property toolTip: WideString read Get_toolTip write Set_toolTip;
    property disabledFontStyle: WideString read Get_disabledFontStyle write Set_disabledFontStyle;
    property disabledForegroundColor: WideString read Get_disabledForegroundColor write Set_disabledForegroundColor;
    property disabledBackgroundColor: WideString read Get_disabledBackgroundColor write Set_disabledBackgroundColor;
    property fontSmoothing: WordBool read Get_fontSmoothing write Set_fontSmoothing;
    property justification: WideString read Get_justification write Set_justification;
    property wordWrap: WordBool read Get_wordWrap write Set_wordWrap;
    property cursor: WideString read Get_cursor write Set_cursor;
    property scrolling: WordBool read Get_scrolling write Set_scrolling;
    property scrollingDirection: WideString read Get_scrollingDirection write Set_scrollingDirection;
    property scrollingDelay: SYSINT read Get_scrollingDelay write Set_scrollingDelay;
    property scrollingAmount: SYSINT read Get_scrollingAmount write Set_scrollingAmount;
    property onGlass: WordBool read Get_onGlass write Set_onGlass;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPPlaylistCtrl provides a Create and CreateRemote method to          
// create instances of the default interface IWMPPlaylistCtrl exposed by              
// the CoClass WMPPlaylistCtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPPlaylistCtrl = class
    class function Create: IWMPPlaylistCtrl;
    class function CreateRemote(const MachineName: string): IWMPPlaylistCtrl;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPPlaylistCtrl
// Help String      : WMPPlaylistCtrl: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPPlaylistCtrl
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPPlaylistCtrlProperties= class;
{$ENDIF}
  TWMPPlaylistCtrl = class(TOleServer)
  private
    FIntf: IWMPPlaylistCtrl;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPPlaylistCtrlProperties;
    function GetServerProperties: TWMPPlaylistCtrlProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPPlaylistCtrl;
  protected
    procedure InitServerData; override;
    function Get_Playlist: IWMPPlaylist;
    procedure Set_Playlist(const ppdispPlaylist: IWMPPlaylist);
    function Get_columns: WideString;
    procedure Set_columns(const pbstrColumns: WideString);
    function Get_columnCount: Integer;
    function Get_columnOrder: WideString;
    procedure Set_columnOrder(const pbstrColumnOrder: WideString);
    function Get_columnsVisible: WordBool;
    procedure Set_columnsVisible(pVal: WordBool);
    function Get_dropDownVisible: WordBool;
    procedure Set_dropDownVisible(pVal: WordBool);
    function Get_playlistItemsVisible: WordBool;
    procedure Set_playlistItemsVisible(pVal: WordBool);
    function Get_checkboxesVisible: WordBool;
    procedure Set_checkboxesVisible(pVal: WordBool);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pbstrColor: WideString);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pbstrColor: WideString);
    function Get_disabledItemColor: WideString;
    procedure Set_disabledItemColor(const pbstrColor: WideString);
    function Get_itemPlayingColor: WideString;
    procedure Set_itemPlayingColor(const pbstrColor: WideString);
    function Get_itemPlayingBackgroundColor: WideString;
    procedure Set_itemPlayingBackgroundColor(const pbstrBackgroundColor: WideString);
    function Get_backgroundImage: WideString;
    procedure Set_backgroundImage(const pbstrImage: WideString);
    function Get_allowItemEditing: WordBool;
    procedure Set_allowItemEditing(pVal: WordBool);
    function Get_allowColumnSorting: WordBool;
    procedure Set_allowColumnSorting(pVal: WordBool);
    function Get_dropDownList: WideString;
    procedure Set_dropDownList(const pbstrList: WideString);
    function Get_dropDownToolTip: WideString;
    procedure Set_dropDownToolTip(const pbstrToolTip: WideString);
    function Get_copying: WordBool;
    procedure Set_copying(pVal: WordBool);
    function Get_itemErrorColor: WideString;
    procedure Set_itemErrorColor(const pbstrColor: WideString);
    function Get_itemCount: Integer;
    function Get_itemMedia(nIndex: Integer): IWMPMedia;
    function Get_itemPlaylist(nIndex: Integer): IWMPPlaylist;
    function Get_leftStatus: WideString;
    procedure Set_leftStatus(const pbstrStatus: WideString);
    function Get_rightStatus: WideString;
    procedure Set_rightStatus(const pbstrStatus: WideString);
    function Get_editButtonVisible: WordBool;
    procedure Set_editButtonVisible(pVal: WordBool);
    function Get_dropDownImage: WideString;
    procedure Set_dropDownImage(const pbstrImage: WideString);
    function Get_dropDownBackgroundImage: WideString;
    procedure Set_dropDownBackgroundImage(const pbstrImage: WideString);
    function Get_hueShift: Single;
    procedure Set_hueShift(pVal: Single);
    function Get_saturation: Single;
    procedure Set_saturation(pVal: Single);
    function Get_statusColor: WideString;
    procedure Set_statusColor(const pbstrColor: WideString);
    function Get_toolbarVisible: WordBool;
    procedure Set_toolbarVisible(pVal: WordBool);
    function Get_itemSelectedColor: WideString;
    procedure Set_itemSelectedColor(const pbstrColor: WideString);
    function Get_itemSelectedFocusLostColor: WideString;
    procedure Set_itemSelectedFocusLostColor(const pbstrFocusLostColor: WideString);
    function Get_itemSelectedBackgroundColor: WideString;
    procedure Set_itemSelectedBackgroundColor(const pbstrColor: WideString);
    function Get_itemSelectedBackgroundFocusLostColor: WideString;
    procedure Set_itemSelectedBackgroundFocusLostColor(const pbstrFocusLostColor: WideString);
    function Get_backgroundSplitColor: WideString;
    procedure Set_backgroundSplitColor(const pbstrColor: WideString);
    function Get_statusTextColor: WideString;
    procedure Set_statusTextColor(const pbstrColor: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPPlaylistCtrl);
    procedure Disconnect; override;
    procedure copy;
    procedure abortCopy;
    procedure deleteSelected;
    procedure deleteSelectedFromLibrary;
    procedure moveSelectedUp;
    procedure moveSelectedDown;
    procedure addSelectedToPlaylist(const pdispPlaylist: IWMPPlaylist);
    function getNextSelectedItem(nStartIndex: Integer): Integer;
    function getNextCheckedItem(nStartIndex: Integer): Integer;
    procedure setSelectedState(nIndex: Integer; vbSelected: WordBool);
    procedure setCheckedState(nIndex: Integer; vbChecked: WordBool);
    procedure sortColumn(nIndex: Integer);
    procedure setColumnResizeMode(nIndex: Integer; const newMode: WideString);
    procedure setColumnWidth(nIndex: Integer; nWidth: Integer);
    function getNextSelectedItem2(nStartIndex: Integer): Integer;
    function getNextCheckedItem2(nStartIndex: Integer): Integer;
    procedure setSelectedState2(nIndex: Integer; vbSelected: WordBool);
    procedure setCheckedState2(nIndex: Integer; vbChecked: WordBool);
    property DefaultInterface: IWMPPlaylistCtrl read GetDefaultInterface;
    property columnCount: Integer read Get_columnCount;
    property itemCount: Integer read Get_itemCount;
    property itemMedia[nIndex: Integer]: IWMPMedia read Get_itemMedia;
    property itemPlaylist[nIndex: Integer]: IWMPPlaylist read Get_itemPlaylist;
    property Playlist: IWMPPlaylist read Get_Playlist write Set_Playlist;
    property columns: WideString read Get_columns write Set_columns;
    property columnOrder: WideString read Get_columnOrder write Set_columnOrder;
    property columnsVisible: WordBool read Get_columnsVisible write Set_columnsVisible;
    property dropDownVisible: WordBool read Get_dropDownVisible write Set_dropDownVisible;
    property playlistItemsVisible: WordBool read Get_playlistItemsVisible write Set_playlistItemsVisible;
    property checkboxesVisible: WordBool read Get_checkboxesVisible write Set_checkboxesVisible;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property disabledItemColor: WideString read Get_disabledItemColor write Set_disabledItemColor;
    property itemPlayingColor: WideString read Get_itemPlayingColor write Set_itemPlayingColor;
    property itemPlayingBackgroundColor: WideString read Get_itemPlayingBackgroundColor write Set_itemPlayingBackgroundColor;
    property backgroundImage: WideString read Get_backgroundImage write Set_backgroundImage;
    property allowItemEditing: WordBool read Get_allowItemEditing write Set_allowItemEditing;
    property allowColumnSorting: WordBool read Get_allowColumnSorting write Set_allowColumnSorting;
    property dropDownList: WideString read Get_dropDownList write Set_dropDownList;
    property dropDownToolTip: WideString read Get_dropDownToolTip write Set_dropDownToolTip;
    property copying: WordBool read Get_copying write Set_copying;
    property itemErrorColor: WideString read Get_itemErrorColor write Set_itemErrorColor;
    property leftStatus: WideString read Get_leftStatus write Set_leftStatus;
    property rightStatus: WideString read Get_rightStatus write Set_rightStatus;
    property editButtonVisible: WordBool read Get_editButtonVisible write Set_editButtonVisible;
    property dropDownImage: WideString read Get_dropDownImage write Set_dropDownImage;
    property dropDownBackgroundImage: WideString read Get_dropDownBackgroundImage write Set_dropDownBackgroundImage;
    property hueShift: Single read Get_hueShift write Set_hueShift;
    property saturation: Single read Get_saturation write Set_saturation;
    property statusColor: WideString read Get_statusColor write Set_statusColor;
    property toolbarVisible: WordBool read Get_toolbarVisible write Set_toolbarVisible;
    property itemSelectedColor: WideString read Get_itemSelectedColor write Set_itemSelectedColor;
    property itemSelectedFocusLostColor: WideString read Get_itemSelectedFocusLostColor write Set_itemSelectedFocusLostColor;
    property itemSelectedBackgroundColor: WideString read Get_itemSelectedBackgroundColor write Set_itemSelectedBackgroundColor;
    property itemSelectedBackgroundFocusLostColor: WideString read Get_itemSelectedBackgroundFocusLostColor write Set_itemSelectedBackgroundFocusLostColor;
    property backgroundSplitColor: WideString read Get_backgroundSplitColor write Set_backgroundSplitColor;
    property statusTextColor: WideString read Get_statusTextColor write Set_statusTextColor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPPlaylistCtrlProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPPlaylistCtrl
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPPlaylistCtrlProperties = class(TPersistent)
  private
    FServer:    TWMPPlaylistCtrl;
    function    GetDefaultInterface: IWMPPlaylistCtrl;
    constructor Create(AServer: TWMPPlaylistCtrl);
  protected
    function Get_Playlist: IWMPPlaylist;
    procedure Set_Playlist(const ppdispPlaylist: IWMPPlaylist);
    function Get_columns: WideString;
    procedure Set_columns(const pbstrColumns: WideString);
    function Get_columnCount: Integer;
    function Get_columnOrder: WideString;
    procedure Set_columnOrder(const pbstrColumnOrder: WideString);
    function Get_columnsVisible: WordBool;
    procedure Set_columnsVisible(pVal: WordBool);
    function Get_dropDownVisible: WordBool;
    procedure Set_dropDownVisible(pVal: WordBool);
    function Get_playlistItemsVisible: WordBool;
    procedure Set_playlistItemsVisible(pVal: WordBool);
    function Get_checkboxesVisible: WordBool;
    procedure Set_checkboxesVisible(pVal: WordBool);
    function Get_backgroundColor: WideString;
    procedure Set_backgroundColor(const pbstrColor: WideString);
    function Get_foregroundColor: WideString;
    procedure Set_foregroundColor(const pbstrColor: WideString);
    function Get_disabledItemColor: WideString;
    procedure Set_disabledItemColor(const pbstrColor: WideString);
    function Get_itemPlayingColor: WideString;
    procedure Set_itemPlayingColor(const pbstrColor: WideString);
    function Get_itemPlayingBackgroundColor: WideString;
    procedure Set_itemPlayingBackgroundColor(const pbstrBackgroundColor: WideString);
    function Get_backgroundImage: WideString;
    procedure Set_backgroundImage(const pbstrImage: WideString);
    function Get_allowItemEditing: WordBool;
    procedure Set_allowItemEditing(pVal: WordBool);
    function Get_allowColumnSorting: WordBool;
    procedure Set_allowColumnSorting(pVal: WordBool);
    function Get_dropDownList: WideString;
    procedure Set_dropDownList(const pbstrList: WideString);
    function Get_dropDownToolTip: WideString;
    procedure Set_dropDownToolTip(const pbstrToolTip: WideString);
    function Get_copying: WordBool;
    procedure Set_copying(pVal: WordBool);
    function Get_itemErrorColor: WideString;
    procedure Set_itemErrorColor(const pbstrColor: WideString);
    function Get_itemCount: Integer;
    function Get_itemMedia(nIndex: Integer): IWMPMedia;
    function Get_itemPlaylist(nIndex: Integer): IWMPPlaylist;
    function Get_leftStatus: WideString;
    procedure Set_leftStatus(const pbstrStatus: WideString);
    function Get_rightStatus: WideString;
    procedure Set_rightStatus(const pbstrStatus: WideString);
    function Get_editButtonVisible: WordBool;
    procedure Set_editButtonVisible(pVal: WordBool);
    function Get_dropDownImage: WideString;
    procedure Set_dropDownImage(const pbstrImage: WideString);
    function Get_dropDownBackgroundImage: WideString;
    procedure Set_dropDownBackgroundImage(const pbstrImage: WideString);
    function Get_hueShift: Single;
    procedure Set_hueShift(pVal: Single);
    function Get_saturation: Single;
    procedure Set_saturation(pVal: Single);
    function Get_statusColor: WideString;
    procedure Set_statusColor(const pbstrColor: WideString);
    function Get_toolbarVisible: WordBool;
    procedure Set_toolbarVisible(pVal: WordBool);
    function Get_itemSelectedColor: WideString;
    procedure Set_itemSelectedColor(const pbstrColor: WideString);
    function Get_itemSelectedFocusLostColor: WideString;
    procedure Set_itemSelectedFocusLostColor(const pbstrFocusLostColor: WideString);
    function Get_itemSelectedBackgroundColor: WideString;
    procedure Set_itemSelectedBackgroundColor(const pbstrColor: WideString);
    function Get_itemSelectedBackgroundFocusLostColor: WideString;
    procedure Set_itemSelectedBackgroundFocusLostColor(const pbstrFocusLostColor: WideString);
    function Get_backgroundSplitColor: WideString;
    procedure Set_backgroundSplitColor(const pbstrColor: WideString);
    function Get_statusTextColor: WideString;
    procedure Set_statusTextColor(const pbstrColor: WideString);
  public
    property DefaultInterface: IWMPPlaylistCtrl read GetDefaultInterface;
  published
    property Playlist: IWMPPlaylist read Get_Playlist write Set_Playlist;
    property columns: WideString read Get_columns write Set_columns;
    property columnOrder: WideString read Get_columnOrder write Set_columnOrder;
    property columnsVisible: WordBool read Get_columnsVisible write Set_columnsVisible;
    property dropDownVisible: WordBool read Get_dropDownVisible write Set_dropDownVisible;
    property playlistItemsVisible: WordBool read Get_playlistItemsVisible write Set_playlistItemsVisible;
    property checkboxesVisible: WordBool read Get_checkboxesVisible write Set_checkboxesVisible;
    property backgroundColor: WideString read Get_backgroundColor write Set_backgroundColor;
    property foregroundColor: WideString read Get_foregroundColor write Set_foregroundColor;
    property disabledItemColor: WideString read Get_disabledItemColor write Set_disabledItemColor;
    property itemPlayingColor: WideString read Get_itemPlayingColor write Set_itemPlayingColor;
    property itemPlayingBackgroundColor: WideString read Get_itemPlayingBackgroundColor write Set_itemPlayingBackgroundColor;
    property backgroundImage: WideString read Get_backgroundImage write Set_backgroundImage;
    property allowItemEditing: WordBool read Get_allowItemEditing write Set_allowItemEditing;
    property allowColumnSorting: WordBool read Get_allowColumnSorting write Set_allowColumnSorting;
    property dropDownList: WideString read Get_dropDownList write Set_dropDownList;
    property dropDownToolTip: WideString read Get_dropDownToolTip write Set_dropDownToolTip;
    property copying: WordBool read Get_copying write Set_copying;
    property itemErrorColor: WideString read Get_itemErrorColor write Set_itemErrorColor;
    property leftStatus: WideString read Get_leftStatus write Set_leftStatus;
    property rightStatus: WideString read Get_rightStatus write Set_rightStatus;
    property editButtonVisible: WordBool read Get_editButtonVisible write Set_editButtonVisible;
    property dropDownImage: WideString read Get_dropDownImage write Set_dropDownImage;
    property dropDownBackgroundImage: WideString read Get_dropDownBackgroundImage write Set_dropDownBackgroundImage;
    property hueShift: Single read Get_hueShift write Set_hueShift;
    property saturation: Single read Get_saturation write Set_saturation;
    property statusColor: WideString read Get_statusColor write Set_statusColor;
    property toolbarVisible: WordBool read Get_toolbarVisible write Set_toolbarVisible;
    property itemSelectedColor: WideString read Get_itemSelectedColor write Set_itemSelectedColor;
    property itemSelectedFocusLostColor: WideString read Get_itemSelectedFocusLostColor write Set_itemSelectedFocusLostColor;
    property itemSelectedBackgroundColor: WideString read Get_itemSelectedBackgroundColor write Set_itemSelectedBackgroundColor;
    property itemSelectedBackgroundFocusLostColor: WideString read Get_itemSelectedBackgroundFocusLostColor write Set_itemSelectedBackgroundFocusLostColor;
    property backgroundSplitColor: WideString read Get_backgroundSplitColor write Set_backgroundSplitColor;
    property statusTextColor: WideString read Get_statusTextColor write Set_statusTextColor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWMPCore provides a Create and CreateRemote method to          
// create instances of the default interface IWMPCore3 exposed by              
// the CoClass WMPCore. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWMPCore = class
    class function Create: IWMPCore3;
    class function CreateRemote(const MachineName: string): IWMPCore3;
  end;

  TWMPCoreOpenStateChange = procedure(ASender: TObject; NewState: Integer) of object;
  TWMPCorePlayStateChange = procedure(ASender: TObject; NewState: Integer) of object;
  TWMPCoreAudioLanguageChange = procedure(ASender: TObject; LangID: Integer) of object;
  TWMPCoreScriptCommand = procedure(ASender: TObject; const scType: WideString; 
                                                      const Param: WideString) of object;
  TWMPCoreDisconnect = procedure(ASender: TObject; Result: Integer) of object;
  TWMPCoreBuffering = procedure(ASender: TObject; Start: WordBool) of object;
  TWMPCoreWarning = procedure(ASender: TObject; WarningType: Integer; Param: Integer; 
                                                const Description: WideString) of object;
  TWMPCoreEndOfStream = procedure(ASender: TObject; Result: Integer) of object;
  TWMPCorePositionChange = procedure(ASender: TObject; oldPosition: Double; newPosition: Double) of object;
  TWMPCoreMarkerHit = procedure(ASender: TObject; MarkerNum: Integer) of object;
  TWMPCoreDurationUnitChange = procedure(ASender: TObject; NewDurationUnit: Integer) of object;
  TWMPCoreCdromMediaChange = procedure(ASender: TObject; CdromNum: Integer) of object;
  TWMPCorePlaylistChange = procedure(ASender: TObject; const Playlist: IDispatch; 
                                                       change: WMPPlaylistChangeEventType) of object;
  TWMPCoreCurrentPlaylistChange = procedure(ASender: TObject; change: WMPPlaylistChangeEventType) of object;
  TWMPCoreCurrentPlaylistItemAvailable = procedure(ASender: TObject; const bstrItemName: WideString) of object;
  TWMPCoreMediaChange = procedure(ASender: TObject; const Item: IDispatch) of object;
  TWMPCoreCurrentMediaItemAvailable = procedure(ASender: TObject; const bstrItemName: WideString) of object;
  TWMPCoreCurrentItemChange = procedure(ASender: TObject; const pdispMedia: IDispatch) of object;
  TWMPCoreMediaCollectionAttributeStringAdded = procedure(ASender: TObject; const bstrAttribName: WideString; 
                                                                            const bstrAttribVal: WideString) of object;
  TWMPCoreMediaCollectionAttributeStringRemoved = procedure(ASender: TObject; const bstrAttribName: WideString; 
                                                                              const bstrAttribVal: WideString) of object;
  TWMPCoreMediaCollectionAttributeStringChanged = procedure(ASender: TObject; const bstrAttribName: WideString; 
                                                                              const bstrOldAttribVal: WideString; 
                                                                              const bstrNewAttribVal: WideString) of object;
  TWMPCorePlaylistCollectionPlaylistAdded = procedure(ASender: TObject; const bstrPlaylistName: WideString) of object;
  TWMPCorePlaylistCollectionPlaylistRemoved = procedure(ASender: TObject; const bstrPlaylistName: WideString) of object;
  TWMPCorePlaylistCollectionPlaylistSetAsDeleted = procedure(ASender: TObject; const bstrPlaylistName: WideString; 
                                                                               varfIsDeleted: WordBool) of object;
  TWMPCoreModeChange = procedure(ASender: TObject; const ModeName: WideString; NewValue: WordBool) of object;
  TWMPCoreMediaError = procedure(ASender: TObject; const pMediaObject: IDispatch) of object;
  TWMPCoreOpenPlaylistSwitch = procedure(ASender: TObject; const pItem: IDispatch) of object;
  TWMPCoreDomainChange = procedure(ASender: TObject; const strDomain: WideString) of object;
  TWMPCoreStringCollectionChange = procedure(ASender: TObject; const pdispStringCollection: IDispatch; 
                                                               change: WMPStringCollectionChangeEventType; 
                                                               lCollectionIndex: Integer) of object;
  TWMPCoreMediaCollectionMediaAdded = procedure(ASender: TObject; const pdispMedia: IDispatch) of object;
  TWMPCoreMediaCollectionMediaRemoved = procedure(ASender: TObject; const pdispMedia: IDispatch) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWMPCore
// Help String      : WMPCore: Not Public.  Internal object used by Windows Media Player.
// Default Interface: IWMPCore3
// Def. Intf. DISP? : No
// Event   Interface: _WMPCoreEvents
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWMPCoreProperties= class;
{$ENDIF}
  TWMPCore = class(TOleServer)
  private
    FOnOpenStateChange: TWMPCoreOpenStateChange;
    FOnPlayStateChange: TWMPCorePlayStateChange;
    FOnAudioLanguageChange: TWMPCoreAudioLanguageChange;
    FOnStatusChange: TNotifyEvent;
    FOnScriptCommand: TWMPCoreScriptCommand;
    FOnNewStream: TNotifyEvent;
    FOnDisconnect: TWMPCoreDisconnect;
    FOnBuffering: TWMPCoreBuffering;
    FOnError: TNotifyEvent;
    FOnWarning: TWMPCoreWarning;
    FOnEndOfStream: TWMPCoreEndOfStream;
    FOnPositionChange: TWMPCorePositionChange;
    FOnMarkerHit: TWMPCoreMarkerHit;
    FOnDurationUnitChange: TWMPCoreDurationUnitChange;
    FOnCdromMediaChange: TWMPCoreCdromMediaChange;
    FOnPlaylistChange: TWMPCorePlaylistChange;
    FOnCurrentPlaylistChange: TWMPCoreCurrentPlaylistChange;
    FOnCurrentPlaylistItemAvailable: TWMPCoreCurrentPlaylistItemAvailable;
    FOnMediaChange: TWMPCoreMediaChange;
    FOnCurrentMediaItemAvailable: TWMPCoreCurrentMediaItemAvailable;
    FOnCurrentItemChange: TWMPCoreCurrentItemChange;
    FOnMediaCollectionChange: TNotifyEvent;
    FOnMediaCollectionAttributeStringAdded: TWMPCoreMediaCollectionAttributeStringAdded;
    FOnMediaCollectionAttributeStringRemoved: TWMPCoreMediaCollectionAttributeStringRemoved;
    FOnMediaCollectionAttributeStringChanged: TWMPCoreMediaCollectionAttributeStringChanged;
    FOnPlaylistCollectionChange: TNotifyEvent;
    FOnPlaylistCollectionPlaylistAdded: TWMPCorePlaylistCollectionPlaylistAdded;
    FOnPlaylistCollectionPlaylistRemoved: TWMPCorePlaylistCollectionPlaylistRemoved;
    FOnPlaylistCollectionPlaylistSetAsDeleted: TWMPCorePlaylistCollectionPlaylistSetAsDeleted;
    FOnModeChange: TWMPCoreModeChange;
    FOnMediaError: TWMPCoreMediaError;
    FOnOpenPlaylistSwitch: TWMPCoreOpenPlaylistSwitch;
    FOnDomainChange: TWMPCoreDomainChange;
    FOnStringCollectionChange: TWMPCoreStringCollectionChange;
    FOnMediaCollectionMediaAdded: TWMPCoreMediaCollectionMediaAdded;
    FOnMediaCollectionMediaRemoved: TWMPCoreMediaCollectionMediaRemoved;
    FIntf: IWMPCore3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWMPCoreProperties;
    function GetServerProperties: TWMPCoreProperties;
{$ENDIF}
    function GetDefaultInterface: IWMPCore3;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_URL: WideString;
    procedure Set_URL(const pbstrURL: WideString);
    function Get_openState: WMPOpenState;
    function Get_playState: WMPPlayState;
    function Get_controls: IWMPControls;
    function Get_settings: IWMPSettings;
    function Get_currentMedia: IWMPMedia;
    procedure Set_currentMedia(const ppMedia: IWMPMedia);
    function Get_mediaCollection: IWMPMediaCollection;
    function Get_playlistCollection: IWMPPlaylistCollection;
    function Get_versionInfo: WideString;
    function Get_network: IWMPNetwork;
    function Get_currentPlaylist: IWMPPlaylist;
    procedure Set_currentPlaylist(const ppPL: IWMPPlaylist);
    function Get_cdromCollection: IWMPCdromCollection;
    function Get_closedCaption: IWMPClosedCaption;
    function Get_isOnline: WordBool;
    function Get_Error: IWMPError;
    function Get_status: WideString;
    function Get_dvd: IWMPDVD;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWMPCore3);
    procedure Disconnect; override;
    procedure close;
    procedure launchURL(const bstrURL: WideString);
    function newPlaylist(const bstrName: WideString; const bstrURL: WideString): IWMPPlaylist;
    function newMedia(const bstrURL: WideString): IWMPMedia;
    property DefaultInterface: IWMPCore3 read GetDefaultInterface;
    property openState: WMPOpenState read Get_openState;
    property playState: WMPPlayState read Get_playState;
    property controls: IWMPControls read Get_controls;
    property settings: IWMPSettings read Get_settings;
    property mediaCollection: IWMPMediaCollection read Get_mediaCollection;
    property playlistCollection: IWMPPlaylistCollection read Get_playlistCollection;
    property versionInfo: WideString read Get_versionInfo;
    property network: IWMPNetwork read Get_network;
    property cdromCollection: IWMPCdromCollection read Get_cdromCollection;
    property closedCaption: IWMPClosedCaption read Get_closedCaption;
    property isOnline: WordBool read Get_isOnline;
    property Error: IWMPError read Get_Error;
    property status: WideString read Get_status;
    property dvd: IWMPDVD read Get_dvd;
    property URL: WideString read Get_URL write Set_URL;
    property currentMedia: IWMPMedia read Get_currentMedia write Set_currentMedia;
    property currentPlaylist: IWMPPlaylist read Get_currentPlaylist write Set_currentPlaylist;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWMPCoreProperties read GetServerProperties;
{$ENDIF}
    property OnOpenStateChange: TWMPCoreOpenStateChange read FOnOpenStateChange write FOnOpenStateChange;
    property OnPlayStateChange: TWMPCorePlayStateChange read FOnPlayStateChange write FOnPlayStateChange;
    property OnAudioLanguageChange: TWMPCoreAudioLanguageChange read FOnAudioLanguageChange write FOnAudioLanguageChange;
    property OnStatusChange: TNotifyEvent read FOnStatusChange write FOnStatusChange;
    property OnScriptCommand: TWMPCoreScriptCommand read FOnScriptCommand write FOnScriptCommand;
    property OnNewStream: TNotifyEvent read FOnNewStream write FOnNewStream;
    property OnDisconnect: TWMPCoreDisconnect read FOnDisconnect write FOnDisconnect;
    property OnBuffering: TWMPCoreBuffering read FOnBuffering write FOnBuffering;
    property OnError: TNotifyEvent read FOnError write FOnError;
    property OnWarning: TWMPCoreWarning read FOnWarning write FOnWarning;
    property OnEndOfStream: TWMPCoreEndOfStream read FOnEndOfStream write FOnEndOfStream;
    property OnPositionChange: TWMPCorePositionChange read FOnPositionChange write FOnPositionChange;
    property OnMarkerHit: TWMPCoreMarkerHit read FOnMarkerHit write FOnMarkerHit;
    property OnDurationUnitChange: TWMPCoreDurationUnitChange read FOnDurationUnitChange write FOnDurationUnitChange;
    property OnCdromMediaChange: TWMPCoreCdromMediaChange read FOnCdromMediaChange write FOnCdromMediaChange;
    property OnPlaylistChange: TWMPCorePlaylistChange read FOnPlaylistChange write FOnPlaylistChange;
    property OnCurrentPlaylistChange: TWMPCoreCurrentPlaylistChange read FOnCurrentPlaylistChange write FOnCurrentPlaylistChange;
    property OnCurrentPlaylistItemAvailable: TWMPCoreCurrentPlaylistItemAvailable read FOnCurrentPlaylistItemAvailable write FOnCurrentPlaylistItemAvailable;
    property OnMediaChange: TWMPCoreMediaChange read FOnMediaChange write FOnMediaChange;
    property OnCurrentMediaItemAvailable: TWMPCoreCurrentMediaItemAvailable read FOnCurrentMediaItemAvailable write FOnCurrentMediaItemAvailable;
    property OnCurrentItemChange: TWMPCoreCurrentItemChange read FOnCurrentItemChange write FOnCurrentItemChange;
    property OnMediaCollectionChange: TNotifyEvent read FOnMediaCollectionChange write FOnMediaCollectionChange;
    property OnMediaCollectionAttributeStringAdded: TWMPCoreMediaCollectionAttributeStringAdded read FOnMediaCollectionAttributeStringAdded write FOnMediaCollectionAttributeStringAdded;
    property OnMediaCollectionAttributeStringRemoved: TWMPCoreMediaCollectionAttributeStringRemoved read FOnMediaCollectionAttributeStringRemoved write FOnMediaCollectionAttributeStringRemoved;
    property OnMediaCollectionAttributeStringChanged: TWMPCoreMediaCollectionAttributeStringChanged read FOnMediaCollectionAttributeStringChanged write FOnMediaCollectionAttributeStringChanged;
    property OnPlaylistCollectionChange: TNotifyEvent read FOnPlaylistCollectionChange write FOnPlaylistCollectionChange;
    property OnPlaylistCollectionPlaylistAdded: TWMPCorePlaylistCollectionPlaylistAdded read FOnPlaylistCollectionPlaylistAdded write FOnPlaylistCollectionPlaylistAdded;
    property OnPlaylistCollectionPlaylistRemoved: TWMPCorePlaylistCollectionPlaylistRemoved read FOnPlaylistCollectionPlaylistRemoved write FOnPlaylistCollectionPlaylistRemoved;
    property OnPlaylistCollectionPlaylistSetAsDeleted: TWMPCorePlaylistCollectionPlaylistSetAsDeleted read FOnPlaylistCollectionPlaylistSetAsDeleted write FOnPlaylistCollectionPlaylistSetAsDeleted;
    property OnModeChange: TWMPCoreModeChange read FOnModeChange write FOnModeChange;
    property OnMediaError: TWMPCoreMediaError read FOnMediaError write FOnMediaError;
    property OnOpenPlaylistSwitch: TWMPCoreOpenPlaylistSwitch read FOnOpenPlaylistSwitch write FOnOpenPlaylistSwitch;
    property OnDomainChange: TWMPCoreDomainChange read FOnDomainChange write FOnDomainChange;
    property OnStringCollectionChange: TWMPCoreStringCollectionChange read FOnStringCollectionChange write FOnStringCollectionChange;
    property OnMediaCollectionMediaAdded: TWMPCoreMediaCollectionMediaAdded read FOnMediaCollectionMediaAdded write FOnMediaCollectionMediaAdded;
    property OnMediaCollectionMediaRemoved: TWMPCoreMediaCollectionMediaRemoved read FOnMediaCollectionMediaRemoved write FOnMediaCollectionMediaRemoved;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWMPCore
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWMPCoreProperties = class(TPersistent)
  private
    FServer:    TWMPCore;
    function    GetDefaultInterface: IWMPCore3;
    constructor Create(AServer: TWMPCore);
  protected
    function Get_URL: WideString;
    procedure Set_URL(const pbstrURL: WideString);
    function Get_openState: WMPOpenState;
    function Get_playState: WMPPlayState;
    function Get_controls: IWMPControls;
    function Get_settings: IWMPSettings;
    function Get_currentMedia: IWMPMedia;
    procedure Set_currentMedia(const ppMedia: IWMPMedia);
    function Get_mediaCollection: IWMPMediaCollection;
    function Get_playlistCollection: IWMPPlaylistCollection;
    function Get_versionInfo: WideString;
    function Get_network: IWMPNetwork;
    function Get_currentPlaylist: IWMPPlaylist;
    procedure Set_currentPlaylist(const ppPL: IWMPPlaylist);
    function Get_cdromCollection: IWMPCdromCollection;
    function Get_closedCaption: IWMPClosedCaption;
    function Get_isOnline: WordBool;
    function Get_Error: IWMPError;
    function Get_status: WideString;
    function Get_dvd: IWMPDVD;
  public
    property DefaultInterface: IWMPCore3 read GetDefaultInterface;
  published
    property URL: WideString read Get_URL write Set_URL;
    property currentMedia: IWMPMedia read Get_currentMedia write Set_currentMedia;
    property currentPlaylist: IWMPPlaylist read Get_currentPlaylist write Set_currentPlaylist;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TWindowsMediaPlayer.InitControlData;
const
  CEventDispIDs: array [0..61] of DWORD = (
    $00001389, $000013ED, $000013EE, $0000138A, $000014B5, $0000151B,
    $00001519, $0000151A, $0000157D, $000015E1, $00001451, $00001452,
    $00001453, $00001454, $00001645, $000016A9, $000016AC, $000016AD,
    $000016AA, $000016AB, $000016AE, $000016AF, $000016B0, $000016B1,
    $000016BC, $000016B2, $000016B3, $000016B4, $000016BA, $000016BB,
    $000016BD, $000016BF, $000016BE, $00001965, $00001966, $00001967,
    $00001968, $00001969, $0000196A, $0000196B, $0000196C, $0000196D,
    $0000196E, $0000196F, $00001970, $00001971, $00001972, $00001973,
    $00001974, $00001975, $00001976, $00001977, $00001978, $00001979,
    $0000197A, $0000197B, $0000197C, $0000197D, $0000197E, $000016C0,
    $000016C1, $000016C2);
  CControlData: TControlData2 = (
    ClassID: '{6BF52A52-394A-11D3-B153-00C04F79FAA6}';
    EventIID: '{6BF52A51-394A-11D3-B153-00C04F79FAA6}';
    EventCount: 62;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnOpenStateChange) - Cardinal(Self);
end;

procedure TWindowsMediaPlayer.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IWMPPlayer4;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TWindowsMediaPlayer.GetControlInterface: IWMPPlayer4;
begin
  CreateControl;
  Result := FIntf;
end;

function TWindowsMediaPlayer.Get_controls: IWMPControls;
begin
    Result := DefaultInterface.controls;
end;

function TWindowsMediaPlayer.Get_settings: IWMPSettings;
begin
    Result := DefaultInterface.settings;
end;

function TWindowsMediaPlayer.Get_currentMedia: IWMPMedia;
begin
    Result := DefaultInterface.currentMedia;
end;

procedure TWindowsMediaPlayer.Set_currentMedia(const ppMedia: IWMPMedia);
begin
  DefaultInterface.Set_currentMedia(ppMedia);
end;

function TWindowsMediaPlayer.Get_mediaCollection: IWMPMediaCollection;
begin
    Result := DefaultInterface.mediaCollection;
end;

function TWindowsMediaPlayer.Get_playlistCollection: IWMPPlaylistCollection;
begin
    Result := DefaultInterface.playlistCollection;
end;

function TWindowsMediaPlayer.Get_network: IWMPNetwork;
begin
    Result := DefaultInterface.network;
end;

function TWindowsMediaPlayer.Get_currentPlaylist: IWMPPlaylist;
begin
    Result := DefaultInterface.currentPlaylist;
end;

procedure TWindowsMediaPlayer.Set_currentPlaylist(const ppPL: IWMPPlaylist);
begin
  DefaultInterface.Set_currentPlaylist(ppPL);
end;

function TWindowsMediaPlayer.Get_cdromCollection: IWMPCdromCollection;
begin
    Result := DefaultInterface.cdromCollection;
end;

function TWindowsMediaPlayer.Get_closedCaption: IWMPClosedCaption;
begin
    Result := DefaultInterface.closedCaption;
end;

function TWindowsMediaPlayer.Get_Error: IWMPError;
begin
    Result := DefaultInterface.Error;
end;

function TWindowsMediaPlayer.Get_dvd: IWMPDVD;
begin
    Result := DefaultInterface.dvd;
end;

function TWindowsMediaPlayer.Get_playerApplication: IWMPPlayerApplication;
begin
    Result := DefaultInterface.playerApplication;
end;

procedure TWindowsMediaPlayer.close;
begin
  DefaultInterface.close;
end;

procedure TWindowsMediaPlayer.launchURL(const bstrURL: WideString);
begin
  DefaultInterface.launchURL(bstrURL);
end;

function TWindowsMediaPlayer.newPlaylist(const bstrName: WideString; const bstrURL: WideString): IWMPPlaylist;
begin
  Result := DefaultInterface.newPlaylist(bstrName, bstrURL);
end;

function TWindowsMediaPlayer.newMedia(const bstrURL: WideString): IWMPMedia;
begin
  Result := DefaultInterface.newMedia(bstrURL);
end;

procedure TWindowsMediaPlayer.openPlayer(const bstrURL: WideString);
begin
  DefaultInterface.openPlayer(bstrURL);
end;

class function CoWMPButtonCtrl.Create: IWMPButtonCtrl;
begin
  Result := CreateComObject(CLASS_WMPButtonCtrl) as IWMPButtonCtrl;
end;

class function CoWMPButtonCtrl.CreateRemote(const MachineName: string): IWMPButtonCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPButtonCtrl) as IWMPButtonCtrl;
end;

procedure TWMPButtonCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{87291B51-0C8E-11D3-BB2A-00A0C93CA73A}';
    IntfIID:   '{87291B50-0C8E-11D3-BB2A-00A0C93CA73A}';
    EventIID:  '{BB17FFF7-1692-4555-918A-6AF7BFACEDD2}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPButtonCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IWMPButtonCtrl;
  end;
end;

procedure TWMPButtonCtrl.ConnectTo(svrIntf: IWMPButtonCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TWMPButtonCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TWMPButtonCtrl.GetDefaultInterface: IWMPButtonCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPButtonCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPButtonCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPButtonCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPButtonCtrl.GetServerProperties: TWMPButtonCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWMPButtonCtrl.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    5120: if Assigned(FOnonclick) then
         FOnonclick(Self);
  end; {case DispID}
end;

function TWMPButtonCtrl.Get_image: WideString;
begin
    Result := DefaultInterface.image;
end;

procedure TWMPButtonCtrl.Set_image(const pVal: WideString);
  { Warning: The property image has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.image := pVal;
end;

function TWMPButtonCtrl.Get_hoverImage: WideString;
begin
    Result := DefaultInterface.hoverImage;
end;

procedure TWMPButtonCtrl.Set_hoverImage(const pVal: WideString);
  { Warning: The property hoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverImage := pVal;
end;

function TWMPButtonCtrl.Get_downImage: WideString;
begin
    Result := DefaultInterface.downImage;
end;

procedure TWMPButtonCtrl.Set_downImage(const pVal: WideString);
  { Warning: The property downImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downImage := pVal;
end;

function TWMPButtonCtrl.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPButtonCtrl.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPButtonCtrl.Get_hoverDownImage: WideString;
begin
    Result := DefaultInterface.hoverDownImage;
end;

procedure TWMPButtonCtrl.Set_hoverDownImage(const pVal: WideString);
  { Warning: The property hoverDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverDownImage := pVal;
end;

function TWMPButtonCtrl.Get_tiled: WordBool;
begin
    Result := DefaultInterface.tiled;
end;

procedure TWMPButtonCtrl.Set_tiled(pVal: WordBool);
begin
  DefaultInterface.Set_tiled(pVal);
end;

function TWMPButtonCtrl.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPButtonCtrl.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

function TWMPButtonCtrl.Get_down: WordBool;
begin
    Result := DefaultInterface.down;
end;

procedure TWMPButtonCtrl.Set_down(pVal: WordBool);
begin
  DefaultInterface.Set_down(pVal);
end;

function TWMPButtonCtrl.Get_sticky: WordBool;
begin
    Result := DefaultInterface.sticky;
end;

procedure TWMPButtonCtrl.Set_sticky(pVal: WordBool);
begin
  DefaultInterface.Set_sticky(pVal);
end;

function TWMPButtonCtrl.Get_upToolTip: WideString;
begin
    Result := DefaultInterface.upToolTip;
end;

procedure TWMPButtonCtrl.Set_upToolTip(const pVal: WideString);
  { Warning: The property upToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.upToolTip := pVal;
end;

function TWMPButtonCtrl.Get_downToolTip: WideString;
begin
    Result := DefaultInterface.downToolTip;
end;

procedure TWMPButtonCtrl.Set_downToolTip(const pVal: WideString);
  { Warning: The property downToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downToolTip := pVal;
end;

function TWMPButtonCtrl.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPButtonCtrl.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPButtonCtrlProperties.Create(AServer: TWMPButtonCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPButtonCtrlProperties.GetDefaultInterface: IWMPButtonCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPButtonCtrlProperties.Get_image: WideString;
begin
    Result := DefaultInterface.image;
end;

procedure TWMPButtonCtrlProperties.Set_image(const pVal: WideString);
  { Warning: The property image has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.image := pVal;
end;

function TWMPButtonCtrlProperties.Get_hoverImage: WideString;
begin
    Result := DefaultInterface.hoverImage;
end;

procedure TWMPButtonCtrlProperties.Set_hoverImage(const pVal: WideString);
  { Warning: The property hoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverImage := pVal;
end;

function TWMPButtonCtrlProperties.Get_downImage: WideString;
begin
    Result := DefaultInterface.downImage;
end;

procedure TWMPButtonCtrlProperties.Set_downImage(const pVal: WideString);
  { Warning: The property downImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downImage := pVal;
end;

function TWMPButtonCtrlProperties.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPButtonCtrlProperties.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPButtonCtrlProperties.Get_hoverDownImage: WideString;
begin
    Result := DefaultInterface.hoverDownImage;
end;

procedure TWMPButtonCtrlProperties.Set_hoverDownImage(const pVal: WideString);
  { Warning: The property hoverDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverDownImage := pVal;
end;

function TWMPButtonCtrlProperties.Get_tiled: WordBool;
begin
    Result := DefaultInterface.tiled;
end;

procedure TWMPButtonCtrlProperties.Set_tiled(pVal: WordBool);
begin
  DefaultInterface.Set_tiled(pVal);
end;

function TWMPButtonCtrlProperties.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPButtonCtrlProperties.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

function TWMPButtonCtrlProperties.Get_down: WordBool;
begin
    Result := DefaultInterface.down;
end;

procedure TWMPButtonCtrlProperties.Set_down(pVal: WordBool);
begin
  DefaultInterface.Set_down(pVal);
end;

function TWMPButtonCtrlProperties.Get_sticky: WordBool;
begin
    Result := DefaultInterface.sticky;
end;

procedure TWMPButtonCtrlProperties.Set_sticky(pVal: WordBool);
begin
  DefaultInterface.Set_sticky(pVal);
end;

function TWMPButtonCtrlProperties.Get_upToolTip: WideString;
begin
    Result := DefaultInterface.upToolTip;
end;

procedure TWMPButtonCtrlProperties.Set_upToolTip(const pVal: WideString);
  { Warning: The property upToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.upToolTip := pVal;
end;

function TWMPButtonCtrlProperties.Get_downToolTip: WideString;
begin
    Result := DefaultInterface.downToolTip;
end;

procedure TWMPButtonCtrlProperties.Set_downToolTip(const pVal: WideString);
  { Warning: The property downToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downToolTip := pVal;
end;

function TWMPButtonCtrlProperties.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPButtonCtrlProperties.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

{$ENDIF}

class function CoWMPListBoxCtrl.Create: IWMPListBoxCtrl;
begin
  Result := CreateComObject(CLASS_WMPListBoxCtrl) as IWMPListBoxCtrl;
end;

class function CoWMPListBoxCtrl.CreateRemote(const MachineName: string): IWMPListBoxCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPListBoxCtrl) as IWMPListBoxCtrl;
end;

procedure TWMPListBoxCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FC1880CF-83B9-43A7-A066-C44CE8C82583}';
    IntfIID:   '{FC1880CE-83B9-43A7-A066-C44CE8C82583}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPListBoxCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPListBoxCtrl;
  end;
end;

procedure TWMPListBoxCtrl.ConnectTo(svrIntf: IWMPListBoxCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPListBoxCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPListBoxCtrl.GetDefaultInterface: IWMPListBoxCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPListBoxCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPListBoxCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPListBoxCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPListBoxCtrl.GetServerProperties: TWMPListBoxCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPListBoxCtrl.Get_selectedItem: Integer;
begin
    Result := DefaultInterface.selectedItem;
end;

procedure TWMPListBoxCtrl.Set_selectedItem(pnPos: Integer);
begin
  DefaultInterface.Set_selectedItem(pnPos);
end;

function TWMPListBoxCtrl.Get_sorted: WordBool;
begin
    Result := DefaultInterface.sorted;
end;

procedure TWMPListBoxCtrl.Set_sorted(pVal: WordBool);
begin
  DefaultInterface.Set_sorted(pVal);
end;

function TWMPListBoxCtrl.Get_multiselect: WordBool;
begin
    Result := DefaultInterface.multiselect;
end;

procedure TWMPListBoxCtrl.Set_multiselect(pVal: WordBool);
begin
  DefaultInterface.Set_multiselect(pVal);
end;

function TWMPListBoxCtrl.Get_readOnly: WordBool;
begin
    Result := DefaultInterface.readOnly;
end;

procedure TWMPListBoxCtrl.Set_readOnly(pVal: WordBool);
begin
  DefaultInterface.Set_readOnly(pVal);
end;

function TWMPListBoxCtrl.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPListBoxCtrl.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPListBoxCtrl.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPListBoxCtrl.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPListBoxCtrl.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPListBoxCtrl.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPListBoxCtrl.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPListBoxCtrl.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPListBoxCtrl.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPListBoxCtrl.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPListBoxCtrl.Get_itemCount: Integer;
begin
    Result := DefaultInterface.itemCount;
end;

function TWMPListBoxCtrl.Get_firstVisibleItem: Integer;
begin
    Result := DefaultInterface.firstVisibleItem;
end;

procedure TWMPListBoxCtrl.Set_firstVisibleItem(pVal: Integer);
begin
  DefaultInterface.Set_firstVisibleItem(pVal);
end;

procedure TWMPListBoxCtrl.Set_popUp(Param1: WordBool);
begin
  DefaultInterface.Set_popUp(Param1);
end;

function TWMPListBoxCtrl.Get_focusItem: Integer;
begin
    Result := DefaultInterface.focusItem;
end;

procedure TWMPListBoxCtrl.Set_focusItem(pVal: Integer);
begin
  DefaultInterface.Set_focusItem(pVal);
end;

function TWMPListBoxCtrl.Get_border: WordBool;
begin
    Result := DefaultInterface.border;
end;

procedure TWMPListBoxCtrl.Set_border(pVal: WordBool);
begin
  DefaultInterface.Set_border(pVal);
end;

function TWMPListBoxCtrl.getItem(nPos: Integer): WideString;
begin
  Result := DefaultInterface.getItem(nPos);
end;

procedure TWMPListBoxCtrl.insertItem(nPos: Integer; const newVal: WideString);
begin
  DefaultInterface.insertItem(nPos, newVal);
end;

procedure TWMPListBoxCtrl.appendItem(const newVal: WideString);
begin
  DefaultInterface.appendItem(newVal);
end;

procedure TWMPListBoxCtrl.replaceItem(nPos: Integer; const newVal: WideString);
begin
  DefaultInterface.replaceItem(nPos, newVal);
end;

procedure TWMPListBoxCtrl.deleteItem(nPos: Integer);
begin
  DefaultInterface.deleteItem(nPos);
end;

procedure TWMPListBoxCtrl.deleteAll;
begin
  DefaultInterface.deleteAll;
end;

function TWMPListBoxCtrl.findItem(nStartIndex: Integer; const newVal: WideString): Integer;
begin
  Result := DefaultInterface.findItem(nStartIndex, newVal);
end;

function TWMPListBoxCtrl.getNextSelectedItem(nStartIndex: Integer): Integer;
begin
  Result := DefaultInterface.getNextSelectedItem(nStartIndex);
end;

procedure TWMPListBoxCtrl.setSelectedState(nPos: Integer; vbSelected: WordBool);
begin
  DefaultInterface.setSelectedState(nPos, vbSelected);
end;

procedure TWMPListBoxCtrl.show;
begin
  DefaultInterface.show;
end;

procedure TWMPListBoxCtrl.dismiss;
begin
  DefaultInterface.dismiss;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPListBoxCtrlProperties.Create(AServer: TWMPListBoxCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPListBoxCtrlProperties.GetDefaultInterface: IWMPListBoxCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPListBoxCtrlProperties.Get_selectedItem: Integer;
begin
    Result := DefaultInterface.selectedItem;
end;

procedure TWMPListBoxCtrlProperties.Set_selectedItem(pnPos: Integer);
begin
  DefaultInterface.Set_selectedItem(pnPos);
end;

function TWMPListBoxCtrlProperties.Get_sorted: WordBool;
begin
    Result := DefaultInterface.sorted;
end;

procedure TWMPListBoxCtrlProperties.Set_sorted(pVal: WordBool);
begin
  DefaultInterface.Set_sorted(pVal);
end;

function TWMPListBoxCtrlProperties.Get_multiselect: WordBool;
begin
    Result := DefaultInterface.multiselect;
end;

procedure TWMPListBoxCtrlProperties.Set_multiselect(pVal: WordBool);
begin
  DefaultInterface.Set_multiselect(pVal);
end;

function TWMPListBoxCtrlProperties.Get_readOnly: WordBool;
begin
    Result := DefaultInterface.readOnly;
end;

procedure TWMPListBoxCtrlProperties.Set_readOnly(pVal: WordBool);
begin
  DefaultInterface.Set_readOnly(pVal);
end;

function TWMPListBoxCtrlProperties.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPListBoxCtrlProperties.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPListBoxCtrlProperties.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPListBoxCtrlProperties.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPListBoxCtrlProperties.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPListBoxCtrlProperties.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPListBoxCtrlProperties.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPListBoxCtrlProperties.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPListBoxCtrlProperties.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPListBoxCtrlProperties.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPListBoxCtrlProperties.Get_itemCount: Integer;
begin
    Result := DefaultInterface.itemCount;
end;

function TWMPListBoxCtrlProperties.Get_firstVisibleItem: Integer;
begin
    Result := DefaultInterface.firstVisibleItem;
end;

procedure TWMPListBoxCtrlProperties.Set_firstVisibleItem(pVal: Integer);
begin
  DefaultInterface.Set_firstVisibleItem(pVal);
end;

procedure TWMPListBoxCtrlProperties.Set_popUp(Param1: WordBool);
begin
  DefaultInterface.Set_popUp(Param1);
end;

function TWMPListBoxCtrlProperties.Get_focusItem: Integer;
begin
    Result := DefaultInterface.focusItem;
end;

procedure TWMPListBoxCtrlProperties.Set_focusItem(pVal: Integer);
begin
  DefaultInterface.Set_focusItem(pVal);
end;

function TWMPListBoxCtrlProperties.Get_border: WordBool;
begin
    Result := DefaultInterface.border;
end;

procedure TWMPListBoxCtrlProperties.Set_border(pVal: WordBool);
begin
  DefaultInterface.Set_border(pVal);
end;

{$ENDIF}

class function CoWMPSliderCtrl.Create: IWMPSliderCtrl;
begin
  Result := CreateComObject(CLASS_WMPSliderCtrl) as IWMPSliderCtrl;
end;

class function CoWMPSliderCtrl.CreateRemote(const MachineName: string): IWMPSliderCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPSliderCtrl) as IWMPSliderCtrl;
end;

procedure TWMPSliderCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F2BF2C90-405F-11D3-BB39-00A0C93CA73A}';
    IntfIID:   '{F2BF2C8F-405F-11D3-BB39-00A0C93CA73A}';
    EventIID:  '{CDAC14D2-8BE4-11D3-BB48-00A0C93CA73A}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPSliderCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IWMPSliderCtrl;
  end;
end;

procedure TWMPSliderCtrl.ConnectTo(svrIntf: IWMPSliderCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TWMPSliderCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TWMPSliderCtrl.GetDefaultInterface: IWMPSliderCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPSliderCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPSliderCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPSliderCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPSliderCtrl.GetServerProperties: TWMPSliderCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWMPSliderCtrl.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    5430: if Assigned(FOnondragbegin) then
         FOnondragbegin(Self);
    5431: if Assigned(FOnondragend) then
         FOnondragend(Self);
    5432: if Assigned(FOnonpositionchange) then
         FOnonpositionchange(Self);
  end; {case DispID}
end;

function TWMPSliderCtrl.Get_direction: WideString;
begin
    Result := DefaultInterface.direction;
end;

procedure TWMPSliderCtrl.Set_direction(const pVal: WideString);
  { Warning: The property direction has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.direction := pVal;
end;

function TWMPSliderCtrl.Get_slide: WordBool;
begin
    Result := DefaultInterface.slide;
end;

procedure TWMPSliderCtrl.Set_slide(pVal: WordBool);
begin
  DefaultInterface.Set_slide(pVal);
end;

function TWMPSliderCtrl.Get_tiled: WordBool;
begin
    Result := DefaultInterface.tiled;
end;

procedure TWMPSliderCtrl.Set_tiled(pVal: WordBool);
begin
  DefaultInterface.Set_tiled(pVal);
end;

function TWMPSliderCtrl.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPSliderCtrl.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPSliderCtrl.Get_foregroundEndColor: WideString;
begin
    Result := DefaultInterface.foregroundEndColor;
end;

procedure TWMPSliderCtrl.Set_foregroundEndColor(const pVal: WideString);
  { Warning: The property foregroundEndColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundEndColor := pVal;
end;

function TWMPSliderCtrl.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPSliderCtrl.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPSliderCtrl.Get_backgroundEndColor: WideString;
begin
    Result := DefaultInterface.backgroundEndColor;
end;

procedure TWMPSliderCtrl.Set_backgroundEndColor(const pVal: WideString);
  { Warning: The property backgroundEndColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundEndColor := pVal;
end;

function TWMPSliderCtrl.Get_disabledColor: WideString;
begin
    Result := DefaultInterface.disabledColor;
end;

procedure TWMPSliderCtrl.Set_disabledColor(const pVal: WideString);
  { Warning: The property disabledColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledColor := pVal;
end;

function TWMPSliderCtrl.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPSliderCtrl.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

function TWMPSliderCtrl.Get_foregroundImage: WideString;
begin
    Result := DefaultInterface.foregroundImage;
end;

procedure TWMPSliderCtrl.Set_foregroundImage(const pVal: WideString);
  { Warning: The property foregroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundImage := pVal;
end;

function TWMPSliderCtrl.Get_backgroundImage: WideString;
begin
    Result := DefaultInterface.backgroundImage;
end;

procedure TWMPSliderCtrl.Set_backgroundImage(const pVal: WideString);
  { Warning: The property backgroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundImage := pVal;
end;

function TWMPSliderCtrl.Get_backgroundHoverImage: WideString;
begin
    Result := DefaultInterface.backgroundHoverImage;
end;

procedure TWMPSliderCtrl.Set_backgroundHoverImage(const pVal: WideString);
  { Warning: The property backgroundHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundHoverImage := pVal;
end;

function TWMPSliderCtrl.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPSliderCtrl.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPSliderCtrl.Get_thumbImage: WideString;
begin
    Result := DefaultInterface.thumbImage;
end;

procedure TWMPSliderCtrl.Set_thumbImage(const pVal: WideString);
  { Warning: The property thumbImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbImage := pVal;
end;

function TWMPSliderCtrl.Get_thumbHoverImage: WideString;
begin
    Result := DefaultInterface.thumbHoverImage;
end;

procedure TWMPSliderCtrl.Set_thumbHoverImage(const pVal: WideString);
  { Warning: The property thumbHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbHoverImage := pVal;
end;

function TWMPSliderCtrl.Get_thumbDownImage: WideString;
begin
    Result := DefaultInterface.thumbDownImage;
end;

procedure TWMPSliderCtrl.Set_thumbDownImage(const pVal: WideString);
  { Warning: The property thumbDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbDownImage := pVal;
end;

function TWMPSliderCtrl.Get_thumbDisabledImage: WideString;
begin
    Result := DefaultInterface.thumbDisabledImage;
end;

procedure TWMPSliderCtrl.Set_thumbDisabledImage(const pVal: WideString);
  { Warning: The property thumbDisabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbDisabledImage := pVal;
end;

function TWMPSliderCtrl.Get_min: Single;
begin
    Result := DefaultInterface.min;
end;

procedure TWMPSliderCtrl.Set_min(pVal: Single);
begin
  DefaultInterface.Set_min(pVal);
end;

function TWMPSliderCtrl.Get_max: Single;
begin
    Result := DefaultInterface.max;
end;

procedure TWMPSliderCtrl.Set_max(pVal: Single);
begin
  DefaultInterface.Set_max(pVal);
end;

function TWMPSliderCtrl.Get_value: Single;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPSliderCtrl.Set_value(pVal: Single);
begin
  DefaultInterface.Set_value(pVal);
end;

function TWMPSliderCtrl.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

procedure TWMPSliderCtrl.Set_toolTip(const pVal: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := pVal;
end;

function TWMPSliderCtrl.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPSliderCtrl.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPSliderCtrl.Get_borderSize: SYSINT;
begin
    Result := DefaultInterface.borderSize;
end;

procedure TWMPSliderCtrl.Set_borderSize(pVal: SYSINT);
begin
  DefaultInterface.Set_borderSize(pVal);
end;

function TWMPSliderCtrl.Get_foregroundHoverImage: WideString;
begin
    Result := DefaultInterface.foregroundHoverImage;
end;

procedure TWMPSliderCtrl.Set_foregroundHoverImage(const pVal: WideString);
  { Warning: The property foregroundHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundHoverImage := pVal;
end;

function TWMPSliderCtrl.Get_foregroundProgress: Single;
begin
    Result := DefaultInterface.foregroundProgress;
end;

procedure TWMPSliderCtrl.Set_foregroundProgress(pVal: Single);
begin
  DefaultInterface.Set_foregroundProgress(pVal);
end;

function TWMPSliderCtrl.Get_useForegroundProgress: WordBool;
begin
    Result := DefaultInterface.useForegroundProgress;
end;

procedure TWMPSliderCtrl.Set_useForegroundProgress(pVal: WordBool);
begin
  DefaultInterface.Set_useForegroundProgress(pVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPSliderCtrlProperties.Create(AServer: TWMPSliderCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPSliderCtrlProperties.GetDefaultInterface: IWMPSliderCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPSliderCtrlProperties.Get_direction: WideString;
begin
    Result := DefaultInterface.direction;
end;

procedure TWMPSliderCtrlProperties.Set_direction(const pVal: WideString);
  { Warning: The property direction has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.direction := pVal;
end;

function TWMPSliderCtrlProperties.Get_slide: WordBool;
begin
    Result := DefaultInterface.slide;
end;

procedure TWMPSliderCtrlProperties.Set_slide(pVal: WordBool);
begin
  DefaultInterface.Set_slide(pVal);
end;

function TWMPSliderCtrlProperties.Get_tiled: WordBool;
begin
    Result := DefaultInterface.tiled;
end;

procedure TWMPSliderCtrlProperties.Set_tiled(pVal: WordBool);
begin
  DefaultInterface.Set_tiled(pVal);
end;

function TWMPSliderCtrlProperties.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPSliderCtrlProperties.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPSliderCtrlProperties.Get_foregroundEndColor: WideString;
begin
    Result := DefaultInterface.foregroundEndColor;
end;

procedure TWMPSliderCtrlProperties.Set_foregroundEndColor(const pVal: WideString);
  { Warning: The property foregroundEndColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundEndColor := pVal;
end;

function TWMPSliderCtrlProperties.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPSliderCtrlProperties.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPSliderCtrlProperties.Get_backgroundEndColor: WideString;
begin
    Result := DefaultInterface.backgroundEndColor;
end;

procedure TWMPSliderCtrlProperties.Set_backgroundEndColor(const pVal: WideString);
  { Warning: The property backgroundEndColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundEndColor := pVal;
end;

function TWMPSliderCtrlProperties.Get_disabledColor: WideString;
begin
    Result := DefaultInterface.disabledColor;
end;

procedure TWMPSliderCtrlProperties.Set_disabledColor(const pVal: WideString);
  { Warning: The property disabledColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledColor := pVal;
end;

function TWMPSliderCtrlProperties.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPSliderCtrlProperties.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

function TWMPSliderCtrlProperties.Get_foregroundImage: WideString;
begin
    Result := DefaultInterface.foregroundImage;
end;

procedure TWMPSliderCtrlProperties.Set_foregroundImage(const pVal: WideString);
  { Warning: The property foregroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_backgroundImage: WideString;
begin
    Result := DefaultInterface.backgroundImage;
end;

procedure TWMPSliderCtrlProperties.Set_backgroundImage(const pVal: WideString);
  { Warning: The property backgroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_backgroundHoverImage: WideString;
begin
    Result := DefaultInterface.backgroundHoverImage;
end;

procedure TWMPSliderCtrlProperties.Set_backgroundHoverImage(const pVal: WideString);
  { Warning: The property backgroundHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundHoverImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPSliderCtrlProperties.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_thumbImage: WideString;
begin
    Result := DefaultInterface.thumbImage;
end;

procedure TWMPSliderCtrlProperties.Set_thumbImage(const pVal: WideString);
  { Warning: The property thumbImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_thumbHoverImage: WideString;
begin
    Result := DefaultInterface.thumbHoverImage;
end;

procedure TWMPSliderCtrlProperties.Set_thumbHoverImage(const pVal: WideString);
  { Warning: The property thumbHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbHoverImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_thumbDownImage: WideString;
begin
    Result := DefaultInterface.thumbDownImage;
end;

procedure TWMPSliderCtrlProperties.Set_thumbDownImage(const pVal: WideString);
  { Warning: The property thumbDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbDownImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_thumbDisabledImage: WideString;
begin
    Result := DefaultInterface.thumbDisabledImage;
end;

procedure TWMPSliderCtrlProperties.Set_thumbDisabledImage(const pVal: WideString);
  { Warning: The property thumbDisabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.thumbDisabledImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_min: Single;
begin
    Result := DefaultInterface.min;
end;

procedure TWMPSliderCtrlProperties.Set_min(pVal: Single);
begin
  DefaultInterface.Set_min(pVal);
end;

function TWMPSliderCtrlProperties.Get_max: Single;
begin
    Result := DefaultInterface.max;
end;

procedure TWMPSliderCtrlProperties.Set_max(pVal: Single);
begin
  DefaultInterface.Set_max(pVal);
end;

function TWMPSliderCtrlProperties.Get_value: Single;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPSliderCtrlProperties.Set_value(pVal: Single);
begin
  DefaultInterface.Set_value(pVal);
end;

function TWMPSliderCtrlProperties.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

procedure TWMPSliderCtrlProperties.Set_toolTip(const pVal: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := pVal;
end;

function TWMPSliderCtrlProperties.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPSliderCtrlProperties.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPSliderCtrlProperties.Get_borderSize: SYSINT;
begin
    Result := DefaultInterface.borderSize;
end;

procedure TWMPSliderCtrlProperties.Set_borderSize(pVal: SYSINT);
begin
  DefaultInterface.Set_borderSize(pVal);
end;

function TWMPSliderCtrlProperties.Get_foregroundHoverImage: WideString;
begin
    Result := DefaultInterface.foregroundHoverImage;
end;

procedure TWMPSliderCtrlProperties.Set_foregroundHoverImage(const pVal: WideString);
  { Warning: The property foregroundHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundHoverImage := pVal;
end;

function TWMPSliderCtrlProperties.Get_foregroundProgress: Single;
begin
    Result := DefaultInterface.foregroundProgress;
end;

procedure TWMPSliderCtrlProperties.Set_foregroundProgress(pVal: Single);
begin
  DefaultInterface.Set_foregroundProgress(pVal);
end;

function TWMPSliderCtrlProperties.Get_useForegroundProgress: WordBool;
begin
    Result := DefaultInterface.useForegroundProgress;
end;

procedure TWMPSliderCtrlProperties.Set_useForegroundProgress(pVal: WordBool);
begin
  DefaultInterface.Set_useForegroundProgress(pVal);
end;

{$ENDIF}

class function CoWMPVideoCtrl.Create: IWMPVideoCtrl;
begin
  Result := CreateComObject(CLASS_WMPVideoCtrl) as IWMPVideoCtrl;
end;

class function CoWMPVideoCtrl.CreateRemote(const MachineName: string): IWMPVideoCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPVideoCtrl) as IWMPVideoCtrl;
end;

procedure TWMPVideoCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{61CECF11-FC3A-11D2-A1CD-005004602752}';
    IntfIID:   '{61CECF10-FC3A-11D2-A1CD-005004602752}';
    EventIID:  '{A85C0477-714C-4A06-B9F6-7C8CA38B45DC}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPVideoCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IWMPVideoCtrl;
  end;
end;

procedure TWMPVideoCtrl.ConnectTo(svrIntf: IWMPVideoCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TWMPVideoCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TWMPVideoCtrl.GetDefaultInterface: IWMPVideoCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPVideoCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPVideoCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPVideoCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPVideoCtrl.GetServerProperties: TWMPVideoCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWMPVideoCtrl.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    5720: if Assigned(FOnonvideostart) then
         FOnonvideostart(Self);
    5721: if Assigned(FOnonvideoend) then
         FOnonvideoend(Self);
  end; {case DispID}
end;

procedure TWMPVideoCtrl.Set_windowless(pbClipped: WordBool);
begin
  DefaultInterface.Set_windowless(pbClipped);
end;

function TWMPVideoCtrl.Get_windowless: WordBool;
begin
    Result := DefaultInterface.windowless;
end;

procedure TWMPVideoCtrl.Set_cursor(const pbstrCursor: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pbstrCursor;
end;

function TWMPVideoCtrl.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPVideoCtrl.Set_backgroundColor(const pbstrColor: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pbstrColor;
end;

function TWMPVideoCtrl.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPVideoCtrl.Set_maintainAspectRatio(pbMaintainAspectRatio: WordBool);
begin
  DefaultInterface.Set_maintainAspectRatio(pbMaintainAspectRatio);
end;

function TWMPVideoCtrl.Get_maintainAspectRatio: WordBool;
begin
    Result := DefaultInterface.maintainAspectRatio;
end;

procedure TWMPVideoCtrl.Set_toolTip(const bstrToolTip: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := bstrToolTip;
end;

function TWMPVideoCtrl.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

function TWMPVideoCtrl.Get_fullScreen: WordBool;
begin
    Result := DefaultInterface.fullScreen;
end;

procedure TWMPVideoCtrl.Set_fullScreen(pbFullScreen: WordBool);
begin
  DefaultInterface.Set_fullScreen(pbFullScreen);
end;

procedure TWMPVideoCtrl.Set_shrinkToFit(pbShrinkToFit: WordBool);
begin
  DefaultInterface.Set_shrinkToFit(pbShrinkToFit);
end;

function TWMPVideoCtrl.Get_shrinkToFit: WordBool;
begin
    Result := DefaultInterface.shrinkToFit;
end;

procedure TWMPVideoCtrl.Set_stretchToFit(pbStretchToFit: WordBool);
begin
  DefaultInterface.Set_stretchToFit(pbStretchToFit);
end;

function TWMPVideoCtrl.Get_stretchToFit: WordBool;
begin
    Result := DefaultInterface.stretchToFit;
end;

procedure TWMPVideoCtrl.Set_zoom(pzoom: Integer);
begin
  DefaultInterface.Set_zoom(pzoom);
end;

function TWMPVideoCtrl.Get_zoom: Integer;
begin
    Result := DefaultInterface.zoom;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPVideoCtrlProperties.Create(AServer: TWMPVideoCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPVideoCtrlProperties.GetDefaultInterface: IWMPVideoCtrl;
begin
  Result := FServer.DefaultInterface;
end;

procedure TWMPVideoCtrlProperties.Set_windowless(pbClipped: WordBool);
begin
  DefaultInterface.Set_windowless(pbClipped);
end;

function TWMPVideoCtrlProperties.Get_windowless: WordBool;
begin
    Result := DefaultInterface.windowless;
end;

procedure TWMPVideoCtrlProperties.Set_cursor(const pbstrCursor: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pbstrCursor;
end;

function TWMPVideoCtrlProperties.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPVideoCtrlProperties.Set_backgroundColor(const pbstrColor: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pbstrColor;
end;

function TWMPVideoCtrlProperties.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPVideoCtrlProperties.Set_maintainAspectRatio(pbMaintainAspectRatio: WordBool);
begin
  DefaultInterface.Set_maintainAspectRatio(pbMaintainAspectRatio);
end;

function TWMPVideoCtrlProperties.Get_maintainAspectRatio: WordBool;
begin
    Result := DefaultInterface.maintainAspectRatio;
end;

procedure TWMPVideoCtrlProperties.Set_toolTip(const bstrToolTip: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := bstrToolTip;
end;

function TWMPVideoCtrlProperties.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

function TWMPVideoCtrlProperties.Get_fullScreen: WordBool;
begin
    Result := DefaultInterface.fullScreen;
end;

procedure TWMPVideoCtrlProperties.Set_fullScreen(pbFullScreen: WordBool);
begin
  DefaultInterface.Set_fullScreen(pbFullScreen);
end;

procedure TWMPVideoCtrlProperties.Set_shrinkToFit(pbShrinkToFit: WordBool);
begin
  DefaultInterface.Set_shrinkToFit(pbShrinkToFit);
end;

function TWMPVideoCtrlProperties.Get_shrinkToFit: WordBool;
begin
    Result := DefaultInterface.shrinkToFit;
end;

procedure TWMPVideoCtrlProperties.Set_stretchToFit(pbStretchToFit: WordBool);
begin
  DefaultInterface.Set_stretchToFit(pbStretchToFit);
end;

function TWMPVideoCtrlProperties.Get_stretchToFit: WordBool;
begin
    Result := DefaultInterface.stretchToFit;
end;

procedure TWMPVideoCtrlProperties.Set_zoom(pzoom: Integer);
begin
  DefaultInterface.Set_zoom(pzoom);
end;

function TWMPVideoCtrlProperties.Get_zoom: Integer;
begin
    Result := DefaultInterface.zoom;
end;

{$ENDIF}

class function CoWMPEffects.Create: IWMPEffectsCtrl;
begin
  Result := CreateComObject(CLASS_WMPEffects) as IWMPEffectsCtrl;
end;

class function CoWMPEffects.CreateRemote(const MachineName: string): IWMPEffectsCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPEffects) as IWMPEffectsCtrl;
end;

procedure TWMPEffects.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{47DEA830-D619-4154-B8D8-6B74845D6A2D}';
    IntfIID:   '{A9EFAB80-0A60-4C3F-BBD1-4558DD2A9769}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPEffects.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPEffectsCtrl;
  end;
end;

procedure TWMPEffects.ConnectTo(svrIntf: IWMPEffectsCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPEffects.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPEffects.GetDefaultInterface: IWMPEffectsCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPEffects.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPEffectsProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPEffects.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPEffects.GetServerProperties: TWMPEffectsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPEffects.Get_windowed: WordBool;
begin
    Result := DefaultInterface.windowed;
end;

procedure TWMPEffects.Set_windowed(pVal: WordBool);
begin
  DefaultInterface.Set_windowed(pVal);
end;

function TWMPEffects.Get_allowAll: WordBool;
begin
    Result := DefaultInterface.allowAll;
end;

procedure TWMPEffects.Set_allowAll(pVal: WordBool);
begin
  DefaultInterface.Set_allowAll(pVal);
end;

procedure TWMPEffects.Set_currentEffectType(const pVal: WideString);
  { Warning: The property currentEffectType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.currentEffectType := pVal;
end;

function TWMPEffects.Get_currentEffectType: WideString;
begin
    Result := DefaultInterface.currentEffectType;
end;

function TWMPEffects.Get_currentEffectTitle: WideString;
begin
    Result := DefaultInterface.currentEffectTitle;
end;

function TWMPEffects.Get_currentEffect: IDispatch;
begin
    Result := DefaultInterface.currentEffect;
end;

procedure TWMPEffects.Set_currentEffect(const p: IDispatch);
begin
  DefaultInterface.Set_currentEffect(p);
end;

function TWMPEffects.Get_currentPreset: Integer;
begin
    Result := DefaultInterface.currentPreset;
end;

procedure TWMPEffects.Set_currentPreset(pVal: Integer);
begin
  DefaultInterface.Set_currentPreset(pVal);
end;

function TWMPEffects.Get_currentPresetTitle: WideString;
begin
    Result := DefaultInterface.currentPresetTitle;
end;

function TWMPEffects.Get_currentEffectPresetCount: Integer;
begin
    Result := DefaultInterface.currentEffectPresetCount;
end;

function TWMPEffects.Get_fullScreen: WordBool;
begin
    Result := DefaultInterface.fullScreen;
end;

procedure TWMPEffects.Set_fullScreen(pbFullScreen: WordBool);
begin
  DefaultInterface.Set_fullScreen(pbFullScreen);
end;

function TWMPEffects.Get_effectCanGoFullScreen: WordBool;
begin
    Result := DefaultInterface.effectCanGoFullScreen;
end;

function TWMPEffects.Get_effectHasPropertyPage: WordBool;
begin
    Result := DefaultInterface.effectHasPropertyPage;
end;

function TWMPEffects.Get_effectCount: Integer;
begin
    Result := DefaultInterface.effectCount;
end;

function TWMPEffects.Get_effectTitle(index: Integer): WideString;
begin
    Result := DefaultInterface.effectTitle[index];
end;

function TWMPEffects.Get_effectType(index: Integer): WideString;
begin
    Result := DefaultInterface.effectType[index];
end;

procedure TWMPEffects.next;
begin
  DefaultInterface.next;
end;

procedure TWMPEffects.previous;
begin
  DefaultInterface.previous;
end;

procedure TWMPEffects.settings;
begin
  DefaultInterface.settings;
end;

procedure TWMPEffects.nextEffect;
begin
  DefaultInterface.nextEffect;
end;

procedure TWMPEffects.previousEffect;
begin
  DefaultInterface.previousEffect;
end;

procedure TWMPEffects.nextPreset;
begin
  DefaultInterface.nextPreset;
end;

procedure TWMPEffects.previousPreset;
begin
  DefaultInterface.previousPreset;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPEffectsProperties.Create(AServer: TWMPEffects);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPEffectsProperties.GetDefaultInterface: IWMPEffectsCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPEffectsProperties.Get_windowed: WordBool;
begin
    Result := DefaultInterface.windowed;
end;

procedure TWMPEffectsProperties.Set_windowed(pVal: WordBool);
begin
  DefaultInterface.Set_windowed(pVal);
end;

function TWMPEffectsProperties.Get_allowAll: WordBool;
begin
    Result := DefaultInterface.allowAll;
end;

procedure TWMPEffectsProperties.Set_allowAll(pVal: WordBool);
begin
  DefaultInterface.Set_allowAll(pVal);
end;

procedure TWMPEffectsProperties.Set_currentEffectType(const pVal: WideString);
  { Warning: The property currentEffectType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.currentEffectType := pVal;
end;

function TWMPEffectsProperties.Get_currentEffectType: WideString;
begin
    Result := DefaultInterface.currentEffectType;
end;

function TWMPEffectsProperties.Get_currentEffectTitle: WideString;
begin
    Result := DefaultInterface.currentEffectTitle;
end;

function TWMPEffectsProperties.Get_currentEffect: IDispatch;
begin
    Result := DefaultInterface.currentEffect;
end;

procedure TWMPEffectsProperties.Set_currentEffect(const p: IDispatch);
begin
  DefaultInterface.Set_currentEffect(p);
end;

function TWMPEffectsProperties.Get_currentPreset: Integer;
begin
    Result := DefaultInterface.currentPreset;
end;

procedure TWMPEffectsProperties.Set_currentPreset(pVal: Integer);
begin
  DefaultInterface.Set_currentPreset(pVal);
end;

function TWMPEffectsProperties.Get_currentPresetTitle: WideString;
begin
    Result := DefaultInterface.currentPresetTitle;
end;

function TWMPEffectsProperties.Get_currentEffectPresetCount: Integer;
begin
    Result := DefaultInterface.currentEffectPresetCount;
end;

function TWMPEffectsProperties.Get_fullScreen: WordBool;
begin
    Result := DefaultInterface.fullScreen;
end;

procedure TWMPEffectsProperties.Set_fullScreen(pbFullScreen: WordBool);
begin
  DefaultInterface.Set_fullScreen(pbFullScreen);
end;

function TWMPEffectsProperties.Get_effectCanGoFullScreen: WordBool;
begin
    Result := DefaultInterface.effectCanGoFullScreen;
end;

function TWMPEffectsProperties.Get_effectHasPropertyPage: WordBool;
begin
    Result := DefaultInterface.effectHasPropertyPage;
end;

function TWMPEffectsProperties.Get_effectCount: Integer;
begin
    Result := DefaultInterface.effectCount;
end;

function TWMPEffectsProperties.Get_effectTitle(index: Integer): WideString;
begin
    Result := DefaultInterface.effectTitle[index];
end;

function TWMPEffectsProperties.Get_effectType(index: Integer): WideString;
begin
    Result := DefaultInterface.effectType[index];
end;

{$ENDIF}

class function CoWMPEqualizerSettingsCtrl.Create: IWMPEqualizerSettingsCtrl;
begin
  Result := CreateComObject(CLASS_WMPEqualizerSettingsCtrl) as IWMPEqualizerSettingsCtrl;
end;

class function CoWMPEqualizerSettingsCtrl.CreateRemote(const MachineName: string): IWMPEqualizerSettingsCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPEqualizerSettingsCtrl) as IWMPEqualizerSettingsCtrl;
end;

procedure TWMPEqualizerSettingsCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{93EB32F5-87B1-45AD-ACC6-0F2483DB83BB}';
    IntfIID:   '{2BD3716F-A914-49FB-8655-996D5F495498}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPEqualizerSettingsCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPEqualizerSettingsCtrl;
  end;
end;

procedure TWMPEqualizerSettingsCtrl.ConnectTo(svrIntf: IWMPEqualizerSettingsCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPEqualizerSettingsCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPEqualizerSettingsCtrl.GetDefaultInterface: IWMPEqualizerSettingsCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPEqualizerSettingsCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPEqualizerSettingsCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPEqualizerSettingsCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPEqualizerSettingsCtrl.GetServerProperties: TWMPEqualizerSettingsCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPEqualizerSettingsCtrl.Get_bypass: WordBool;
begin
    Result := DefaultInterface.bypass;
end;

procedure TWMPEqualizerSettingsCtrl.Set_bypass(pVal: WordBool);
begin
  DefaultInterface.Set_bypass(pVal);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel1: Single;
begin
    Result := DefaultInterface.gainLevel1;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel1(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel1(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel2: Single;
begin
    Result := DefaultInterface.gainLevel2;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel2(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel2(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel3: Single;
begin
    Result := DefaultInterface.gainLevel3;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel3(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel3(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel4: Single;
begin
    Result := DefaultInterface.gainLevel4;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel4(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel4(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel5: Single;
begin
    Result := DefaultInterface.gainLevel5;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel5(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel5(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel6: Single;
begin
    Result := DefaultInterface.gainLevel6;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel6(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel6(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel7: Single;
begin
    Result := DefaultInterface.gainLevel7;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel7(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel7(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel8: Single;
begin
    Result := DefaultInterface.gainLevel8;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel8(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel8(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel9: Single;
begin
    Result := DefaultInterface.gainLevel9;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel9(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel9(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevel10: Single;
begin
    Result := DefaultInterface.gainLevel10;
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevel10(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel10(pflLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_gainLevels(iIndex: Integer): Single;
begin
    Result := DefaultInterface.gainLevels[iIndex];
end;

procedure TWMPEqualizerSettingsCtrl.Set_gainLevels(iIndex: Integer; pflLevel: Single);
begin
  DefaultInterface.gainLevels[iIndex] := pflLevel;
end;

function TWMPEqualizerSettingsCtrl.Get_bands: Integer;
begin
    Result := DefaultInterface.bands;
end;

function TWMPEqualizerSettingsCtrl.Get_currentPreset: Integer;
begin
    Result := DefaultInterface.currentPreset;
end;

procedure TWMPEqualizerSettingsCtrl.Set_currentPreset(pVal: Integer);
begin
  DefaultInterface.Set_currentPreset(pVal);
end;

function TWMPEqualizerSettingsCtrl.Get_currentPresetTitle: WideString;
begin
    Result := DefaultInterface.currentPresetTitle;
end;

function TWMPEqualizerSettingsCtrl.Get_presetCount: Integer;
begin
    Result := DefaultInterface.presetCount;
end;

function TWMPEqualizerSettingsCtrl.Get_enhancedAudio: WordBool;
begin
    Result := DefaultInterface.enhancedAudio;
end;

procedure TWMPEqualizerSettingsCtrl.Set_enhancedAudio(pfVal: WordBool);
begin
  DefaultInterface.Set_enhancedAudio(pfVal);
end;

function TWMPEqualizerSettingsCtrl.Get_speakerSize: Integer;
begin
    Result := DefaultInterface.speakerSize;
end;

procedure TWMPEqualizerSettingsCtrl.Set_speakerSize(plVal: Integer);
begin
  DefaultInterface.Set_speakerSize(plVal);
end;

function TWMPEqualizerSettingsCtrl.Get_currentSpeakerName: WideString;
begin
    Result := DefaultInterface.currentSpeakerName;
end;

function TWMPEqualizerSettingsCtrl.Get_truBassLevel: Integer;
begin
    Result := DefaultInterface.truBassLevel;
end;

procedure TWMPEqualizerSettingsCtrl.Set_truBassLevel(plTruBassLevel: Integer);
begin
  DefaultInterface.Set_truBassLevel(plTruBassLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_wowLevel: Integer;
begin
    Result := DefaultInterface.wowLevel;
end;

procedure TWMPEqualizerSettingsCtrl.Set_wowLevel(plWowLevel: Integer);
begin
  DefaultInterface.Set_wowLevel(plWowLevel);
end;

function TWMPEqualizerSettingsCtrl.Get_splineTension: Single;
begin
    Result := DefaultInterface.splineTension;
end;

procedure TWMPEqualizerSettingsCtrl.Set_splineTension(pflSplineTension: Single);
begin
  DefaultInterface.Set_splineTension(pflSplineTension);
end;

function TWMPEqualizerSettingsCtrl.Get_enableSplineTension: WordBool;
begin
    Result := DefaultInterface.enableSplineTension;
end;

procedure TWMPEqualizerSettingsCtrl.Set_enableSplineTension(pfEnableSplineTension: WordBool);
begin
  DefaultInterface.Set_enableSplineTension(pfEnableSplineTension);
end;

function TWMPEqualizerSettingsCtrl.Get_presetTitle(iIndex: Integer): WideString;
begin
    Result := DefaultInterface.presetTitle[iIndex];
end;

function TWMPEqualizerSettingsCtrl.Get_normalization: WordBool;
begin
    Result := DefaultInterface.normalization;
end;

procedure TWMPEqualizerSettingsCtrl.Set_normalization(pfVal: WordBool);
begin
  DefaultInterface.Set_normalization(pfVal);
end;

function TWMPEqualizerSettingsCtrl.Get_normalizationAverage: Single;
begin
    Result := DefaultInterface.normalizationAverage;
end;

function TWMPEqualizerSettingsCtrl.Get_normalizationPeak: Single;
begin
    Result := DefaultInterface.normalizationPeak;
end;

function TWMPEqualizerSettingsCtrl.Get_crossFade: WordBool;
begin
    Result := DefaultInterface.crossFade;
end;

procedure TWMPEqualizerSettingsCtrl.Set_crossFade(pfVal: WordBool);
begin
  DefaultInterface.Set_crossFade(pfVal);
end;

function TWMPEqualizerSettingsCtrl.Get_crossFadeWindow: Integer;
begin
    Result := DefaultInterface.crossFadeWindow;
end;

procedure TWMPEqualizerSettingsCtrl.Set_crossFadeWindow(plWindow: Integer);
begin
  DefaultInterface.Set_crossFadeWindow(plWindow);
end;

procedure TWMPEqualizerSettingsCtrl.reset;
begin
  DefaultInterface.reset;
end;

procedure TWMPEqualizerSettingsCtrl.nextPreset;
begin
  DefaultInterface.nextPreset;
end;

procedure TWMPEqualizerSettingsCtrl.previousPreset;
begin
  DefaultInterface.previousPreset;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPEqualizerSettingsCtrlProperties.Create(AServer: TWMPEqualizerSettingsCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPEqualizerSettingsCtrlProperties.GetDefaultInterface: IWMPEqualizerSettingsCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_bypass: WordBool;
begin
    Result := DefaultInterface.bypass;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_bypass(pVal: WordBool);
begin
  DefaultInterface.Set_bypass(pVal);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel1: Single;
begin
    Result := DefaultInterface.gainLevel1;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel1(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel1(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel2: Single;
begin
    Result := DefaultInterface.gainLevel2;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel2(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel2(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel3: Single;
begin
    Result := DefaultInterface.gainLevel3;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel3(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel3(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel4: Single;
begin
    Result := DefaultInterface.gainLevel4;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel4(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel4(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel5: Single;
begin
    Result := DefaultInterface.gainLevel5;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel5(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel5(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel6: Single;
begin
    Result := DefaultInterface.gainLevel6;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel6(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel6(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel7: Single;
begin
    Result := DefaultInterface.gainLevel7;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel7(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel7(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel8: Single;
begin
    Result := DefaultInterface.gainLevel8;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel8(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel8(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel9: Single;
begin
    Result := DefaultInterface.gainLevel9;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel9(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel9(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevel10: Single;
begin
    Result := DefaultInterface.gainLevel10;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevel10(pflLevel: Single);
begin
  DefaultInterface.Set_gainLevel10(pflLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_gainLevels(iIndex: Integer): Single;
begin
    Result := DefaultInterface.gainLevels[iIndex];
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_gainLevels(iIndex: Integer; pflLevel: Single);
begin
  DefaultInterface.gainLevels[iIndex] := pflLevel;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_bands: Integer;
begin
    Result := DefaultInterface.bands;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_currentPreset: Integer;
begin
    Result := DefaultInterface.currentPreset;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_currentPreset(pVal: Integer);
begin
  DefaultInterface.Set_currentPreset(pVal);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_currentPresetTitle: WideString;
begin
    Result := DefaultInterface.currentPresetTitle;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_presetCount: Integer;
begin
    Result := DefaultInterface.presetCount;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_enhancedAudio: WordBool;
begin
    Result := DefaultInterface.enhancedAudio;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_enhancedAudio(pfVal: WordBool);
begin
  DefaultInterface.Set_enhancedAudio(pfVal);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_speakerSize: Integer;
begin
    Result := DefaultInterface.speakerSize;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_speakerSize(plVal: Integer);
begin
  DefaultInterface.Set_speakerSize(plVal);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_currentSpeakerName: WideString;
begin
    Result := DefaultInterface.currentSpeakerName;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_truBassLevel: Integer;
begin
    Result := DefaultInterface.truBassLevel;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_truBassLevel(plTruBassLevel: Integer);
begin
  DefaultInterface.Set_truBassLevel(plTruBassLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_wowLevel: Integer;
begin
    Result := DefaultInterface.wowLevel;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_wowLevel(plWowLevel: Integer);
begin
  DefaultInterface.Set_wowLevel(plWowLevel);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_splineTension: Single;
begin
    Result := DefaultInterface.splineTension;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_splineTension(pflSplineTension: Single);
begin
  DefaultInterface.Set_splineTension(pflSplineTension);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_enableSplineTension: WordBool;
begin
    Result := DefaultInterface.enableSplineTension;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_enableSplineTension(pfEnableSplineTension: WordBool);
begin
  DefaultInterface.Set_enableSplineTension(pfEnableSplineTension);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_presetTitle(iIndex: Integer): WideString;
begin
    Result := DefaultInterface.presetTitle[iIndex];
end;

function TWMPEqualizerSettingsCtrlProperties.Get_normalization: WordBool;
begin
    Result := DefaultInterface.normalization;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_normalization(pfVal: WordBool);
begin
  DefaultInterface.Set_normalization(pfVal);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_normalizationAverage: Single;
begin
    Result := DefaultInterface.normalizationAverage;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_normalizationPeak: Single;
begin
    Result := DefaultInterface.normalizationPeak;
end;

function TWMPEqualizerSettingsCtrlProperties.Get_crossFade: WordBool;
begin
    Result := DefaultInterface.crossFade;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_crossFade(pfVal: WordBool);
begin
  DefaultInterface.Set_crossFade(pfVal);
end;

function TWMPEqualizerSettingsCtrlProperties.Get_crossFadeWindow: Integer;
begin
    Result := DefaultInterface.crossFadeWindow;
end;

procedure TWMPEqualizerSettingsCtrlProperties.Set_crossFadeWindow(plWindow: Integer);
begin
  DefaultInterface.Set_crossFadeWindow(plWindow);
end;

{$ENDIF}

class function CoWMPVideoSettingsCtrl.Create: IWMPVideoSettingsCtrl;
begin
  Result := CreateComObject(CLASS_WMPVideoSettingsCtrl) as IWMPVideoSettingsCtrl;
end;

class function CoWMPVideoSettingsCtrl.CreateRemote(const MachineName: string): IWMPVideoSettingsCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPVideoSettingsCtrl) as IWMPVideoSettingsCtrl;
end;

procedure TWMPVideoSettingsCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AE7BFAFE-DCC8-4A73-92C8-CC300CA88859}';
    IntfIID:   '{07EC23DA-EF73-4BDE-A40F-F269E0B7AFD6}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPVideoSettingsCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPVideoSettingsCtrl;
  end;
end;

procedure TWMPVideoSettingsCtrl.ConnectTo(svrIntf: IWMPVideoSettingsCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPVideoSettingsCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPVideoSettingsCtrl.GetDefaultInterface: IWMPVideoSettingsCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPVideoSettingsCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPVideoSettingsCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPVideoSettingsCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPVideoSettingsCtrl.GetServerProperties: TWMPVideoSettingsCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPVideoSettingsCtrl.Get_brightness: Integer;
begin
    Result := DefaultInterface.brightness;
end;

procedure TWMPVideoSettingsCtrl.Set_brightness(pVal: Integer);
begin
  DefaultInterface.Set_brightness(pVal);
end;

function TWMPVideoSettingsCtrl.Get_contrast: Integer;
begin
    Result := DefaultInterface.contrast;
end;

procedure TWMPVideoSettingsCtrl.Set_contrast(pVal: Integer);
begin
  DefaultInterface.Set_contrast(pVal);
end;

function TWMPVideoSettingsCtrl.Get_hue: Integer;
begin
    Result := DefaultInterface.hue;
end;

procedure TWMPVideoSettingsCtrl.Set_hue(pVal: Integer);
begin
  DefaultInterface.Set_hue(pVal);
end;

function TWMPVideoSettingsCtrl.Get_saturation: Integer;
begin
    Result := DefaultInterface.saturation;
end;

procedure TWMPVideoSettingsCtrl.Set_saturation(pVal: Integer);
begin
  DefaultInterface.Set_saturation(pVal);
end;

procedure TWMPVideoSettingsCtrl.reset;
begin
  DefaultInterface.reset;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPVideoSettingsCtrlProperties.Create(AServer: TWMPVideoSettingsCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPVideoSettingsCtrlProperties.GetDefaultInterface: IWMPVideoSettingsCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPVideoSettingsCtrlProperties.Get_brightness: Integer;
begin
    Result := DefaultInterface.brightness;
end;

procedure TWMPVideoSettingsCtrlProperties.Set_brightness(pVal: Integer);
begin
  DefaultInterface.Set_brightness(pVal);
end;

function TWMPVideoSettingsCtrlProperties.Get_contrast: Integer;
begin
    Result := DefaultInterface.contrast;
end;

procedure TWMPVideoSettingsCtrlProperties.Set_contrast(pVal: Integer);
begin
  DefaultInterface.Set_contrast(pVal);
end;

function TWMPVideoSettingsCtrlProperties.Get_hue: Integer;
begin
    Result := DefaultInterface.hue;
end;

procedure TWMPVideoSettingsCtrlProperties.Set_hue(pVal: Integer);
begin
  DefaultInterface.Set_hue(pVal);
end;

function TWMPVideoSettingsCtrlProperties.Get_saturation: Integer;
begin
    Result := DefaultInterface.saturation;
end;

procedure TWMPVideoSettingsCtrlProperties.Set_saturation(pVal: Integer);
begin
  DefaultInterface.Set_saturation(pVal);
end;

{$ENDIF}

class function CoWMPLibraryTreeCtrl.Create: IWMPLibraryTreeCtrl;
begin
  Result := CreateComObject(CLASS_WMPLibraryTreeCtrl) as IWMPLibraryTreeCtrl;
end;

class function CoWMPLibraryTreeCtrl.CreateRemote(const MachineName: string): IWMPLibraryTreeCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPLibraryTreeCtrl) as IWMPLibraryTreeCtrl;
end;

procedure TWMPLibraryTreeCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D9DE732A-AEE9-4503-9D11-5605589977A8}';
    IntfIID:   '{B738FCAE-F089-45DF-AED6-034B9E7DB632}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPLibraryTreeCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPLibraryTreeCtrl;
  end;
end;

procedure TWMPLibraryTreeCtrl.ConnectTo(svrIntf: IWMPLibraryTreeCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPLibraryTreeCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPLibraryTreeCtrl.GetDefaultInterface: IWMPLibraryTreeCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPLibraryTreeCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPLibraryTreeCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPLibraryTreeCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPLibraryTreeCtrl.GetServerProperties: TWMPLibraryTreeCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPLibraryTreeCtrl.Get_dropDownVisible: WordBool;
begin
    Result := DefaultInterface.dropDownVisible;
end;

procedure TWMPLibraryTreeCtrl.Set_dropDownVisible(pVal: WordBool);
begin
  DefaultInterface.Set_dropDownVisible(pVal);
end;

function TWMPLibraryTreeCtrl.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPLibraryTreeCtrl.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPLibraryTreeCtrl.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPLibraryTreeCtrl.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPLibraryTreeCtrl.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPLibraryTreeCtrl.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPLibraryTreeCtrl.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPLibraryTreeCtrl.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPLibraryTreeCtrl.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPLibraryTreeCtrl.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPLibraryTreeCtrl.Get_filter: WideString;
begin
    Result := DefaultInterface.filter;
end;

procedure TWMPLibraryTreeCtrl.Set_filter(const pVal: WideString);
  { Warning: The property filter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.filter := pVal;
end;

function TWMPLibraryTreeCtrl.Get_expandState: WideString;
begin
    Result := DefaultInterface.expandState;
end;

procedure TWMPLibraryTreeCtrl.Set_expandState(const pVal: WideString);
  { Warning: The property expandState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.expandState := pVal;
end;

function TWMPLibraryTreeCtrl.Get_Playlist: IWMPPlaylist;
begin
    Result := DefaultInterface.Playlist;
end;

procedure TWMPLibraryTreeCtrl.Set_Playlist(const ppPlaylist: IWMPPlaylist);
begin
  DefaultInterface.Set_Playlist(ppPlaylist);
end;

function TWMPLibraryTreeCtrl.Get_selectedPlaylist: IWMPPlaylist;
begin
    Result := DefaultInterface.selectedPlaylist;
end;

function TWMPLibraryTreeCtrl.Get_selectedMedia: IWMPMedia;
begin
    Result := DefaultInterface.selectedMedia;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPLibraryTreeCtrlProperties.Create(AServer: TWMPLibraryTreeCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPLibraryTreeCtrlProperties.GetDefaultInterface: IWMPLibraryTreeCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPLibraryTreeCtrlProperties.Get_dropDownVisible: WordBool;
begin
    Result := DefaultInterface.dropDownVisible;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_dropDownVisible(pVal: WordBool);
begin
  DefaultInterface.Set_dropDownVisible(pVal);
end;

function TWMPLibraryTreeCtrlProperties.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPLibraryTreeCtrlProperties.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPLibraryTreeCtrlProperties.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPLibraryTreeCtrlProperties.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPLibraryTreeCtrlProperties.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPLibraryTreeCtrlProperties.Get_filter: WideString;
begin
    Result := DefaultInterface.filter;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_filter(const pVal: WideString);
  { Warning: The property filter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.filter := pVal;
end;

function TWMPLibraryTreeCtrlProperties.Get_expandState: WideString;
begin
    Result := DefaultInterface.expandState;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_expandState(const pVal: WideString);
  { Warning: The property expandState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.expandState := pVal;
end;

function TWMPLibraryTreeCtrlProperties.Get_Playlist: IWMPPlaylist;
begin
    Result := DefaultInterface.Playlist;
end;

procedure TWMPLibraryTreeCtrlProperties.Set_Playlist(const ppPlaylist: IWMPPlaylist);
begin
  DefaultInterface.Set_Playlist(ppPlaylist);
end;

function TWMPLibraryTreeCtrlProperties.Get_selectedPlaylist: IWMPPlaylist;
begin
    Result := DefaultInterface.selectedPlaylist;
end;

function TWMPLibraryTreeCtrlProperties.Get_selectedMedia: IWMPMedia;
begin
    Result := DefaultInterface.selectedMedia;
end;

{$ENDIF}

class function CoWMPEditCtrl.Create: IWMPEditCtrl;
begin
  Result := CreateComObject(CLASS_WMPEditCtrl) as IWMPEditCtrl;
end;

class function CoWMPEditCtrl.CreateRemote(const MachineName: string): IWMPEditCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPEditCtrl) as IWMPEditCtrl;
end;

procedure TWMPEditCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6342FCED-25EA-4033-BDDB-D049A14382D3}';
    IntfIID:   '{70E1217C-C617-4CFD-BD8A-69CA2043E70B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPEditCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPEditCtrl;
  end;
end;

procedure TWMPEditCtrl.ConnectTo(svrIntf: IWMPEditCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPEditCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPEditCtrl.GetDefaultInterface: IWMPEditCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPEditCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPEditCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPEditCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPEditCtrl.GetServerProperties: TWMPEditCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPEditCtrl.Get_value: WideString;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPEditCtrl.Set_value(const pVal: WideString);
  { Warning: The property value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.value := pVal;
end;

function TWMPEditCtrl.Get_border: WordBool;
begin
    Result := DefaultInterface.border;
end;

procedure TWMPEditCtrl.Set_border(pVal: WordBool);
begin
  DefaultInterface.Set_border(pVal);
end;

function TWMPEditCtrl.Get_justification: WideString;
begin
    Result := DefaultInterface.justification;
end;

procedure TWMPEditCtrl.Set_justification(const pVal: WideString);
  { Warning: The property justification has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.justification := pVal;
end;

function TWMPEditCtrl.Get_editStyle: WideString;
begin
    Result := DefaultInterface.editStyle;
end;

procedure TWMPEditCtrl.Set_editStyle(const pVal: WideString);
  { Warning: The property editStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.editStyle := pVal;
end;

function TWMPEditCtrl.Get_wordWrap: WordBool;
begin
    Result := DefaultInterface.wordWrap;
end;

procedure TWMPEditCtrl.Set_wordWrap(pVal: WordBool);
begin
  DefaultInterface.Set_wordWrap(pVal);
end;

function TWMPEditCtrl.Get_readOnly: WordBool;
begin
    Result := DefaultInterface.readOnly;
end;

procedure TWMPEditCtrl.Set_readOnly(pVal: WordBool);
begin
  DefaultInterface.Set_readOnly(pVal);
end;

function TWMPEditCtrl.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPEditCtrl.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPEditCtrl.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPEditCtrl.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPEditCtrl.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPEditCtrl.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPEditCtrl.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPEditCtrl.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPEditCtrl.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPEditCtrl.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPEditCtrl.Get_textLimit: Integer;
begin
    Result := DefaultInterface.textLimit;
end;

procedure TWMPEditCtrl.Set_textLimit(pVal: Integer);
begin
  DefaultInterface.Set_textLimit(pVal);
end;

function TWMPEditCtrl.Get_lineCount: Integer;
begin
    Result := DefaultInterface.lineCount;
end;

function TWMPEditCtrl.getLine(nIndex: Integer): WideString;
begin
  Result := DefaultInterface.getLine(nIndex);
end;

function TWMPEditCtrl.getSelectionStart: Integer;
begin
  Result := DefaultInterface.getSelectionStart;
end;

function TWMPEditCtrl.getSelectionEnd: Integer;
begin
  Result := DefaultInterface.getSelectionEnd;
end;

procedure TWMPEditCtrl.setSelection(nStart: Integer; nEnd: Integer);
begin
  DefaultInterface.setSelection(nStart, nEnd);
end;

procedure TWMPEditCtrl.replaceSelection(const newVal: WideString);
begin
  DefaultInterface.replaceSelection(newVal);
end;

function TWMPEditCtrl.getLineIndex(nIndex: Integer): Integer;
begin
  Result := DefaultInterface.getLineIndex(nIndex);
end;

function TWMPEditCtrl.getLineFromChar(nPosition: Integer): Integer;
begin
  Result := DefaultInterface.getLineFromChar(nPosition);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPEditCtrlProperties.Create(AServer: TWMPEditCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPEditCtrlProperties.GetDefaultInterface: IWMPEditCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPEditCtrlProperties.Get_value: WideString;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPEditCtrlProperties.Set_value(const pVal: WideString);
  { Warning: The property value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.value := pVal;
end;

function TWMPEditCtrlProperties.Get_border: WordBool;
begin
    Result := DefaultInterface.border;
end;

procedure TWMPEditCtrlProperties.Set_border(pVal: WordBool);
begin
  DefaultInterface.Set_border(pVal);
end;

function TWMPEditCtrlProperties.Get_justification: WideString;
begin
    Result := DefaultInterface.justification;
end;

procedure TWMPEditCtrlProperties.Set_justification(const pVal: WideString);
  { Warning: The property justification has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.justification := pVal;
end;

function TWMPEditCtrlProperties.Get_editStyle: WideString;
begin
    Result := DefaultInterface.editStyle;
end;

procedure TWMPEditCtrlProperties.Set_editStyle(const pVal: WideString);
  { Warning: The property editStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.editStyle := pVal;
end;

function TWMPEditCtrlProperties.Get_wordWrap: WordBool;
begin
    Result := DefaultInterface.wordWrap;
end;

procedure TWMPEditCtrlProperties.Set_wordWrap(pVal: WordBool);
begin
  DefaultInterface.Set_wordWrap(pVal);
end;

function TWMPEditCtrlProperties.Get_readOnly: WordBool;
begin
    Result := DefaultInterface.readOnly;
end;

procedure TWMPEditCtrlProperties.Set_readOnly(pVal: WordBool);
begin
  DefaultInterface.Set_readOnly(pVal);
end;

function TWMPEditCtrlProperties.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPEditCtrlProperties.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPEditCtrlProperties.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPEditCtrlProperties.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPEditCtrlProperties.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPEditCtrlProperties.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPEditCtrlProperties.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPEditCtrlProperties.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPEditCtrlProperties.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPEditCtrlProperties.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPEditCtrlProperties.Get_textLimit: Integer;
begin
    Result := DefaultInterface.textLimit;
end;

procedure TWMPEditCtrlProperties.Set_textLimit(pVal: Integer);
begin
  DefaultInterface.Set_textLimit(pVal);
end;

function TWMPEditCtrlProperties.Get_lineCount: Integer;
begin
    Result := DefaultInterface.lineCount;
end;

{$ENDIF}

class function CoWMPMenuCtrl.Create: IWMPMenuCtrl;
begin
  Result := CreateComObject(CLASS_WMPMenuCtrl) as IWMPMenuCtrl;
end;

class function CoWMPMenuCtrl.CreateRemote(const MachineName: string): IWMPMenuCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPMenuCtrl) as IWMPMenuCtrl;
end;

procedure TWMPMenuCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{BAB3768B-8883-4AEC-9F9B-E14C947913EF}';
    IntfIID:   '{158A7ADC-33DA-4039-A553-BDDBBE389F5C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPMenuCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPMenuCtrl;
  end;
end;

procedure TWMPMenuCtrl.ConnectTo(svrIntf: IWMPMenuCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPMenuCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPMenuCtrl.GetDefaultInterface: IWMPMenuCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPMenuCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPMenuCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPMenuCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPMenuCtrl.GetServerProperties: TWMPMenuCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPMenuCtrl.Get_showFlags: Integer;
begin
    Result := DefaultInterface.showFlags;
end;

procedure TWMPMenuCtrl.Set_showFlags(pVal: Integer);
begin
  DefaultInterface.Set_showFlags(pVal);
end;

procedure TWMPMenuCtrl.deleteAllItems;
begin
  DefaultInterface.deleteAllItems;
end;

procedure TWMPMenuCtrl.appendItem(nID: Integer; const bstrItem: WideString);
begin
  DefaultInterface.appendItem(nID, bstrItem);
end;

procedure TWMPMenuCtrl.appendSeparator;
begin
  DefaultInterface.appendSeparator;
end;

procedure TWMPMenuCtrl.enableItem(nID: Integer; newVal: WordBool);
begin
  DefaultInterface.enableItem(nID, newVal);
end;

procedure TWMPMenuCtrl.checkItem(nID: Integer; newVal: WordBool);
begin
  DefaultInterface.checkItem(nID, newVal);
end;

procedure TWMPMenuCtrl.checkRadioItem(nID: Integer; newVal: WordBool);
begin
  DefaultInterface.checkRadioItem(nID, newVal);
end;

function TWMPMenuCtrl.show: Integer;
begin
  Result := DefaultInterface.show;
end;

procedure TWMPMenuCtrl.showEx(nID: Integer);
begin
  DefaultInterface.showEx(nID);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPMenuCtrlProperties.Create(AServer: TWMPMenuCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPMenuCtrlProperties.GetDefaultInterface: IWMPMenuCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPMenuCtrlProperties.Get_showFlags: Integer;
begin
    Result := DefaultInterface.showFlags;
end;

procedure TWMPMenuCtrlProperties.Set_showFlags(pVal: Integer);
begin
  DefaultInterface.Set_showFlags(pVal);
end;

{$ENDIF}

class function CoWMPAutoMenuCtrl.Create: IWMPAutoMenuCtrl;
begin
  Result := CreateComObject(CLASS_WMPAutoMenuCtrl) as IWMPAutoMenuCtrl;
end;

class function CoWMPAutoMenuCtrl.CreateRemote(const MachineName: string): IWMPAutoMenuCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPAutoMenuCtrl) as IWMPAutoMenuCtrl;
end;

procedure TWMPAutoMenuCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6B28F900-8D64-4B80-9963-CC52DDD1FBB4}';
    IntfIID:   '{1AD13E0B-4F3A-41DF-9BE2-F9E6FE0A7875}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPAutoMenuCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPAutoMenuCtrl;
  end;
end;

procedure TWMPAutoMenuCtrl.ConnectTo(svrIntf: IWMPAutoMenuCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPAutoMenuCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPAutoMenuCtrl.GetDefaultInterface: IWMPAutoMenuCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPAutoMenuCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPAutoMenuCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPAutoMenuCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPAutoMenuCtrl.GetServerProperties: TWMPAutoMenuCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWMPAutoMenuCtrl.show(const newVal: WideString);
begin
  DefaultInterface.show(newVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPAutoMenuCtrlProperties.Create(AServer: TWMPAutoMenuCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPAutoMenuCtrlProperties.GetDefaultInterface: IWMPAutoMenuCtrl;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoWMPRegionalButtonCtrl.Create: IWMPRegionalButtonCtrl;
begin
  Result := CreateComObject(CLASS_WMPRegionalButtonCtrl) as IWMPRegionalButtonCtrl;
end;

class function CoWMPRegionalButtonCtrl.CreateRemote(const MachineName: string): IWMPRegionalButtonCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPRegionalButtonCtrl) as IWMPRegionalButtonCtrl;
end;

procedure TWMPRegionalButtonCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AE3B6831-25A9-11D3-BD41-00C04F6EA5AE}';
    IntfIID:   '{58D507B1-2354-11D3-BD41-00C04F6EA5AE}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPRegionalButtonCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPRegionalButtonCtrl;
  end;
end;

procedure TWMPRegionalButtonCtrl.ConnectTo(svrIntf: IWMPRegionalButtonCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPRegionalButtonCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPRegionalButtonCtrl.GetDefaultInterface: IWMPRegionalButtonCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPRegionalButtonCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPRegionalButtonCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPRegionalButtonCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPRegionalButtonCtrl.GetServerProperties: TWMPRegionalButtonCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPRegionalButtonCtrl.Get_image: WideString;
begin
    Result := DefaultInterface.image;
end;

procedure TWMPRegionalButtonCtrl.Set_image(const pVal: WideString);
  { Warning: The property image has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.image := pVal;
end;

function TWMPRegionalButtonCtrl.Get_hoverImage: WideString;
begin
    Result := DefaultInterface.hoverImage;
end;

procedure TWMPRegionalButtonCtrl.Set_hoverImage(const pVal: WideString);
  { Warning: The property hoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverImage := pVal;
end;

function TWMPRegionalButtonCtrl.Get_downImage: WideString;
begin
    Result := DefaultInterface.downImage;
end;

procedure TWMPRegionalButtonCtrl.Set_downImage(const pVal: WideString);
  { Warning: The property downImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downImage := pVal;
end;

function TWMPRegionalButtonCtrl.Get_hoverDownImage: WideString;
begin
    Result := DefaultInterface.hoverDownImage;
end;

procedure TWMPRegionalButtonCtrl.Set_hoverDownImage(const pVal: WideString);
  { Warning: The property hoverDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverDownImage := pVal;
end;

function TWMPRegionalButtonCtrl.Get_hoverHoverImage: WideString;
begin
    Result := DefaultInterface.hoverHoverImage;
end;

procedure TWMPRegionalButtonCtrl.Set_hoverHoverImage(const pVal: WideString);
  { Warning: The property hoverHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverHoverImage := pVal;
end;

function TWMPRegionalButtonCtrl.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPRegionalButtonCtrl.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPRegionalButtonCtrl.Get_mappingImage: WideString;
begin
    Result := DefaultInterface.mappingImage;
end;

procedure TWMPRegionalButtonCtrl.Set_mappingImage(const pVal: WideString);
  { Warning: The property mappingImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.mappingImage := pVal;
end;

function TWMPRegionalButtonCtrl.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPRegionalButtonCtrl.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

function TWMPRegionalButtonCtrl.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPRegionalButtonCtrl.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPRegionalButtonCtrl.Get_showBackground: WordBool;
begin
    Result := DefaultInterface.showBackground;
end;

procedure TWMPRegionalButtonCtrl.Set_showBackground(pVal: WordBool);
begin
  DefaultInterface.Set_showBackground(pVal);
end;

function TWMPRegionalButtonCtrl.Get_radio: WordBool;
begin
    Result := DefaultInterface.radio;
end;

procedure TWMPRegionalButtonCtrl.Set_radio(pVal: WordBool);
begin
  DefaultInterface.Set_radio(pVal);
end;

function TWMPRegionalButtonCtrl.Get_buttonCount: Integer;
begin
    Result := DefaultInterface.buttonCount;
end;

function TWMPRegionalButtonCtrl.Get_hueShift: Single;
begin
    Result := DefaultInterface.hueShift;
end;

procedure TWMPRegionalButtonCtrl.Set_hueShift(pVal: Single);
begin
  DefaultInterface.Set_hueShift(pVal);
end;

function TWMPRegionalButtonCtrl.Get_saturation: Single;
begin
    Result := DefaultInterface.saturation;
end;

procedure TWMPRegionalButtonCtrl.Set_saturation(pVal: Single);
begin
  DefaultInterface.Set_saturation(pVal);
end;

function TWMPRegionalButtonCtrl.createButton: IDispatch;
begin
  Result := DefaultInterface.createButton;
end;

function TWMPRegionalButtonCtrl.getButton(nButton: Integer): IDispatch;
begin
  Result := DefaultInterface.getButton(nButton);
end;

procedure TWMPRegionalButtonCtrl.Click(nButton: Integer);
begin
  DefaultInterface.Click(nButton);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPRegionalButtonCtrlProperties.Create(AServer: TWMPRegionalButtonCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPRegionalButtonCtrlProperties.GetDefaultInterface: IWMPRegionalButtonCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPRegionalButtonCtrlProperties.Get_image: WideString;
begin
    Result := DefaultInterface.image;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_image(const pVal: WideString);
  { Warning: The property image has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.image := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_hoverImage: WideString;
begin
    Result := DefaultInterface.hoverImage;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_hoverImage(const pVal: WideString);
  { Warning: The property hoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverImage := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_downImage: WideString;
begin
    Result := DefaultInterface.downImage;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_downImage(const pVal: WideString);
  { Warning: The property downImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downImage := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_hoverDownImage: WideString;
begin
    Result := DefaultInterface.hoverDownImage;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_hoverDownImage(const pVal: WideString);
  { Warning: The property hoverDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverDownImage := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_hoverHoverImage: WideString;
begin
    Result := DefaultInterface.hoverHoverImage;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_hoverHoverImage(const pVal: WideString);
  { Warning: The property hoverHoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverHoverImage := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_mappingImage: WideString;
begin
    Result := DefaultInterface.mappingImage;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_mappingImage(const pVal: WideString);
  { Warning: The property mappingImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.mappingImage := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPRegionalButtonCtrlProperties.Get_showBackground: WordBool;
begin
    Result := DefaultInterface.showBackground;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_showBackground(pVal: WordBool);
begin
  DefaultInterface.Set_showBackground(pVal);
end;

function TWMPRegionalButtonCtrlProperties.Get_radio: WordBool;
begin
    Result := DefaultInterface.radio;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_radio(pVal: WordBool);
begin
  DefaultInterface.Set_radio(pVal);
end;

function TWMPRegionalButtonCtrlProperties.Get_buttonCount: Integer;
begin
    Result := DefaultInterface.buttonCount;
end;

function TWMPRegionalButtonCtrlProperties.Get_hueShift: Single;
begin
    Result := DefaultInterface.hueShift;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_hueShift(pVal: Single);
begin
  DefaultInterface.Set_hueShift(pVal);
end;

function TWMPRegionalButtonCtrlProperties.Get_saturation: Single;
begin
    Result := DefaultInterface.saturation;
end;

procedure TWMPRegionalButtonCtrlProperties.Set_saturation(pVal: Single);
begin
  DefaultInterface.Set_saturation(pVal);
end;

{$ENDIF}

class function CoWMPRegionalButton.Create: IWMPRegionalButton;
begin
  Result := CreateComObject(CLASS_WMPRegionalButton) as IWMPRegionalButton;
end;

class function CoWMPRegionalButton.CreateRemote(const MachineName: string): IWMPRegionalButton;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPRegionalButton) as IWMPRegionalButton;
end;

procedure TWMPRegionalButton.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{09AEFF11-69EF-11D3-BD4D-00C04F6EA5AE}';
    IntfIID:   '{58D507B2-2354-11D3-BD41-00C04F6EA5AE}';
    EventIID:  '{50FC8D31-67AC-11D3-BD4C-00C04F6EA5AE}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPRegionalButton.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IWMPRegionalButton;
  end;
end;

procedure TWMPRegionalButton.ConnectTo(svrIntf: IWMPRegionalButton);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TWMPRegionalButton.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TWMPRegionalButton.GetDefaultInterface: IWMPRegionalButton;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPRegionalButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPRegionalButtonProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPRegionalButton.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPRegionalButton.GetServerProperties: TWMPRegionalButtonProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWMPRegionalButton.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    5360: if Assigned(FOnonblur) then
         FOnonblur(Self);
    5361: if Assigned(FOnonfocus) then
         FOnonfocus(Self);
    5362: if Assigned(FOnonclick) then
         FOnonclick(Self);
    5363: if Assigned(FOnondblclick) then
         FOnondblclick(Self);
    5364: if Assigned(FOnonmousedown) then
         FOnonmousedown(Self);
    5365: if Assigned(FOnonmouseup) then
         FOnonmouseup(Self);
    5366: if Assigned(FOnonmousemove) then
         FOnonmousemove(Self);
    5367: if Assigned(FOnonmouseover) then
         FOnonmouseover(Self);
    5368: if Assigned(FOnonmouseout) then
         FOnonmouseout(Self);
    5369: if Assigned(FOnonkeypress) then
         FOnonkeypress(Self);
    5370: if Assigned(FOnonkeydown) then
         FOnonkeydown(Self);
    5371: if Assigned(FOnonkeyup) then
         FOnonkeyup(Self);
  end; {case DispID}
end;

function TWMPRegionalButton.Get_upToolTip: WideString;
begin
    Result := DefaultInterface.upToolTip;
end;

procedure TWMPRegionalButton.Set_upToolTip(const pVal: WideString);
  { Warning: The property upToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.upToolTip := pVal;
end;

function TWMPRegionalButton.Get_downToolTip: WideString;
begin
    Result := DefaultInterface.downToolTip;
end;

procedure TWMPRegionalButton.Set_downToolTip(const pVal: WideString);
  { Warning: The property downToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downToolTip := pVal;
end;

function TWMPRegionalButton.Get_mappingColor: WideString;
begin
    Result := DefaultInterface.mappingColor;
end;

procedure TWMPRegionalButton.Set_mappingColor(const pVal: WideString);
  { Warning: The property mappingColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.mappingColor := pVal;
end;

function TWMPRegionalButton.Get_enabled: WordBool;
begin
    Result := DefaultInterface.enabled;
end;

procedure TWMPRegionalButton.Set_enabled(pVal: WordBool);
begin
  DefaultInterface.Set_enabled(pVal);
end;

function TWMPRegionalButton.Get_sticky: WordBool;
begin
    Result := DefaultInterface.sticky;
end;

procedure TWMPRegionalButton.Set_sticky(pVal: WordBool);
begin
  DefaultInterface.Set_sticky(pVal);
end;

function TWMPRegionalButton.Get_down: WordBool;
begin
    Result := DefaultInterface.down;
end;

procedure TWMPRegionalButton.Set_down(pVal: WordBool);
begin
  DefaultInterface.Set_down(pVal);
end;

function TWMPRegionalButton.Get_index: Integer;
begin
    Result := DefaultInterface.index;
end;

function TWMPRegionalButton.Get_tabStop: WordBool;
begin
    Result := DefaultInterface.tabStop;
end;

procedure TWMPRegionalButton.Set_tabStop(pVal: WordBool);
begin
  DefaultInterface.Set_tabStop(pVal);
end;

function TWMPRegionalButton.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPRegionalButton.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPRegionalButton.Get_accName: WideString;
begin
    Result := DefaultInterface.accName;
end;

procedure TWMPRegionalButton.Set_accName(const pszName: WideString);
  { Warning: The property accName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accName := pszName;
end;

function TWMPRegionalButton.Get_accDescription: WideString;
begin
    Result := DefaultInterface.accDescription;
end;

procedure TWMPRegionalButton.Set_accDescription(const pszDescription: WideString);
  { Warning: The property accDescription has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accDescription := pszDescription;
end;

function TWMPRegionalButton.Get_accKeyboardShortcut: WideString;
begin
    Result := DefaultInterface.accKeyboardShortcut;
end;

procedure TWMPRegionalButton.Set_accKeyboardShortcut(const pszShortcut: WideString);
  { Warning: The property accKeyboardShortcut has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accKeyboardShortcut := pszShortcut;
end;

procedure TWMPRegionalButton.Click;
begin
  DefaultInterface.Click;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPRegionalButtonProperties.Create(AServer: TWMPRegionalButton);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPRegionalButtonProperties.GetDefaultInterface: IWMPRegionalButton;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPRegionalButtonProperties.Get_upToolTip: WideString;
begin
    Result := DefaultInterface.upToolTip;
end;

procedure TWMPRegionalButtonProperties.Set_upToolTip(const pVal: WideString);
  { Warning: The property upToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.upToolTip := pVal;
end;

function TWMPRegionalButtonProperties.Get_downToolTip: WideString;
begin
    Result := DefaultInterface.downToolTip;
end;

procedure TWMPRegionalButtonProperties.Set_downToolTip(const pVal: WideString);
  { Warning: The property downToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downToolTip := pVal;
end;

function TWMPRegionalButtonProperties.Get_mappingColor: WideString;
begin
    Result := DefaultInterface.mappingColor;
end;

procedure TWMPRegionalButtonProperties.Set_mappingColor(const pVal: WideString);
  { Warning: The property mappingColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.mappingColor := pVal;
end;

function TWMPRegionalButtonProperties.Get_enabled: WordBool;
begin
    Result := DefaultInterface.enabled;
end;

procedure TWMPRegionalButtonProperties.Set_enabled(pVal: WordBool);
begin
  DefaultInterface.Set_enabled(pVal);
end;

function TWMPRegionalButtonProperties.Get_sticky: WordBool;
begin
    Result := DefaultInterface.sticky;
end;

procedure TWMPRegionalButtonProperties.Set_sticky(pVal: WordBool);
begin
  DefaultInterface.Set_sticky(pVal);
end;

function TWMPRegionalButtonProperties.Get_down: WordBool;
begin
    Result := DefaultInterface.down;
end;

procedure TWMPRegionalButtonProperties.Set_down(pVal: WordBool);
begin
  DefaultInterface.Set_down(pVal);
end;

function TWMPRegionalButtonProperties.Get_index: Integer;
begin
    Result := DefaultInterface.index;
end;

function TWMPRegionalButtonProperties.Get_tabStop: WordBool;
begin
    Result := DefaultInterface.tabStop;
end;

procedure TWMPRegionalButtonProperties.Set_tabStop(pVal: WordBool);
begin
  DefaultInterface.Set_tabStop(pVal);
end;

function TWMPRegionalButtonProperties.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPRegionalButtonProperties.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPRegionalButtonProperties.Get_accName: WideString;
begin
    Result := DefaultInterface.accName;
end;

procedure TWMPRegionalButtonProperties.Set_accName(const pszName: WideString);
  { Warning: The property accName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accName := pszName;
end;

function TWMPRegionalButtonProperties.Get_accDescription: WideString;
begin
    Result := DefaultInterface.accDescription;
end;

procedure TWMPRegionalButtonProperties.Set_accDescription(const pszDescription: WideString);
  { Warning: The property accDescription has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accDescription := pszDescription;
end;

function TWMPRegionalButtonProperties.Get_accKeyboardShortcut: WideString;
begin
    Result := DefaultInterface.accKeyboardShortcut;
end;

procedure TWMPRegionalButtonProperties.Set_accKeyboardShortcut(const pszShortcut: WideString);
  { Warning: The property accKeyboardShortcut has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accKeyboardShortcut := pszShortcut;
end;

{$ENDIF}

class function CoWMPCustomSliderCtrl.Create: IWMPCustomSlider;
begin
  Result := CreateComObject(CLASS_WMPCustomSliderCtrl) as IWMPCustomSlider;
end;

class function CoWMPCustomSliderCtrl.CreateRemote(const MachineName: string): IWMPCustomSlider;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPCustomSliderCtrl) as IWMPCustomSlider;
end;

procedure TWMPCustomSliderCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{95F45AA3-ED0A-11D2-BA67-0000F80855E6}';
    IntfIID:   '{95F45AA2-ED0A-11D2-BA67-0000F80855E6}';
    EventIID:  '{95F45AA4-ED0A-11D2-BA67-0000F80855E6}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPCustomSliderCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IWMPCustomSlider;
  end;
end;

procedure TWMPCustomSliderCtrl.ConnectTo(svrIntf: IWMPCustomSlider);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TWMPCustomSliderCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TWMPCustomSliderCtrl.GetDefaultInterface: IWMPCustomSlider;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPCustomSliderCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPCustomSliderCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPCustomSliderCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPCustomSliderCtrl.GetServerProperties: TWMPCustomSliderCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWMPCustomSliderCtrl.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    5020: if Assigned(FOnondragbegin) then
         FOnondragbegin(Self);
    5021: if Assigned(FOnondragend) then
         FOnondragend(Self);
    5022: if Assigned(FOnonpositionchange) then
         FOnonpositionchange(Self);
  end; {case DispID}
end;

function TWMPCustomSliderCtrl.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPCustomSliderCtrl.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPCustomSliderCtrl.Get_min: Single;
begin
    Result := DefaultInterface.min;
end;

procedure TWMPCustomSliderCtrl.Set_min(pVal: Single);
begin
  DefaultInterface.Set_min(pVal);
end;

function TWMPCustomSliderCtrl.Get_max: Single;
begin
    Result := DefaultInterface.max;
end;

procedure TWMPCustomSliderCtrl.Set_max(pVal: Single);
begin
  DefaultInterface.Set_max(pVal);
end;

function TWMPCustomSliderCtrl.Get_value: Single;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPCustomSliderCtrl.Set_value(pVal: Single);
begin
  DefaultInterface.Set_value(pVal);
end;

function TWMPCustomSliderCtrl.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

procedure TWMPCustomSliderCtrl.Set_toolTip(const pVal: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := pVal;
end;

function TWMPCustomSliderCtrl.Get_positionImage: WideString;
begin
    Result := DefaultInterface.positionImage;
end;

procedure TWMPCustomSliderCtrl.Set_positionImage(const pVal: WideString);
  { Warning: The property positionImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.positionImage := pVal;
end;

function TWMPCustomSliderCtrl.Get_image: WideString;
begin
    Result := DefaultInterface.image;
end;

procedure TWMPCustomSliderCtrl.Set_image(const pVal: WideString);
  { Warning: The property image has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.image := pVal;
end;

function TWMPCustomSliderCtrl.Get_hoverImage: WideString;
begin
    Result := DefaultInterface.hoverImage;
end;

procedure TWMPCustomSliderCtrl.Set_hoverImage(const pVal: WideString);
  { Warning: The property hoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverImage := pVal;
end;

function TWMPCustomSliderCtrl.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPCustomSliderCtrl.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPCustomSliderCtrl.Get_downImage: WideString;
begin
    Result := DefaultInterface.downImage;
end;

procedure TWMPCustomSliderCtrl.Set_downImage(const pVal: WideString);
  { Warning: The property downImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downImage := pVal;
end;

function TWMPCustomSliderCtrl.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPCustomSliderCtrl.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPCustomSliderCtrlProperties.Create(AServer: TWMPCustomSliderCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPCustomSliderCtrlProperties.GetDefaultInterface: IWMPCustomSlider;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPCustomSliderCtrlProperties.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPCustomSliderCtrlProperties.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPCustomSliderCtrlProperties.Get_min: Single;
begin
    Result := DefaultInterface.min;
end;

procedure TWMPCustomSliderCtrlProperties.Set_min(pVal: Single);
begin
  DefaultInterface.Set_min(pVal);
end;

function TWMPCustomSliderCtrlProperties.Get_max: Single;
begin
    Result := DefaultInterface.max;
end;

procedure TWMPCustomSliderCtrlProperties.Set_max(pVal: Single);
begin
  DefaultInterface.Set_max(pVal);
end;

function TWMPCustomSliderCtrlProperties.Get_value: Single;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPCustomSliderCtrlProperties.Set_value(pVal: Single);
begin
  DefaultInterface.Set_value(pVal);
end;

function TWMPCustomSliderCtrlProperties.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

procedure TWMPCustomSliderCtrlProperties.Set_toolTip(const pVal: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := pVal;
end;

function TWMPCustomSliderCtrlProperties.Get_positionImage: WideString;
begin
    Result := DefaultInterface.positionImage;
end;

procedure TWMPCustomSliderCtrlProperties.Set_positionImage(const pVal: WideString);
  { Warning: The property positionImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.positionImage := pVal;
end;

function TWMPCustomSliderCtrlProperties.Get_image: WideString;
begin
    Result := DefaultInterface.image;
end;

procedure TWMPCustomSliderCtrlProperties.Set_image(const pVal: WideString);
  { Warning: The property image has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.image := pVal;
end;

function TWMPCustomSliderCtrlProperties.Get_hoverImage: WideString;
begin
    Result := DefaultInterface.hoverImage;
end;

procedure TWMPCustomSliderCtrlProperties.Set_hoverImage(const pVal: WideString);
  { Warning: The property hoverImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverImage := pVal;
end;

function TWMPCustomSliderCtrlProperties.Get_disabledImage: WideString;
begin
    Result := DefaultInterface.disabledImage;
end;

procedure TWMPCustomSliderCtrlProperties.Set_disabledImage(const pVal: WideString);
  { Warning: The property disabledImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledImage := pVal;
end;

function TWMPCustomSliderCtrlProperties.Get_downImage: WideString;
begin
    Result := DefaultInterface.downImage;
end;

procedure TWMPCustomSliderCtrlProperties.Set_downImage(const pVal: WideString);
  { Warning: The property downImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.downImage := pVal;
end;

function TWMPCustomSliderCtrlProperties.Get_transparencyColor: WideString;
begin
    Result := DefaultInterface.transparencyColor;
end;

procedure TWMPCustomSliderCtrlProperties.Set_transparencyColor(const pVal: WideString);
  { Warning: The property transparencyColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.transparencyColor := pVal;
end;

{$ENDIF}

class function CoWMPTextCtrl.Create: IWMPTextCtrl;
begin
  Result := CreateComObject(CLASS_WMPTextCtrl) as IWMPTextCtrl;
end;

class function CoWMPTextCtrl.CreateRemote(const MachineName: string): IWMPTextCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPTextCtrl) as IWMPTextCtrl;
end;

procedure TWMPTextCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DDDA102E-0E17-11D3-A2E2-00C04F79F88E}';
    IntfIID:   '{237DAC8E-0E32-11D3-A2E2-00C04F79F88E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPTextCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPTextCtrl;
  end;
end;

procedure TWMPTextCtrl.ConnectTo(svrIntf: IWMPTextCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPTextCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPTextCtrl.GetDefaultInterface: IWMPTextCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPTextCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPTextCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPTextCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPTextCtrl.GetServerProperties: TWMPTextCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPTextCtrl.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPTextCtrl.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPTextCtrl.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPTextCtrl.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPTextCtrl.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPTextCtrl.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPTextCtrl.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPTextCtrl.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPTextCtrl.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPTextCtrl.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPTextCtrl.Get_hoverBackgroundColor: WideString;
begin
    Result := DefaultInterface.hoverBackgroundColor;
end;

procedure TWMPTextCtrl.Set_hoverBackgroundColor(const pVal: WideString);
  { Warning: The property hoverBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverBackgroundColor := pVal;
end;

function TWMPTextCtrl.Get_hoverForegroundColor: WideString;
begin
    Result := DefaultInterface.hoverForegroundColor;
end;

procedure TWMPTextCtrl.Set_hoverForegroundColor(const pVal: WideString);
  { Warning: The property hoverForegroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverForegroundColor := pVal;
end;

function TWMPTextCtrl.Get_hoverFontStyle: WideString;
begin
    Result := DefaultInterface.hoverFontStyle;
end;

procedure TWMPTextCtrl.Set_hoverFontStyle(const pVal: WideString);
  { Warning: The property hoverFontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverFontStyle := pVal;
end;

function TWMPTextCtrl.Get_value: WideString;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPTextCtrl.Set_value(const pVal: WideString);
  { Warning: The property value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.value := pVal;
end;

function TWMPTextCtrl.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

procedure TWMPTextCtrl.Set_toolTip(const pVal: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := pVal;
end;

function TWMPTextCtrl.Get_disabledFontStyle: WideString;
begin
    Result := DefaultInterface.disabledFontStyle;
end;

procedure TWMPTextCtrl.Set_disabledFontStyle(const pVal: WideString);
  { Warning: The property disabledFontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledFontStyle := pVal;
end;

function TWMPTextCtrl.Get_disabledForegroundColor: WideString;
begin
    Result := DefaultInterface.disabledForegroundColor;
end;

procedure TWMPTextCtrl.Set_disabledForegroundColor(const pVal: WideString);
  { Warning: The property disabledForegroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledForegroundColor := pVal;
end;

function TWMPTextCtrl.Get_disabledBackgroundColor: WideString;
begin
    Result := DefaultInterface.disabledBackgroundColor;
end;

procedure TWMPTextCtrl.Set_disabledBackgroundColor(const pVal: WideString);
  { Warning: The property disabledBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledBackgroundColor := pVal;
end;

function TWMPTextCtrl.Get_fontSmoothing: WordBool;
begin
    Result := DefaultInterface.fontSmoothing;
end;

procedure TWMPTextCtrl.Set_fontSmoothing(pVal: WordBool);
begin
  DefaultInterface.Set_fontSmoothing(pVal);
end;

function TWMPTextCtrl.Get_justification: WideString;
begin
    Result := DefaultInterface.justification;
end;

procedure TWMPTextCtrl.Set_justification(const pVal: WideString);
  { Warning: The property justification has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.justification := pVal;
end;

function TWMPTextCtrl.Get_wordWrap: WordBool;
begin
    Result := DefaultInterface.wordWrap;
end;

procedure TWMPTextCtrl.Set_wordWrap(pVal: WordBool);
begin
  DefaultInterface.Set_wordWrap(pVal);
end;

function TWMPTextCtrl.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPTextCtrl.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPTextCtrl.Get_scrolling: WordBool;
begin
    Result := DefaultInterface.scrolling;
end;

procedure TWMPTextCtrl.Set_scrolling(pVal: WordBool);
begin
  DefaultInterface.Set_scrolling(pVal);
end;

function TWMPTextCtrl.Get_scrollingDirection: WideString;
begin
    Result := DefaultInterface.scrollingDirection;
end;

procedure TWMPTextCtrl.Set_scrollingDirection(const pVal: WideString);
  { Warning: The property scrollingDirection has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.scrollingDirection := pVal;
end;

function TWMPTextCtrl.Get_scrollingDelay: SYSINT;
begin
    Result := DefaultInterface.scrollingDelay;
end;

procedure TWMPTextCtrl.Set_scrollingDelay(pVal: SYSINT);
begin
  DefaultInterface.Set_scrollingDelay(pVal);
end;

function TWMPTextCtrl.Get_scrollingAmount: SYSINT;
begin
    Result := DefaultInterface.scrollingAmount;
end;

procedure TWMPTextCtrl.Set_scrollingAmount(pVal: SYSINT);
begin
  DefaultInterface.Set_scrollingAmount(pVal);
end;

function TWMPTextCtrl.Get_textWidth: SYSINT;
begin
    Result := DefaultInterface.textWidth;
end;

function TWMPTextCtrl.Get_onGlass: WordBool;
begin
    Result := DefaultInterface.onGlass;
end;

procedure TWMPTextCtrl.Set_onGlass(pVal: WordBool);
begin
  DefaultInterface.Set_onGlass(pVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPTextCtrlProperties.Create(AServer: TWMPTextCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPTextCtrlProperties.GetDefaultInterface: IWMPTextCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPTextCtrlProperties.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPTextCtrlProperties.Set_backgroundColor(const pVal: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pVal;
end;

function TWMPTextCtrlProperties.Get_fontFace: WideString;
begin
    Result := DefaultInterface.fontFace;
end;

procedure TWMPTextCtrlProperties.Set_fontFace(const pVal: WideString);
  { Warning: The property fontFace has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontFace := pVal;
end;

function TWMPTextCtrlProperties.Get_fontStyle: WideString;
begin
    Result := DefaultInterface.fontStyle;
end;

procedure TWMPTextCtrlProperties.Set_fontStyle(const pVal: WideString);
  { Warning: The property fontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.fontStyle := pVal;
end;

function TWMPTextCtrlProperties.Get_fontSize: Integer;
begin
    Result := DefaultInterface.fontSize;
end;

procedure TWMPTextCtrlProperties.Set_fontSize(pVal: Integer);
begin
  DefaultInterface.Set_fontSize(pVal);
end;

function TWMPTextCtrlProperties.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPTextCtrlProperties.Set_foregroundColor(const pVal: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pVal;
end;

function TWMPTextCtrlProperties.Get_hoverBackgroundColor: WideString;
begin
    Result := DefaultInterface.hoverBackgroundColor;
end;

procedure TWMPTextCtrlProperties.Set_hoverBackgroundColor(const pVal: WideString);
  { Warning: The property hoverBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverBackgroundColor := pVal;
end;

function TWMPTextCtrlProperties.Get_hoverForegroundColor: WideString;
begin
    Result := DefaultInterface.hoverForegroundColor;
end;

procedure TWMPTextCtrlProperties.Set_hoverForegroundColor(const pVal: WideString);
  { Warning: The property hoverForegroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverForegroundColor := pVal;
end;

function TWMPTextCtrlProperties.Get_hoverFontStyle: WideString;
begin
    Result := DefaultInterface.hoverFontStyle;
end;

procedure TWMPTextCtrlProperties.Set_hoverFontStyle(const pVal: WideString);
  { Warning: The property hoverFontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.hoverFontStyle := pVal;
end;

function TWMPTextCtrlProperties.Get_value: WideString;
begin
    Result := DefaultInterface.value;
end;

procedure TWMPTextCtrlProperties.Set_value(const pVal: WideString);
  { Warning: The property value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.value := pVal;
end;

function TWMPTextCtrlProperties.Get_toolTip: WideString;
begin
    Result := DefaultInterface.toolTip;
end;

procedure TWMPTextCtrlProperties.Set_toolTip(const pVal: WideString);
  { Warning: The property toolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.toolTip := pVal;
end;

function TWMPTextCtrlProperties.Get_disabledFontStyle: WideString;
begin
    Result := DefaultInterface.disabledFontStyle;
end;

procedure TWMPTextCtrlProperties.Set_disabledFontStyle(const pVal: WideString);
  { Warning: The property disabledFontStyle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledFontStyle := pVal;
end;

function TWMPTextCtrlProperties.Get_disabledForegroundColor: WideString;
begin
    Result := DefaultInterface.disabledForegroundColor;
end;

procedure TWMPTextCtrlProperties.Set_disabledForegroundColor(const pVal: WideString);
  { Warning: The property disabledForegroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledForegroundColor := pVal;
end;

function TWMPTextCtrlProperties.Get_disabledBackgroundColor: WideString;
begin
    Result := DefaultInterface.disabledBackgroundColor;
end;

procedure TWMPTextCtrlProperties.Set_disabledBackgroundColor(const pVal: WideString);
  { Warning: The property disabledBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledBackgroundColor := pVal;
end;

function TWMPTextCtrlProperties.Get_fontSmoothing: WordBool;
begin
    Result := DefaultInterface.fontSmoothing;
end;

procedure TWMPTextCtrlProperties.Set_fontSmoothing(pVal: WordBool);
begin
  DefaultInterface.Set_fontSmoothing(pVal);
end;

function TWMPTextCtrlProperties.Get_justification: WideString;
begin
    Result := DefaultInterface.justification;
end;

procedure TWMPTextCtrlProperties.Set_justification(const pVal: WideString);
  { Warning: The property justification has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.justification := pVal;
end;

function TWMPTextCtrlProperties.Get_wordWrap: WordBool;
begin
    Result := DefaultInterface.wordWrap;
end;

procedure TWMPTextCtrlProperties.Set_wordWrap(pVal: WordBool);
begin
  DefaultInterface.Set_wordWrap(pVal);
end;

function TWMPTextCtrlProperties.Get_cursor: WideString;
begin
    Result := DefaultInterface.cursor;
end;

procedure TWMPTextCtrlProperties.Set_cursor(const pVal: WideString);
  { Warning: The property cursor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.cursor := pVal;
end;

function TWMPTextCtrlProperties.Get_scrolling: WordBool;
begin
    Result := DefaultInterface.scrolling;
end;

procedure TWMPTextCtrlProperties.Set_scrolling(pVal: WordBool);
begin
  DefaultInterface.Set_scrolling(pVal);
end;

function TWMPTextCtrlProperties.Get_scrollingDirection: WideString;
begin
    Result := DefaultInterface.scrollingDirection;
end;

procedure TWMPTextCtrlProperties.Set_scrollingDirection(const pVal: WideString);
  { Warning: The property scrollingDirection has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.scrollingDirection := pVal;
end;

function TWMPTextCtrlProperties.Get_scrollingDelay: SYSINT;
begin
    Result := DefaultInterface.scrollingDelay;
end;

procedure TWMPTextCtrlProperties.Set_scrollingDelay(pVal: SYSINT);
begin
  DefaultInterface.Set_scrollingDelay(pVal);
end;

function TWMPTextCtrlProperties.Get_scrollingAmount: SYSINT;
begin
    Result := DefaultInterface.scrollingAmount;
end;

procedure TWMPTextCtrlProperties.Set_scrollingAmount(pVal: SYSINT);
begin
  DefaultInterface.Set_scrollingAmount(pVal);
end;

function TWMPTextCtrlProperties.Get_textWidth: SYSINT;
begin
    Result := DefaultInterface.textWidth;
end;

function TWMPTextCtrlProperties.Get_onGlass: WordBool;
begin
    Result := DefaultInterface.onGlass;
end;

procedure TWMPTextCtrlProperties.Set_onGlass(pVal: WordBool);
begin
  DefaultInterface.Set_onGlass(pVal);
end;

{$ENDIF}

class function CoWMPPlaylistCtrl.Create: IWMPPlaylistCtrl;
begin
  Result := CreateComObject(CLASS_WMPPlaylistCtrl) as IWMPPlaylistCtrl;
end;

class function CoWMPPlaylistCtrl.CreateRemote(const MachineName: string): IWMPPlaylistCtrl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPPlaylistCtrl) as IWMPPlaylistCtrl;
end;

procedure TWMPPlaylistCtrl.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5F9CFD93-8CAD-11D3-9A7E-00C04F8EFB70}';
    IntfIID:   '{5F9CFD92-8CAD-11D3-9A7E-00C04F8EFB70}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPPlaylistCtrl.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWMPPlaylistCtrl;
  end;
end;

procedure TWMPPlaylistCtrl.ConnectTo(svrIntf: IWMPPlaylistCtrl);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWMPPlaylistCtrl.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWMPPlaylistCtrl.GetDefaultInterface: IWMPPlaylistCtrl;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPPlaylistCtrl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPPlaylistCtrlProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPPlaylistCtrl.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPPlaylistCtrl.GetServerProperties: TWMPPlaylistCtrlProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWMPPlaylistCtrl.Get_Playlist: IWMPPlaylist;
begin
    Result := DefaultInterface.Playlist;
end;

procedure TWMPPlaylistCtrl.Set_Playlist(const ppdispPlaylist: IWMPPlaylist);
begin
  DefaultInterface.Set_Playlist(ppdispPlaylist);
end;

function TWMPPlaylistCtrl.Get_columns: WideString;
begin
    Result := DefaultInterface.columns;
end;

procedure TWMPPlaylistCtrl.Set_columns(const pbstrColumns: WideString);
  { Warning: The property columns has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.columns := pbstrColumns;
end;

function TWMPPlaylistCtrl.Get_columnCount: Integer;
begin
    Result := DefaultInterface.columnCount;
end;

function TWMPPlaylistCtrl.Get_columnOrder: WideString;
begin
    Result := DefaultInterface.columnOrder;
end;

procedure TWMPPlaylistCtrl.Set_columnOrder(const pbstrColumnOrder: WideString);
  { Warning: The property columnOrder has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.columnOrder := pbstrColumnOrder;
end;

function TWMPPlaylistCtrl.Get_columnsVisible: WordBool;
begin
    Result := DefaultInterface.columnsVisible;
end;

procedure TWMPPlaylistCtrl.Set_columnsVisible(pVal: WordBool);
begin
  DefaultInterface.Set_columnsVisible(pVal);
end;

function TWMPPlaylistCtrl.Get_dropDownVisible: WordBool;
begin
    Result := DefaultInterface.dropDownVisible;
end;

procedure TWMPPlaylistCtrl.Set_dropDownVisible(pVal: WordBool);
begin
  DefaultInterface.Set_dropDownVisible(pVal);
end;

function TWMPPlaylistCtrl.Get_playlistItemsVisible: WordBool;
begin
    Result := DefaultInterface.playlistItemsVisible;
end;

procedure TWMPPlaylistCtrl.Set_playlistItemsVisible(pVal: WordBool);
begin
  DefaultInterface.Set_playlistItemsVisible(pVal);
end;

function TWMPPlaylistCtrl.Get_checkboxesVisible: WordBool;
begin
    Result := DefaultInterface.checkboxesVisible;
end;

procedure TWMPPlaylistCtrl.Set_checkboxesVisible(pVal: WordBool);
begin
  DefaultInterface.Set_checkboxesVisible(pVal);
end;

function TWMPPlaylistCtrl.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPPlaylistCtrl.Set_backgroundColor(const pbstrColor: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPPlaylistCtrl.Set_foregroundColor(const pbstrColor: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_disabledItemColor: WideString;
begin
    Result := DefaultInterface.disabledItemColor;
end;

procedure TWMPPlaylistCtrl.Set_disabledItemColor(const pbstrColor: WideString);
  { Warning: The property disabledItemColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledItemColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_itemPlayingColor: WideString;
begin
    Result := DefaultInterface.itemPlayingColor;
end;

procedure TWMPPlaylistCtrl.Set_itemPlayingColor(const pbstrColor: WideString);
  { Warning: The property itemPlayingColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemPlayingColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_itemPlayingBackgroundColor: WideString;
begin
    Result := DefaultInterface.itemPlayingBackgroundColor;
end;

procedure TWMPPlaylistCtrl.Set_itemPlayingBackgroundColor(const pbstrBackgroundColor: WideString);
  { Warning: The property itemPlayingBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemPlayingBackgroundColor := pbstrBackgroundColor;
end;

function TWMPPlaylistCtrl.Get_backgroundImage: WideString;
begin
    Result := DefaultInterface.backgroundImage;
end;

procedure TWMPPlaylistCtrl.Set_backgroundImage(const pbstrImage: WideString);
  { Warning: The property backgroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundImage := pbstrImage;
end;

function TWMPPlaylistCtrl.Get_allowItemEditing: WordBool;
begin
    Result := DefaultInterface.allowItemEditing;
end;

procedure TWMPPlaylistCtrl.Set_allowItemEditing(pVal: WordBool);
begin
  DefaultInterface.Set_allowItemEditing(pVal);
end;

function TWMPPlaylistCtrl.Get_allowColumnSorting: WordBool;
begin
    Result := DefaultInterface.allowColumnSorting;
end;

procedure TWMPPlaylistCtrl.Set_allowColumnSorting(pVal: WordBool);
begin
  DefaultInterface.Set_allowColumnSorting(pVal);
end;

function TWMPPlaylistCtrl.Get_dropDownList: WideString;
begin
    Result := DefaultInterface.dropDownList;
end;

procedure TWMPPlaylistCtrl.Set_dropDownList(const pbstrList: WideString);
  { Warning: The property dropDownList has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownList := pbstrList;
end;

function TWMPPlaylistCtrl.Get_dropDownToolTip: WideString;
begin
    Result := DefaultInterface.dropDownToolTip;
end;

procedure TWMPPlaylistCtrl.Set_dropDownToolTip(const pbstrToolTip: WideString);
  { Warning: The property dropDownToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownToolTip := pbstrToolTip;
end;

function TWMPPlaylistCtrl.Get_copying: WordBool;
begin
    Result := DefaultInterface.copying;
end;

procedure TWMPPlaylistCtrl.Set_copying(pVal: WordBool);
begin
  DefaultInterface.Set_copying(pVal);
end;

function TWMPPlaylistCtrl.Get_itemErrorColor: WideString;
begin
    Result := DefaultInterface.itemErrorColor;
end;

procedure TWMPPlaylistCtrl.Set_itemErrorColor(const pbstrColor: WideString);
  { Warning: The property itemErrorColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemErrorColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_itemCount: Integer;
begin
    Result := DefaultInterface.itemCount;
end;

function TWMPPlaylistCtrl.Get_itemMedia(nIndex: Integer): IWMPMedia;
begin
    Result := DefaultInterface.itemMedia[nIndex];
end;

function TWMPPlaylistCtrl.Get_itemPlaylist(nIndex: Integer): IWMPPlaylist;
begin
    Result := DefaultInterface.itemPlaylist[nIndex];
end;

function TWMPPlaylistCtrl.Get_leftStatus: WideString;
begin
    Result := DefaultInterface.leftStatus;
end;

procedure TWMPPlaylistCtrl.Set_leftStatus(const pbstrStatus: WideString);
  { Warning: The property leftStatus has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.leftStatus := pbstrStatus;
end;

function TWMPPlaylistCtrl.Get_rightStatus: WideString;
begin
    Result := DefaultInterface.rightStatus;
end;

procedure TWMPPlaylistCtrl.Set_rightStatus(const pbstrStatus: WideString);
  { Warning: The property rightStatus has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.rightStatus := pbstrStatus;
end;

function TWMPPlaylistCtrl.Get_editButtonVisible: WordBool;
begin
    Result := DefaultInterface.editButtonVisible;
end;

procedure TWMPPlaylistCtrl.Set_editButtonVisible(pVal: WordBool);
begin
  DefaultInterface.Set_editButtonVisible(pVal);
end;

function TWMPPlaylistCtrl.Get_dropDownImage: WideString;
begin
    Result := DefaultInterface.dropDownImage;
end;

procedure TWMPPlaylistCtrl.Set_dropDownImage(const pbstrImage: WideString);
  { Warning: The property dropDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownImage := pbstrImage;
end;

function TWMPPlaylistCtrl.Get_dropDownBackgroundImage: WideString;
begin
    Result := DefaultInterface.dropDownBackgroundImage;
end;

procedure TWMPPlaylistCtrl.Set_dropDownBackgroundImage(const pbstrImage: WideString);
  { Warning: The property dropDownBackgroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownBackgroundImage := pbstrImage;
end;

function TWMPPlaylistCtrl.Get_hueShift: Single;
begin
    Result := DefaultInterface.hueShift;
end;

procedure TWMPPlaylistCtrl.Set_hueShift(pVal: Single);
begin
  DefaultInterface.Set_hueShift(pVal);
end;

function TWMPPlaylistCtrl.Get_saturation: Single;
begin
    Result := DefaultInterface.saturation;
end;

procedure TWMPPlaylistCtrl.Set_saturation(pVal: Single);
begin
  DefaultInterface.Set_saturation(pVal);
end;

function TWMPPlaylistCtrl.Get_statusColor: WideString;
begin
    Result := DefaultInterface.statusColor;
end;

procedure TWMPPlaylistCtrl.Set_statusColor(const pbstrColor: WideString);
  { Warning: The property statusColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.statusColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_toolbarVisible: WordBool;
begin
    Result := DefaultInterface.toolbarVisible;
end;

procedure TWMPPlaylistCtrl.Set_toolbarVisible(pVal: WordBool);
begin
  DefaultInterface.Set_toolbarVisible(pVal);
end;

function TWMPPlaylistCtrl.Get_itemSelectedColor: WideString;
begin
    Result := DefaultInterface.itemSelectedColor;
end;

procedure TWMPPlaylistCtrl.Set_itemSelectedColor(const pbstrColor: WideString);
  { Warning: The property itemSelectedColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_itemSelectedFocusLostColor: WideString;
begin
    Result := DefaultInterface.itemSelectedFocusLostColor;
end;

procedure TWMPPlaylistCtrl.Set_itemSelectedFocusLostColor(const pbstrFocusLostColor: WideString);
  { Warning: The property itemSelectedFocusLostColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedFocusLostColor := pbstrFocusLostColor;
end;

function TWMPPlaylistCtrl.Get_itemSelectedBackgroundColor: WideString;
begin
    Result := DefaultInterface.itemSelectedBackgroundColor;
end;

procedure TWMPPlaylistCtrl.Set_itemSelectedBackgroundColor(const pbstrColor: WideString);
  { Warning: The property itemSelectedBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedBackgroundColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_itemSelectedBackgroundFocusLostColor: WideString;
begin
    Result := DefaultInterface.itemSelectedBackgroundFocusLostColor;
end;

procedure TWMPPlaylistCtrl.Set_itemSelectedBackgroundFocusLostColor(const pbstrFocusLostColor: WideString);
  { Warning: The property itemSelectedBackgroundFocusLostColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedBackgroundFocusLostColor := pbstrFocusLostColor;
end;

function TWMPPlaylistCtrl.Get_backgroundSplitColor: WideString;
begin
    Result := DefaultInterface.backgroundSplitColor;
end;

procedure TWMPPlaylistCtrl.Set_backgroundSplitColor(const pbstrColor: WideString);
  { Warning: The property backgroundSplitColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundSplitColor := pbstrColor;
end;

function TWMPPlaylistCtrl.Get_statusTextColor: WideString;
begin
    Result := DefaultInterface.statusTextColor;
end;

procedure TWMPPlaylistCtrl.Set_statusTextColor(const pbstrColor: WideString);
  { Warning: The property statusTextColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.statusTextColor := pbstrColor;
end;

procedure TWMPPlaylistCtrl.copy;
begin
  DefaultInterface.copy;
end;

procedure TWMPPlaylistCtrl.abortCopy;
begin
  DefaultInterface.abortCopy;
end;

procedure TWMPPlaylistCtrl.deleteSelected;
begin
  DefaultInterface.deleteSelected;
end;

procedure TWMPPlaylistCtrl.deleteSelectedFromLibrary;
begin
  DefaultInterface.deleteSelectedFromLibrary;
end;

procedure TWMPPlaylistCtrl.moveSelectedUp;
begin
  DefaultInterface.moveSelectedUp;
end;

procedure TWMPPlaylistCtrl.moveSelectedDown;
begin
  DefaultInterface.moveSelectedDown;
end;

procedure TWMPPlaylistCtrl.addSelectedToPlaylist(const pdispPlaylist: IWMPPlaylist);
begin
  DefaultInterface.addSelectedToPlaylist(pdispPlaylist);
end;

function TWMPPlaylistCtrl.getNextSelectedItem(nStartIndex: Integer): Integer;
begin
  Result := DefaultInterface.getNextSelectedItem(nStartIndex);
end;

function TWMPPlaylistCtrl.getNextCheckedItem(nStartIndex: Integer): Integer;
begin
  Result := DefaultInterface.getNextCheckedItem(nStartIndex);
end;

procedure TWMPPlaylistCtrl.setSelectedState(nIndex: Integer; vbSelected: WordBool);
begin
  DefaultInterface.setSelectedState(nIndex, vbSelected);
end;

procedure TWMPPlaylistCtrl.setCheckedState(nIndex: Integer; vbChecked: WordBool);
begin
  DefaultInterface.setCheckedState(nIndex, vbChecked);
end;

procedure TWMPPlaylistCtrl.sortColumn(nIndex: Integer);
begin
  DefaultInterface.sortColumn(nIndex);
end;

procedure TWMPPlaylistCtrl.setColumnResizeMode(nIndex: Integer; const newMode: WideString);
begin
  DefaultInterface.setColumnResizeMode(nIndex, newMode);
end;

procedure TWMPPlaylistCtrl.setColumnWidth(nIndex: Integer; nWidth: Integer);
begin
  DefaultInterface.setColumnWidth(nIndex, nWidth);
end;

function TWMPPlaylistCtrl.getNextSelectedItem2(nStartIndex: Integer): Integer;
begin
  Result := DefaultInterface.getNextSelectedItem2(nStartIndex);
end;

function TWMPPlaylistCtrl.getNextCheckedItem2(nStartIndex: Integer): Integer;
begin
  Result := DefaultInterface.getNextCheckedItem2(nStartIndex);
end;

procedure TWMPPlaylistCtrl.setSelectedState2(nIndex: Integer; vbSelected: WordBool);
begin
  DefaultInterface.setSelectedState2(nIndex, vbSelected);
end;

procedure TWMPPlaylistCtrl.setCheckedState2(nIndex: Integer; vbChecked: WordBool);
begin
  DefaultInterface.setCheckedState2(nIndex, vbChecked);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPPlaylistCtrlProperties.Create(AServer: TWMPPlaylistCtrl);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPPlaylistCtrlProperties.GetDefaultInterface: IWMPPlaylistCtrl;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPPlaylistCtrlProperties.Get_Playlist: IWMPPlaylist;
begin
    Result := DefaultInterface.Playlist;
end;

procedure TWMPPlaylistCtrlProperties.Set_Playlist(const ppdispPlaylist: IWMPPlaylist);
begin
  DefaultInterface.Set_Playlist(ppdispPlaylist);
end;

function TWMPPlaylistCtrlProperties.Get_columns: WideString;
begin
    Result := DefaultInterface.columns;
end;

procedure TWMPPlaylistCtrlProperties.Set_columns(const pbstrColumns: WideString);
  { Warning: The property columns has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.columns := pbstrColumns;
end;

function TWMPPlaylistCtrlProperties.Get_columnCount: Integer;
begin
    Result := DefaultInterface.columnCount;
end;

function TWMPPlaylistCtrlProperties.Get_columnOrder: WideString;
begin
    Result := DefaultInterface.columnOrder;
end;

procedure TWMPPlaylistCtrlProperties.Set_columnOrder(const pbstrColumnOrder: WideString);
  { Warning: The property columnOrder has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.columnOrder := pbstrColumnOrder;
end;

function TWMPPlaylistCtrlProperties.Get_columnsVisible: WordBool;
begin
    Result := DefaultInterface.columnsVisible;
end;

procedure TWMPPlaylistCtrlProperties.Set_columnsVisible(pVal: WordBool);
begin
  DefaultInterface.Set_columnsVisible(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_dropDownVisible: WordBool;
begin
    Result := DefaultInterface.dropDownVisible;
end;

procedure TWMPPlaylistCtrlProperties.Set_dropDownVisible(pVal: WordBool);
begin
  DefaultInterface.Set_dropDownVisible(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_playlistItemsVisible: WordBool;
begin
    Result := DefaultInterface.playlistItemsVisible;
end;

procedure TWMPPlaylistCtrlProperties.Set_playlistItemsVisible(pVal: WordBool);
begin
  DefaultInterface.Set_playlistItemsVisible(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_checkboxesVisible: WordBool;
begin
    Result := DefaultInterface.checkboxesVisible;
end;

procedure TWMPPlaylistCtrlProperties.Set_checkboxesVisible(pVal: WordBool);
begin
  DefaultInterface.Set_checkboxesVisible(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_backgroundColor: WideString;
begin
    Result := DefaultInterface.backgroundColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_backgroundColor(const pbstrColor: WideString);
  { Warning: The property backgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_foregroundColor: WideString;
begin
    Result := DefaultInterface.foregroundColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_foregroundColor(const pbstrColor: WideString);
  { Warning: The property foregroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.foregroundColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_disabledItemColor: WideString;
begin
    Result := DefaultInterface.disabledItemColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_disabledItemColor(const pbstrColor: WideString);
  { Warning: The property disabledItemColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.disabledItemColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_itemPlayingColor: WideString;
begin
    Result := DefaultInterface.itemPlayingColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_itemPlayingColor(const pbstrColor: WideString);
  { Warning: The property itemPlayingColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemPlayingColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_itemPlayingBackgroundColor: WideString;
begin
    Result := DefaultInterface.itemPlayingBackgroundColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_itemPlayingBackgroundColor(const pbstrBackgroundColor: WideString);
  { Warning: The property itemPlayingBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemPlayingBackgroundColor := pbstrBackgroundColor;
end;

function TWMPPlaylistCtrlProperties.Get_backgroundImage: WideString;
begin
    Result := DefaultInterface.backgroundImage;
end;

procedure TWMPPlaylistCtrlProperties.Set_backgroundImage(const pbstrImage: WideString);
  { Warning: The property backgroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundImage := pbstrImage;
end;

function TWMPPlaylistCtrlProperties.Get_allowItemEditing: WordBool;
begin
    Result := DefaultInterface.allowItemEditing;
end;

procedure TWMPPlaylistCtrlProperties.Set_allowItemEditing(pVal: WordBool);
begin
  DefaultInterface.Set_allowItemEditing(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_allowColumnSorting: WordBool;
begin
    Result := DefaultInterface.allowColumnSorting;
end;

procedure TWMPPlaylistCtrlProperties.Set_allowColumnSorting(pVal: WordBool);
begin
  DefaultInterface.Set_allowColumnSorting(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_dropDownList: WideString;
begin
    Result := DefaultInterface.dropDownList;
end;

procedure TWMPPlaylistCtrlProperties.Set_dropDownList(const pbstrList: WideString);
  { Warning: The property dropDownList has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownList := pbstrList;
end;

function TWMPPlaylistCtrlProperties.Get_dropDownToolTip: WideString;
begin
    Result := DefaultInterface.dropDownToolTip;
end;

procedure TWMPPlaylistCtrlProperties.Set_dropDownToolTip(const pbstrToolTip: WideString);
  { Warning: The property dropDownToolTip has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownToolTip := pbstrToolTip;
end;

function TWMPPlaylistCtrlProperties.Get_copying: WordBool;
begin
    Result := DefaultInterface.copying;
end;

procedure TWMPPlaylistCtrlProperties.Set_copying(pVal: WordBool);
begin
  DefaultInterface.Set_copying(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_itemErrorColor: WideString;
begin
    Result := DefaultInterface.itemErrorColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_itemErrorColor(const pbstrColor: WideString);
  { Warning: The property itemErrorColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemErrorColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_itemCount: Integer;
begin
    Result := DefaultInterface.itemCount;
end;

function TWMPPlaylistCtrlProperties.Get_itemMedia(nIndex: Integer): IWMPMedia;
begin
    Result := DefaultInterface.itemMedia[nIndex];
end;

function TWMPPlaylistCtrlProperties.Get_itemPlaylist(nIndex: Integer): IWMPPlaylist;
begin
    Result := DefaultInterface.itemPlaylist[nIndex];
end;

function TWMPPlaylistCtrlProperties.Get_leftStatus: WideString;
begin
    Result := DefaultInterface.leftStatus;
end;

procedure TWMPPlaylistCtrlProperties.Set_leftStatus(const pbstrStatus: WideString);
  { Warning: The property leftStatus has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.leftStatus := pbstrStatus;
end;

function TWMPPlaylistCtrlProperties.Get_rightStatus: WideString;
begin
    Result := DefaultInterface.rightStatus;
end;

procedure TWMPPlaylistCtrlProperties.Set_rightStatus(const pbstrStatus: WideString);
  { Warning: The property rightStatus has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.rightStatus := pbstrStatus;
end;

function TWMPPlaylistCtrlProperties.Get_editButtonVisible: WordBool;
begin
    Result := DefaultInterface.editButtonVisible;
end;

procedure TWMPPlaylistCtrlProperties.Set_editButtonVisible(pVal: WordBool);
begin
  DefaultInterface.Set_editButtonVisible(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_dropDownImage: WideString;
begin
    Result := DefaultInterface.dropDownImage;
end;

procedure TWMPPlaylistCtrlProperties.Set_dropDownImage(const pbstrImage: WideString);
  { Warning: The property dropDownImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownImage := pbstrImage;
end;

function TWMPPlaylistCtrlProperties.Get_dropDownBackgroundImage: WideString;
begin
    Result := DefaultInterface.dropDownBackgroundImage;
end;

procedure TWMPPlaylistCtrlProperties.Set_dropDownBackgroundImage(const pbstrImage: WideString);
  { Warning: The property dropDownBackgroundImage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.dropDownBackgroundImage := pbstrImage;
end;

function TWMPPlaylistCtrlProperties.Get_hueShift: Single;
begin
    Result := DefaultInterface.hueShift;
end;

procedure TWMPPlaylistCtrlProperties.Set_hueShift(pVal: Single);
begin
  DefaultInterface.Set_hueShift(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_saturation: Single;
begin
    Result := DefaultInterface.saturation;
end;

procedure TWMPPlaylistCtrlProperties.Set_saturation(pVal: Single);
begin
  DefaultInterface.Set_saturation(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_statusColor: WideString;
begin
    Result := DefaultInterface.statusColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_statusColor(const pbstrColor: WideString);
  { Warning: The property statusColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.statusColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_toolbarVisible: WordBool;
begin
    Result := DefaultInterface.toolbarVisible;
end;

procedure TWMPPlaylistCtrlProperties.Set_toolbarVisible(pVal: WordBool);
begin
  DefaultInterface.Set_toolbarVisible(pVal);
end;

function TWMPPlaylistCtrlProperties.Get_itemSelectedColor: WideString;
begin
    Result := DefaultInterface.itemSelectedColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_itemSelectedColor(const pbstrColor: WideString);
  { Warning: The property itemSelectedColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_itemSelectedFocusLostColor: WideString;
begin
    Result := DefaultInterface.itemSelectedFocusLostColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_itemSelectedFocusLostColor(const pbstrFocusLostColor: WideString);
  { Warning: The property itemSelectedFocusLostColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedFocusLostColor := pbstrFocusLostColor;
end;

function TWMPPlaylistCtrlProperties.Get_itemSelectedBackgroundColor: WideString;
begin
    Result := DefaultInterface.itemSelectedBackgroundColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_itemSelectedBackgroundColor(const pbstrColor: WideString);
  { Warning: The property itemSelectedBackgroundColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedBackgroundColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_itemSelectedBackgroundFocusLostColor: WideString;
begin
    Result := DefaultInterface.itemSelectedBackgroundFocusLostColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_itemSelectedBackgroundFocusLostColor(const pbstrFocusLostColor: WideString);
  { Warning: The property itemSelectedBackgroundFocusLostColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.itemSelectedBackgroundFocusLostColor := pbstrFocusLostColor;
end;

function TWMPPlaylistCtrlProperties.Get_backgroundSplitColor: WideString;
begin
    Result := DefaultInterface.backgroundSplitColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_backgroundSplitColor(const pbstrColor: WideString);
  { Warning: The property backgroundSplitColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.backgroundSplitColor := pbstrColor;
end;

function TWMPPlaylistCtrlProperties.Get_statusTextColor: WideString;
begin
    Result := DefaultInterface.statusTextColor;
end;

procedure TWMPPlaylistCtrlProperties.Set_statusTextColor(const pbstrColor: WideString);
  { Warning: The property statusTextColor has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.statusTextColor := pbstrColor;
end;

{$ENDIF}

class function CoWMPCore.Create: IWMPCore3;
begin
  Result := CreateComObject(CLASS_WMPCore) as IWMPCore3;
end;

class function CoWMPCore.CreateRemote(const MachineName: string): IWMPCore3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WMPCore) as IWMPCore3;
end;

procedure TWMPCore.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{09428D37-E0B9-11D2-B147-00C04F79FAA6}';
    IntfIID:   '{7587C667-628F-499F-88E7-6A6F4E888464}';
    EventIID:  '{D84CCA96-CCE2-11D2-9ECC-0000F8085981}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWMPCore.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IWMPCore3;
  end;
end;

procedure TWMPCore.ConnectTo(svrIntf: IWMPCore3);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TWMPCore.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TWMPCore.GetDefaultInterface: IWMPCore3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWMPCore.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWMPCoreProperties.Create(Self);
{$ENDIF}
end;

destructor TWMPCore.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWMPCore.GetServerProperties: TWMPCoreProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWMPCore.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    5001: if Assigned(FOnOpenStateChange) then
         FOnOpenStateChange(Self, Params[0] {Integer});
    5101: if Assigned(FOnPlayStateChange) then
         FOnPlayStateChange(Self, Params[0] {Integer});
    5102: if Assigned(FOnAudioLanguageChange) then
         FOnAudioLanguageChange(Self, Params[0] {Integer});
    5002: if Assigned(FOnStatusChange) then
         FOnStatusChange(Self);
    5301: if Assigned(FOnScriptCommand) then
         FOnScriptCommand(Self,
                          Params[0] {const WideString},
                          Params[1] {const WideString});
    5403: if Assigned(FOnNewStream) then
         FOnNewStream(Self);
    5401: if Assigned(FOnDisconnect) then
         FOnDisconnect(Self, Params[0] {Integer});
    5402: if Assigned(FOnBuffering) then
         FOnBuffering(Self, Params[0] {WordBool});
    5501: if Assigned(FOnError) then
         FOnError(Self);
    5601: if Assigned(FOnWarning) then
         FOnWarning(Self,
                    Params[0] {Integer},
                    Params[1] {Integer},
                    Params[2] {const WideString});
    5201: if Assigned(FOnEndOfStream) then
         FOnEndOfStream(Self, Params[0] {Integer});
    5202: if Assigned(FOnPositionChange) then
         FOnPositionChange(Self,
                           Params[0] {Double},
                           Params[1] {Double});
    5203: if Assigned(FOnMarkerHit) then
         FOnMarkerHit(Self, Params[0] {Integer});
    5204: if Assigned(FOnDurationUnitChange) then
         FOnDurationUnitChange(Self, Params[0] {Integer});
    5701: if Assigned(FOnCdromMediaChange) then
         FOnCdromMediaChange(Self, Params[0] {Integer});
    5801: if Assigned(FOnPlaylistChange) then
         FOnPlaylistChange(Self,
                           Params[0] {const IDispatch},
                           Params[1] {WMPPlaylistChangeEventType});
    5804: if Assigned(FOnCurrentPlaylistChange) then
         FOnCurrentPlaylistChange(Self, Params[0] {WMPPlaylistChangeEventType});
    5805: if Assigned(FOnCurrentPlaylistItemAvailable) then
         FOnCurrentPlaylistItemAvailable(Self, Params[0] {const WideString});
    5802: if Assigned(FOnMediaChange) then
         FOnMediaChange(Self, Params[0] {const IDispatch});
    5803: if Assigned(FOnCurrentMediaItemAvailable) then
         FOnCurrentMediaItemAvailable(Self, Params[0] {const WideString});
    5806: if Assigned(FOnCurrentItemChange) then
         FOnCurrentItemChange(Self, Params[0] {const IDispatch});
    5807: if Assigned(FOnMediaCollectionChange) then
         FOnMediaCollectionChange(Self);
    5808: if Assigned(FOnMediaCollectionAttributeStringAdded) then
         FOnMediaCollectionAttributeStringAdded(Self,
                                                Params[0] {const WideString},
                                                Params[1] {const WideString});
    5809: if Assigned(FOnMediaCollectionAttributeStringRemoved) then
         FOnMediaCollectionAttributeStringRemoved(Self,
                                                  Params[0] {const WideString},
                                                  Params[1] {const WideString});
    5820: if Assigned(FOnMediaCollectionAttributeStringChanged) then
         FOnMediaCollectionAttributeStringChanged(Self,
                                                  Params[0] {const WideString},
                                                  Params[1] {const WideString},
                                                  Params[2] {const WideString});
    5810: if Assigned(FOnPlaylistCollectionChange) then
         FOnPlaylistCollectionChange(Self);
    5811: if Assigned(FOnPlaylistCollectionPlaylistAdded) then
         FOnPlaylistCollectionPlaylistAdded(Self, Params[0] {const WideString});
    5812: if Assigned(FOnPlaylistCollectionPlaylistRemoved) then
         FOnPlaylistCollectionPlaylistRemoved(Self, Params[0] {const WideString});
    5818: if Assigned(FOnPlaylistCollectionPlaylistSetAsDeleted) then
         FOnPlaylistCollectionPlaylistSetAsDeleted(Self,
                                                   Params[0] {const WideString},
                                                   Params[1] {WordBool});
    5819: if Assigned(FOnModeChange) then
         FOnModeChange(Self,
                       Params[0] {const WideString},
                       Params[1] {WordBool});
    5821: if Assigned(FOnMediaError) then
         FOnMediaError(Self, Params[0] {const IDispatch});
    5823: if Assigned(FOnOpenPlaylistSwitch) then
         FOnOpenPlaylistSwitch(Self, Params[0] {const IDispatch});
    5822: if Assigned(FOnDomainChange) then
         FOnDomainChange(Self, Params[0] {const WideString});
    5824: if Assigned(FOnStringCollectionChange) then
         FOnStringCollectionChange(Self,
                                   Params[0] {const IDispatch},
                                   Params[1] {WMPStringCollectionChangeEventType},
                                   Params[2] {Integer});
    5825: if Assigned(FOnMediaCollectionMediaAdded) then
         FOnMediaCollectionMediaAdded(Self, Params[0] {const IDispatch});
    5826: if Assigned(FOnMediaCollectionMediaRemoved) then
         FOnMediaCollectionMediaRemoved(Self, Params[0] {const IDispatch});
  end; {case DispID}
end;

function TWMPCore.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TWMPCore.Set_URL(const pbstrURL: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pbstrURL;
end;

function TWMPCore.Get_openState: WMPOpenState;
begin
    Result := DefaultInterface.openState;
end;

function TWMPCore.Get_playState: WMPPlayState;
begin
    Result := DefaultInterface.playState;
end;

function TWMPCore.Get_controls: IWMPControls;
begin
    Result := DefaultInterface.controls;
end;

function TWMPCore.Get_settings: IWMPSettings;
begin
    Result := DefaultInterface.settings;
end;

function TWMPCore.Get_currentMedia: IWMPMedia;
begin
    Result := DefaultInterface.currentMedia;
end;

procedure TWMPCore.Set_currentMedia(const ppMedia: IWMPMedia);
begin
  DefaultInterface.Set_currentMedia(ppMedia);
end;

function TWMPCore.Get_mediaCollection: IWMPMediaCollection;
begin
    Result := DefaultInterface.mediaCollection;
end;

function TWMPCore.Get_playlistCollection: IWMPPlaylistCollection;
begin
    Result := DefaultInterface.playlistCollection;
end;

function TWMPCore.Get_versionInfo: WideString;
begin
    Result := DefaultInterface.versionInfo;
end;

function TWMPCore.Get_network: IWMPNetwork;
begin
    Result := DefaultInterface.network;
end;

function TWMPCore.Get_currentPlaylist: IWMPPlaylist;
begin
    Result := DefaultInterface.currentPlaylist;
end;

procedure TWMPCore.Set_currentPlaylist(const ppPL: IWMPPlaylist);
begin
  DefaultInterface.Set_currentPlaylist(ppPL);
end;

function TWMPCore.Get_cdromCollection: IWMPCdromCollection;
begin
    Result := DefaultInterface.cdromCollection;
end;

function TWMPCore.Get_closedCaption: IWMPClosedCaption;
begin
    Result := DefaultInterface.closedCaption;
end;

function TWMPCore.Get_isOnline: WordBool;
begin
    Result := DefaultInterface.isOnline;
end;

function TWMPCore.Get_Error: IWMPError;
begin
    Result := DefaultInterface.Error;
end;

function TWMPCore.Get_status: WideString;
begin
    Result := DefaultInterface.status;
end;

function TWMPCore.Get_dvd: IWMPDVD;
begin
    Result := DefaultInterface.dvd;
end;

procedure TWMPCore.close;
begin
  DefaultInterface.close;
end;

procedure TWMPCore.launchURL(const bstrURL: WideString);
begin
  DefaultInterface.launchURL(bstrURL);
end;

function TWMPCore.newPlaylist(const bstrName: WideString; const bstrURL: WideString): IWMPPlaylist;
begin
  Result := DefaultInterface.newPlaylist(bstrName, bstrURL);
end;

function TWMPCore.newMedia(const bstrURL: WideString): IWMPMedia;
begin
  Result := DefaultInterface.newMedia(bstrURL);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWMPCoreProperties.Create(AServer: TWMPCore);
begin
  inherited Create;
  FServer := AServer;
end;

function TWMPCoreProperties.GetDefaultInterface: IWMPCore3;
begin
  Result := FServer.DefaultInterface;
end;

function TWMPCoreProperties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TWMPCoreProperties.Set_URL(const pbstrURL: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := pbstrURL;
end;

function TWMPCoreProperties.Get_openState: WMPOpenState;
begin
    Result := DefaultInterface.openState;
end;

function TWMPCoreProperties.Get_playState: WMPPlayState;
begin
    Result := DefaultInterface.playState;
end;

function TWMPCoreProperties.Get_controls: IWMPControls;
begin
    Result := DefaultInterface.controls;
end;

function TWMPCoreProperties.Get_settings: IWMPSettings;
begin
    Result := DefaultInterface.settings;
end;

function TWMPCoreProperties.Get_currentMedia: IWMPMedia;
begin
    Result := DefaultInterface.currentMedia;
end;

procedure TWMPCoreProperties.Set_currentMedia(const ppMedia: IWMPMedia);
begin
  DefaultInterface.Set_currentMedia(ppMedia);
end;

function TWMPCoreProperties.Get_mediaCollection: IWMPMediaCollection;
begin
    Result := DefaultInterface.mediaCollection;
end;

function TWMPCoreProperties.Get_playlistCollection: IWMPPlaylistCollection;
begin
    Result := DefaultInterface.playlistCollection;
end;

function TWMPCoreProperties.Get_versionInfo: WideString;
begin
    Result := DefaultInterface.versionInfo;
end;

function TWMPCoreProperties.Get_network: IWMPNetwork;
begin
    Result := DefaultInterface.network;
end;

function TWMPCoreProperties.Get_currentPlaylist: IWMPPlaylist;
begin
    Result := DefaultInterface.currentPlaylist;
end;

procedure TWMPCoreProperties.Set_currentPlaylist(const ppPL: IWMPPlaylist);
begin
  DefaultInterface.Set_currentPlaylist(ppPL);
end;

function TWMPCoreProperties.Get_cdromCollection: IWMPCdromCollection;
begin
    Result := DefaultInterface.cdromCollection;
end;

function TWMPCoreProperties.Get_closedCaption: IWMPClosedCaption;
begin
    Result := DefaultInterface.closedCaption;
end;

function TWMPCoreProperties.Get_isOnline: WordBool;
begin
    Result := DefaultInterface.isOnline;
end;

function TWMPCoreProperties.Get_Error: IWMPError;
begin
    Result := DefaultInterface.Error;
end;

function TWMPCoreProperties.Get_status: WideString;
begin
    Result := DefaultInterface.status;
end;

function TWMPCoreProperties.Get_dvd: IWMPDVD;
begin
    Result := DefaultInterface.dvd;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TWindowsMediaPlayer]);
  RegisterComponents(dtlServerPage, [TWMPButtonCtrl, TWMPListBoxCtrl, TWMPSliderCtrl, TWMPVideoCtrl, 
    TWMPEffects, TWMPEqualizerSettingsCtrl, TWMPVideoSettingsCtrl, TWMPLibraryTreeCtrl, TWMPEditCtrl, 
    TWMPMenuCtrl, TWMPAutoMenuCtrl, TWMPRegionalButtonCtrl, TWMPRegionalButton, TWMPCustomSliderCtrl, 
    TWMPTextCtrl, TWMPPlaylistCtrl, TWMPCore]);
end;

end.
