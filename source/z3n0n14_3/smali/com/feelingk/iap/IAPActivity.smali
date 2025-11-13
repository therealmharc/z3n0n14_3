.class public Lcom/feelingk/iap/IAPActivity;
.super Landroid/app/Activity;
.source "IAPActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IAPActivity"

.field private static decryptPwd:Ljava/lang/String;

.field private static encryptPwd:Ljava/lang/String;

.field private static mCurTelecom:I


# instance fields
.field private USIM_Check:Ljava/lang/String;

.field public finalVerFlag:Z

.field private iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field public juminFlag:Z

.field private mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

.field private mErrorMessage:Ljava/lang/String;

.field private final mGUIMessageHandler:Landroid/os/Handler;

.field private mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

.field private mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

.field private mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

.field private mMsgItemInfo:Ljava/lang/String;

.field private mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

.field private mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

.field private mPurchaseBPInfo:Ljava/lang/String;

.field private mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

.field private mPurchaseID:Ljava/lang/String;

.field private mPurchaseItemWorkFlow:I

.field private mPurchaseName:Ljava/lang/String;

.field private mRotaion:I

.field private mSetBPProtocol:Ljava/lang/Boolean;

.field private mSetTmpBPProtocol:Ljava/lang/Boolean;

.field private mSetting:Lcom/feelingk/iap/IAPLibSetting;

.field private mTabDevice:Z

.field private mUseTCash:Z

.field private mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

.field private m_Tid:Ljava/lang/String;

.field private m_phoneUSIMState:I

.field private m_telephonyManager:Landroid/telephony/TelephonyManager;

.field public onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

.field onConfirmInfoListener:Landroid/view/View$OnClickListener;

.field onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

.field public onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

.field onInfoCancelListener:Landroid/view/View$OnClickListener;

.field onJAutoPurchaseFormInfoListener:Landroid/view/View$OnClickListener;

.field onJoinInfoListener:Landroid/view/View$OnClickListener;

.field public onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

.field public onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

.field public onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

.field onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

.field public onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

.field onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field public purchaseDismissFlag:Z

.field public pwdAuthFlag:Z

.field private wfmanager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    const/4 v0, 0x0

    sput v0, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    .line 119
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    .line 120
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const-string v0, "USIM Null"

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->wfmanager:Landroid/net/wifi/WifiManager;

    .line 80
    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    .line 81
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 94
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 97
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 98
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    .line 108
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 110
    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 112
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    .line 114
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->juminFlag:Z

    .line 115
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    .line 116
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 117
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    .line 284
    new-instance v0, Lcom/feelingk/iap/IAPActivity$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$1;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 505
    new-instance v0, Lcom/feelingk/iap/IAPActivity$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$2;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 582
    new-instance v0, Lcom/feelingk/iap/IAPActivity$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$3;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 625
    new-instance v0, Lcom/feelingk/iap/IAPActivity$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$4;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 638
    new-instance v0, Lcom/feelingk/iap/IAPActivity$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$5;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 678
    new-instance v0, Lcom/feelingk/iap/IAPActivity$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$6;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 730
    new-instance v0, Lcom/feelingk/iap/IAPActivity$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$7;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 932
    new-instance v0, Lcom/feelingk/iap/IAPActivity$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$8;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

    .line 952
    new-instance v0, Lcom/feelingk/iap/IAPActivity$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$9;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onInfoCancelListener:Landroid/view/View$OnClickListener;

    .line 973
    new-instance v0, Lcom/feelingk/iap/IAPActivity$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$10;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 991
    new-instance v0, Lcom/feelingk/iap/IAPActivity$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$11;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 1002
    new-instance v0, Lcom/feelingk/iap/IAPActivity$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$12;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 1012
    new-instance v0, Lcom/feelingk/iap/IAPActivity$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$13;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJAutoPurchaseFormInfoListener:Landroid/view/View$OnClickListener;

    .line 1022
    new-instance v0, Lcom/feelingk/iap/IAPActivity$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$14;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJoinInfoListener:Landroid/view/View$OnClickListener;

    .line 1031
    new-instance v0, Lcom/feelingk/iap/IAPActivity$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$15;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method private DismissAutoPurchaseFormDialog()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->ClosePopupAutoPurchaseFormDialog()V

    .line 496
    return-void
.end method

.method private DismissImageDialog()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->ClosePopupImageDialog()V

    .line 492
    return-void
.end method

.method private DismissInfoMessageDialog()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->ClosePopupDialog()V

    .line 354
    return-void
.end method

.method private DismissJoinDialog()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->ClosePopupJoinDialog()V

    .line 500
    return-void
.end method

.method private DismissJuminAuthDialog()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->ClosePopupAuthDialog()V

    .line 423
    return-void
.end method

.method private DismissLoaingProgress()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ProgressDialog;->CloseProgress()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 341
    :cond_0
    return-void
.end method

.method private DismissPurchaseDialog()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->ClosePurchaseDialog()V

    .line 413
    return-void
.end method

.method private DismissYesNoDialog()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->ClosePopupYesNoDialog()V

    .line 487
    return-void
.end method

.method private IAPLibDeviceCheck()V
    .locals 3

    .prologue
    .line 1220
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/feelingk/iap/IAPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1221
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1222
    .local v0, "disp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 1232
    return-void
.end method

.method private IAPLibUSIMStateCheck()V
    .locals 3

    .prologue
    .line 1195
    new-instance v0, Lcom/feelingk/iap/IAPActivity$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$17;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 1214
    .local v0, "m_phoneStateListener":Landroid/telephony/PhoneStateListener;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1216
    return-void
.end method

.method private RestoreData()V
    .locals 4

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 316
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 317
    check-cast v0, Ljava/util/HashMap;

    .line 319
    .local v0, "dataBackupMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "NET_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    .line 320
    const-string v2, "ERR_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    .line 321
    const-string v2, "USE_BPPROTOCOL"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    .line 323
    const-string v2, "PRODUCT_NAME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 324
    const-string v2, "PRODUCT_INFO"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/feelingk/iap/net/ItemInfoConfirm;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 326
    const-string v2, "IAPActivity"

    const-string v3, "## Restore Data ......"

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v0    # "dataBackupMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private ShowInfoMessageDialog(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "info_message"    # Ljava/lang/String;

    .prologue
    .line 343
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onConfirmInfoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->ShowPopupDialog()V

    .line 351
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onInfoCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private ShowJuminAuthDialog()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->InflateView()V

    .line 417
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->ShowPopupAuthDialog()V

    .line 418
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 420
    return-void
.end method

.method private ShowLoadingProgress()V
    .locals 3

    .prologue
    .line 333
    new-instance v0, Lcom/feelingk/iap/gui/view/ProgressDialog;

    const-string v1, "\ucc98\ub9ac\uc911\uc785\ub2c8\ub2e4. "

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 334
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ProgressDialog;->ShowProgress()V

    .line 335
    return-void
.end method

.method private ShowPurchaseDialog(Ljava/lang/Object;)V
    .locals 12
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, Lcom/feelingk/iap/net/ItemInfoConfirm;

    .end local p1    # "item":Ljava/lang/Object;
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 366
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 370
    .local v3, "nPrice":I
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 371
    .local v4, "nTCash":I
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmFinalVersionCheck()Z

    move-result v7

    .line 372
    .local v7, "nFinalVer":Z
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAutoPurchaseCheck()Z

    move-result v8

    .line 373
    .local v8, "nautoPurchaseCheck":Z
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAfterAutoPurchaseInfoAgree()Z

    move-result v9

    .line 376
    .local v9, "nAfterAutoPurchaseInfoAgree":Z
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 377
    .local v11, "itemName":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 380
    .local v1, "dnc":Ljava/lang/String;
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v11, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 386
    :goto_1
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 388
    new-instance v0, Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 389
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPeriod()Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    move v5, v3

    .line 388
    invoke-direct/range {v0 .. v9}, Lcom/feelingk/iap/gui/data/PurchaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZZZ)V

    .line 397
    .local v0, "pItemInfo":Lcom/feelingk/iap/gui/data/PurchaseItem;
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget v5, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v2, v5, v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->InflateParserDialog(ILcom/feelingk/iap/gui/data/PurchaseItem;)V

    .line 398
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    invoke-virtual {v2}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->ShowPurchaseDialog()V

    .line 407
    .end local v0    # "pItemInfo":Lcom/feelingk/iap/gui/data/PurchaseItem;
    .end local v1    # "dnc":Ljava/lang/String;
    .end local v3    # "nPrice":I
    .end local v4    # "nTCash":I
    .end local v7    # "nFinalVer":Z
    .end local v8    # "nautoPurchaseCheck":Z
    .end local v9    # "nAfterAutoPurchaseInfoAgree":Z
    .end local v11    # "itemName":Ljava/lang/String;
    :goto_2
    return-void

    .line 376
    .restart local v3    # "nPrice":I
    .restart local v4    # "nTCash":I
    .restart local v7    # "nFinalVer":Z
    .restart local v8    # "nautoPurchaseCheck":Z
    .restart local v9    # "nAfterAutoPurchaseInfoAgree":Z
    :cond_0
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTitle()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 381
    .restart local v1    # "dnc":Ljava/lang/String;
    .restart local v11    # "itemName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 383
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 402
    .end local v1    # "dnc":Ljava/lang/String;
    .end local v3    # "nPrice":I
    .end local v4    # "nTCash":I
    .end local v7    # "nFinalVer":Z
    .end local v8    # "nautoPurchaseCheck":Z
    .end local v9    # "nAfterAutoPurchaseInfoAgree":Z
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "itemName":Ljava/lang/String;
    :cond_1
    const-string v2, "IAPActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mItemInfoConfirm = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mItemInfoConfirm.getItemPrice() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 403
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v6}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mItemInfoConfirm.getItemTCash() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v6}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJuminAuthDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/feelingk/iap/IAPActivity;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    return v0
.end method

.method static synthetic access$10(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$12(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissImageDialog()V

    return-void
.end method

.method static synthetic access$13(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissAutoPurchaseFormDialog()V

    return-void
.end method

.method static synthetic access$14(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$15(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    return-void
.end method

.method static synthetic access$16(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V

    return-void
.end method

.method static synthetic access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/feelingk/iap/IAPActivity;Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    return-void
.end method

.method static synthetic access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$21(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$22(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$23(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$24()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    return v0
.end method

.method static synthetic access$25(Lcom/feelingk/iap/IAPActivity;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    return v0
.end method

.method static synthetic access$26(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    sput-object p0, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    sput-object p0, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    return-void
.end method

.method static synthetic access$31(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    return-void
.end method

.method static synthetic access$32(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupYesNoDialog;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    return-object v0
.end method

.method static synthetic access$33(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupImageDialog;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    return-object v0
.end method

.method static synthetic access$34(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    return-object v0
.end method

.method static synthetic access$35(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupJoinDialog;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    return-object v0
.end method

.method static synthetic access$36(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method static synthetic access$37(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$38(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$41(Lcom/feelingk/iap/IAPActivity;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    return-void
.end method

.method static synthetic access$42(Lcom/feelingk/iap/IAPActivity;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    return v0
.end method

.method static synthetic access$43(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$45(Lcom/feelingk/iap/IAPActivity;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/feelingk/iap/IAPActivity;I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    return-void
.end method

.method static synthetic access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    return-object v0
.end method

.method static synthetic access$8(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V

    return-void
.end method

.method static synthetic access$9(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1559
    const-string v3, "DESede/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1560
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-static {p1}, Lcom/feelingk/iap/IAPActivity;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1561
    invoke-static {p0}, Lcom/feelingk/iap/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 1562
    .local v1, "outputBytes2":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1564
    .local v2, "strResult":Ljava/lang/String;
    return-object v2
.end method

.method public static getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .param p0, "keyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1569
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 1570
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1571
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 1573
    .local v1, "key":Ljava/security/Key;
    return-object v1
.end method


# virtual methods
.method public IAPLibAuthCheck()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1235
    sget v2, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    if-ne v2, v1, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return v0

    .line 1243
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getEncJuminNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1247
    goto :goto_0
.end method

.method public IAPLibInit(Lcom/feelingk/iap/IAPLibSetting;)V
    .locals 4
    .param p1, "setting"    # Lcom/feelingk/iap/IAPLibSetting;

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    .line 1551
    sget v1, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    invoke-static {p0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "mdn":Ljava/lang/String;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    sget v3, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    invoke-static {p0, v1, v2, v0, v3}, Lcom/feelingk/iap/IAPLib;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;I)V

    .line 1554
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1578
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1582
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1583
    const v0, 0xd7115

    if-ne p1, v0, :cond_0

    .line 1584
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 1585
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1587
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    .line 1588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    .line 1592
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "IAPActivity"

    const-string v1, "IAPActivity onCreate "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 128
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/IAPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    .line 147
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    .line 149
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "curTelecom onCreate : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 153
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_0

    .line 155
    const v2, 0x1030011

    .line 156
    .local v2, "theme":I
    new-instance v0, Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    sget v4, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    iget-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/view/PurchaseDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 157
    new-instance v0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 158
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-boolean v1, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 159
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 160
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImageDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupImageDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 161
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 162
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->RestoreData()V

    .line 177
    return-void

    .line 166
    .end local v2    # "theme":I
    :cond_0
    const v2, 0x1030010

    .line 167
    .restart local v2    # "theme":I
    new-instance v0, Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    sget v4, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    iget-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/view/PurchaseDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 168
    new-instance v0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 169
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-boolean v1, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 170
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 171
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImageDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupImageDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 172
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 173
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 235
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v2

    .line 236
    .local v2, "nDlgType":I
    const-string v3, "IAPActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IAPActivity onPause ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 240
    .local v0, "hnd":Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 241
    .local v1, "msgNetwork":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 243
    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    .line 247
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 272
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setUIHandler(Landroid/os/Handler;)V

    .line 273
    return-void

    .line 249
    :cond_1
    const/16 v3, 0x67

    if-ne v2, v3, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    goto :goto_0

    .line 252
    :cond_2
    const/16 v3, 0x6b

    if-ne v2, v3, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V

    goto :goto_0

    .line 255
    :cond_3
    const/16 v3, 0x6c

    if-ne v2, v3, :cond_4

    .line 256
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissAutoPurchaseFormDialog()V

    goto :goto_0

    .line 258
    :cond_4
    const/16 v3, 0x69

    if-ne v2, v3, :cond_5

    .line 259
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    goto :goto_0

    .line 261
    :cond_5
    const/16 v3, 0x65

    if-ne v2, v3, :cond_6

    .line 262
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    goto :goto_0

    .line 264
    :cond_6
    const/16 v3, 0x6a

    if-ne v2, v3, :cond_7

    .line 265
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJuminAuthDialog()V

    goto :goto_0

    .line 267
    :cond_7
    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    .line 269
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x6c

    const/16 v5, 0x6b

    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 184
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 186
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    .line 188
    .local v1, "nDlgType":I
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IAPActivity onResume ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setUIHandler(Landroid/os/Handler;)V

    .line 191
    sget v2, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 193
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getEncJuminNumber()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "encJumin":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 199
    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->updateEncJuminNumber(Ljava/lang/String;)V

    .line 203
    .end local v0    # "encJumin":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x67

    if-ne v1, v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {p0, v2}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    if-ne v1, v5, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->popupJoinDlg()V

    .line 207
    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 209
    :cond_3
    if-ne v1, v6, :cond_4

    .line 210
    const-string v2, "\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488"

    const-string v3, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \uc8fc\uc758\uc0ac\ud56d\n\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    invoke-virtual {p0, v2, v3}, Lcom/feelingk/iap/IAPActivity;->popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 213
    :cond_4
    const/16 v2, 0x69

    if-ne v1, v2, :cond_5

    .line 214
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_5
    const/16 v2, 0x6a

    if-ne v1, v2, :cond_6

    .line 216
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 217
    :cond_6
    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v0, "dataBackupMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "NET_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "ERR_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "USE_BPPROTOCOL"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "PRODUCT_NAME"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "PRODUCT_INFO"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-object v0
.end method

.method public popPurchaseDlg(Ljava/lang/String;)V
    .locals 2
    .param p1, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1285
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 1286
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    .line 1287
    invoke-virtual {p0, p1, v1}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    return-void
.end method

.method protected popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1297
    const-string v2, "IAPActivity"

    const-string v3, "##  TStore Library Version = V 11.11.28"

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v2, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v3, 0x45c

    .line 1301
    const-string v4, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    .line 1300
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1301
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1340
    :goto_0
    return-void

    .line 1305
    :cond_0
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 1307
    if-eqz p2, :cond_3

    .line 1309
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1310
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 1317
    :goto_1
    const/4 v1, 0x0

    .line 1318
    .local v1, "enc":Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1321
    :try_start_0
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1329
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1330
    const/4 v2, 0x1

    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1331
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 1312
    .end local v1    # "enc":Ljava/lang/String;
    :cond_2
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_1

    .line 1315
    :cond_3
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_1

    .line 1323
    .restart local v1    # "enc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    .line 1325
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 1335
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# popPurchaseDlg PID= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / UseBPProtocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 1338
    const/16 v2, 0x66

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1339
    invoke-static {p1, v1}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pTID"    # Ljava/lang/String;

    .prologue
    .line 1346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    return-void
.end method

.method protected popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pTID"    # Ljava/lang/String;
    .param p4, "pBPInfo"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1351
    const/4 v2, 0x0

    .line 1352
    .local v2, "pEncName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1354
    .local v1, "pEncBPInfo":Ljava/lang/String;
    const-string v3, "IAPActivity"

    const-string v4, "##  TStore Library Version = V 11.11.28"

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget v3, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v3, :cond_0

    .line 1357
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v4, 0x45c

    const-string v5, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1417
    :goto_0
    return-void

    .line 1370
    :cond_0
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 1371
    iput-object p4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    .line 1373
    if-eqz p2, :cond_4

    .line 1375
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1376
    iput-object v5, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 1383
    :goto_1
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1386
    :try_start_0
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1394
    :cond_1
    :goto_2
    if-eqz p3, :cond_5

    move-object v3, p3

    :goto_3
    iput-object v3, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 1397
    if-eqz p4, :cond_2

    .line 1399
    :try_start_1
    const-string v3, "utf-8"

    invoke-static {p4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1407
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1408
    const/4 v3, 0x2

    iput v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1409
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 1378
    :cond_3
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_1

    .line 1381
    :cond_4
    iput-object v5, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_1

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 1394
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5
    invoke-static {p0, p1}, Lcom/feelingk/iap/util/CommonF;->getTID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1401
    :catch_1
    move-exception v0

    .line 1402
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    .line 1403
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 1413
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    const-string v3, "IAPActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "# popPurchaseDlg TID= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 1415
    const/16 v3, 0x66

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1416
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    invoke-static {p1, v2, v3, v1}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "formName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    const/16 v1, 0x71

    .line 471
    new-instance v4, Lcom/feelingk/iap/IAPActivity$16;

    invoke-direct {v4, p0}, Lcom/feelingk/iap/IAPActivity$16;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 478
    iget v5, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    move-object v2, p1

    move-object v3, p2

    .line 470
    invoke-virtual/range {v0 .. v5}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->InflateView(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 480
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->ShowPopupAutoPurchaseFormDialog()V

    .line 482
    return-void
.end method

.method public popupImageDlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    const/16 v1, 0x69

    .line 456
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 455
    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->ShowPopupImageDialog()V

    .line 461
    return-void
.end method

.method public popupJoinDlg()V
    .locals 5

    .prologue
    .line 431
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->onJoinInfoListener:Landroid/view/View$OnClickListener;

    iget v4, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 433
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->ShowPopupJoinDialog()V

    .line 435
    return-void
.end method

.method public popupYesNoDlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    const/16 v1, 0x69

    .line 445
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 444
    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->ShowPopupYesNoDialog()V

    .line 449
    return-void
.end method

.method protected sendBPData([B)[B
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1489
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x45c

    const-string v3, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1501
    :goto_0
    return-object v0

    .line 1494
    :cond_0
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    iget-object v1, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    iget v1, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 1496
    :cond_1
    const-string v1, "IAPActivity"

    const-string v2, "sendBPData - BP Server IP is null or invalid Port Number"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1500
    :cond_2
    const-string v0, "IAPActivity"

    const-string v1, "# sendBPData"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    invoke-static {p1}, Lcom/feelingk/iap/IAPLib;->sendBPData([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected sendItemAuth(Ljava/lang/String;)V
    .locals 3
    .param p1, "pID"    # Ljava/lang/String;

    .prologue
    .line 1466
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    const-string v2, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1480
    :goto_0
    return-void

    .line 1471
    :cond_0
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 1472
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1473
    const/4 v0, 0x4

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1474
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 1478
    :cond_1
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# sendItemAuth PID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-static {p1}, Lcom/feelingk/iap/IAPLib;->sendItemAuth(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendItemUse(Ljava/lang/String;)V
    .locals 3
    .param p1, "pID"    # Ljava/lang/String;

    .prologue
    .line 1445
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    const-string v2, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1459
    :goto_0
    return-void

    .line 1450
    :cond_0
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 1451
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    const/4 v0, 0x5

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1453
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 1457
    :cond_1
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# sendItemUse PID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    invoke-static {p1}, Lcom/feelingk/iap/IAPLib;->sendItemUse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendItemWholeAuth()V
    .locals 3

    .prologue
    .line 1425
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    const-string v2, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1438
    :goto_0
    return-void

    .line 1430
    :cond_0
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1431
    const/4 v0, 0x3

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1432
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 1436
    :cond_1
    const-string v0, "IAPActivity"

    const-string v1, "# sendItemWholeAuth"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendItemWholeAuth()V

    goto :goto_0
.end method

.method protected sendPurchaseDismiss(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1509
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    const-string v2, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1532
    :goto_0
    return-void

    .line 1514
    :cond_0
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 1515
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 1517
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    const/4 v0, 0x6

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1519
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 1523
    :cond_1
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# sendPurchaseDismiss PID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    sget v0, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    if-ne v0, v3, :cond_2

    .line 1526
    iput-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uc0c1\ud488\uc744 \uc911\ub3c4 \ud574\uc9c0 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :cond_2
    const/16 v0, 0x6f

    const-string v1, "\ubcf8 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c\uc0c1\ud488\uc740 SKT \uc790\uc0ac \uace0\uac1d\ub2d8\ub9cc \uc774\uc6a9 \uac00\ub2a5\ud55c\uc0c1\ud488\uc785\ub2c8\ub2e4."

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0
.end method
