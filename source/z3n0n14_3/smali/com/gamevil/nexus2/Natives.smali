.class public Lcom/gamevil/nexus2/Natives;
.super Ljava/lang/Object;
.source "Natives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/Natives$EventListener;,
        Lcom/gamevil/nexus2/Natives$UIListener;
    }
.end annotation


# static fields
.field private static LANGUAGE_TYPE_CHI:I = 0x0

.field private static LANGUAGE_TYPE_ENG:I = 0x0

.field private static LANGUAGE_TYPE_JPN:I = 0x0

.field private static LANGUAGE_TYPE_KOR:I = 0x0

.field static OFFSET_TAPJOY_BANNER_TOPMARGIN:I = 0x0

.field static final REPLY_OFFSET_LEFTMARGIN_0:I = 0x14

.field static final REPLY_OFFSET_LEFTMARGIN_1:I = 0xb4

.field static final REPLY_OFFSET_TOPMARGIN_0:I = 0xaa

.field public static bOpenPurchasePopup:Z

.field public static bPurchaseConnect:Z

.field private static bTapjoyReady:Z

.field private static bgName:I

.field private static btnName0:I

.field private static btnName1:I

.field private static btnName2:I

.field private static btnName3:I

.field private static btnName4:I

.field private static btnName5:I

.field private static btnName6:I

.field private static btnName7:I

.field private static eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

.field static gPoint:Ljava/lang/String;

.field public static gameActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static img_btn_later:Landroid/widget/ImageButton;

.field static img_btn_write:Landroid/widget/ImageButton;

.field private static img_menu_about_id:I

.field private static img_menu_community_id:I

.field private static img_menu_continue_id:I

.field private static img_menu_help_id:I

.field private static img_menu_newgame_id:I

.field private static img_menu_options_id:I

.field public static isCocos2d:Z

.field public static language:I

.field private static mAboutHandler:Landroid/os/Handler;

.field private static mGpointHandler:Landroid/os/Handler;

.field private static mHandler:Landroid/os/Handler;

.field private static mHandler2:Landroid/os/Handler;

.field private static mHelpHandler:Landroid/os/Handler;

.field private static mMenuHandler:Landroid/os/Handler;

.field private static mMenuItemHandler:Landroid/os/Handler;

.field private static mPurchaseHandler:Landroid/os/Handler;

.field private static mReplyMoveHandler:Landroid/os/Handler;

.field private static mTapjoyHandler:Landroid/os/Handler;

.field private static mTitleHandler:Landroid/os/Handler;

.field public static nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

.field public static nexusTouch:Lcom/gamevil/nexus2/NexusTouch;

.field private static reply_later_id:I

.field private static reply_page_back_id:I

.field private static reply_write_id:I

.field public static reserveMenu:Z

.field public static saveUiStatus:I

.field static txt_Gpoint:Landroid/widget/TextView;

.field private static uiListener:Lcom/gamevil/nexus2/Natives$UIListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->isCocos2d:Z

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/Natives;->gameActivityClass:Ljava/lang/Class;

    .line 115
    const/16 v0, -0x3e7

    sput v0, Lcom/gamevil/nexus2/Natives;->saveUiStatus:I

    .line 831
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    .line 832
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mHandler2:Landroid/os/Handler;

    .line 1279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    .line 1280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mAboutHandler:Landroid/os/Handler;

    .line 1281
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mMenuHandler:Landroid/os/Handler;

    .line 1282
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    .line 1283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mPurchaseHandler:Landroid/os/Handler;

    .line 1284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mGpointHandler:Landroid/os/Handler;

    .line 1288
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->bPurchaseConnect:Z

    .line 1290
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    .line 1293
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->bTapjoyReady:Z

    .line 1294
    sput v1, Lcom/gamevil/nexus2/Natives;->language:I

    .line 1300
    const/4 v0, 0x1

    sput v0, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_KOR:I

    .line 1301
    sput v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_ENG:I

    .line 1302
    const/4 v0, 0x2

    sput v0, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_JPN:I

    .line 1303
    const/4 v0, 0x3

    sput v0, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_CHI:I

    .line 1435
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mTitleHandler:Landroid/os/Handler;

    .line 3395
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    .line 3467
    const/16 v0, 0xbe

    sput v0, Lcom/gamevil/nexus2/Natives;->OFFSET_TAPJOY_BANNER_TOPMARGIN:I

    .line 3530
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mReplyMoveHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GWSwapBuffers()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    invoke-interface {v0}, Lcom/gamevil/nexus2/Natives$EventListener;->GWSwapBuffers()V

    .line 142
    :cond_0
    return-void
.end method

.method public static GetFileFromHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "fileUrl"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # I

    .prologue
    .line 291
    invoke-static {p0, p1, p2, p3}, Lcom/gamevil/nexus2/xml/NexusUtils;->GetFileFromHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static GetNexusSensorXAngle()I
    .locals 1

    .prologue
    .line 1250
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->GetOrientationXAngle()I

    move-result v0

    return v0
.end method

.method public static GetNexusSensorXInc()I
    .locals 1

    .prologue
    .line 1248
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->GetOrientationXInc()I

    move-result v0

    return v0
.end method

.method public static GetNexusSensorYAngle()I
    .locals 1

    .prologue
    .line 1251
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->GetOrientationYAngle()I

    move-result v0

    return v0
.end method

.method public static GetNexusSensorYInc()I
    .locals 1

    .prologue
    .line 1249
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->GetOrientationYInc()I

    move-result v0

    return v0
.end method

.method public static HideLoadingDialog()V
    .locals 0

    .prologue
    .line 1274
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideLoadingDialog()V

    return-void
.end method

.method public static HideTapjoyAd()V
    .locals 2

    .prologue
    .line 3498
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$31;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$31;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3511
    return-void
.end method

.method public static HideTapjoyOffer()V
    .locals 2

    .prologue
    .line 3446
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$29;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$29;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3465
    return-void
.end method

.method public static native InitializeJNIGlobalRef()V
.end method

.method public static IsNexusSensorBottomAcceleration()Z
    .locals 1

    .prologue
    .line 1255
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsBottomAcceleration()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorBottomOrientation()Z
    .locals 1

    .prologue
    .line 1245
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsBottomOrientaion()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorLeftAcceleration()Z
    .locals 1

    .prologue
    .line 1256
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsLeftAcceleration()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorLeftOrientation()Z
    .locals 1

    .prologue
    .line 1246
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsLeftOrientaion()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorRightAcceleration()Z
    .locals 1

    .prologue
    .line 1257
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsRightAcceleration()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorRightOrientation()Z
    .locals 1

    .prologue
    .line 1247
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsRightOrientaion()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorShakeDevice()Z
    .locals 1

    .prologue
    .line 1252
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsShakeDevice()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorTopAcceleration()Z
    .locals 1

    .prologue
    .line 1254
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsTopAcceleration()Z

    move-result v0

    return v0
.end method

.method public static IsNexusSensorTopOrientation()Z
    .locals 1

    .prologue
    .line 1244
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->IsTopOrientaion()Z

    move-result v0

    return v0
.end method

.method public static native NativeAsyncTimerCallBack(I)V
.end method

.method public static native NativeAsyncTimerCallBackTimeStemp(II)V
.end method

.method public static native NativeDestroyClet()V
.end method

.method public static native NativeGetPlayerName(Ljava/lang/String;)V
.end method

.method public static native NativeGetPublicKey()Ljava/lang/String;
.end method

.method public static native NativeHandleInAppBiiling(Ljava/lang/String;II)V
.end method

.method public static native NativeHandleTapjoyOffer(II)V
.end method

.method public static native NativeInit()V
.end method

.method public static native NativeInitDeviceInfo(II)V
.end method

.method public static native NativeInitWithBufferSize(II)V
.end method

.method public static native NativeIsNexusOne(Z)V
.end method

.method public static native NativeNetTimeOut()V
.end method

.method public static native NativePauseClet()V
.end method

.method public static native NativeRender()V
.end method

.method public static native NativeResize(II)V
.end method

.method public static native NativeResponseIAP(Ljava/lang/String;I)V
.end method

.method public static native NativeResumeClet()V
.end method

.method public static native NativeUnLockItem(II)I
.end method

.method public static NetErrorDialog(I)V
    .locals 3
    .param p0, "ack"    # I

    .prologue
    .line 2705
    const-string v0, "#ack#"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "####"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$18;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/Natives$18;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2982
    return-void
.end method

.method public static NetErrorDialogException(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2642
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$17;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/Natives$17;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2700
    return-void
.end method

.method public static NexusSensorEnable(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 1241
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->NexusSensorEnable(Z)V

    return-void
.end method

.method public static NexusSensorOrientationType(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1243
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusSensor:Lcom/gamevil/nexus2/sensor/NexusSensor;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/sensor/NexusSensor;->InitNexusSensorOrientationType(I)V

    return-void
.end method

.method public static NexusSetMaxLengthNumberInput(I)V
    .locals 0
    .param p0, "nLength"    # I

    .prologue
    .line 1268
    sput p0, Lcom/gamevil/nexus2/ui/UIEditNumber;->nLengthMaxNumber:I

    return-void
.end method

.method public static NexusSetMaxLengthTextInput(I)V
    .locals 0
    .param p0, "nLength"    # I

    .prologue
    .line 1267
    sput p0, Lcom/gamevil/nexus2/ui/UIEditText;->nLengthMaxText:I

    return-void
.end method

.method public static NexusSetText(Ljava/lang/String;)V
    .locals 1
    .param p0, "pStr"    # Ljava/lang/String;

    .prologue
    .line 1264
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iput-object p0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 1266
    return-void
.end method

.method public static NexusTouchGestureEnable(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 1229
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusTouch:Lcom/gamevil/nexus2/NexusTouch;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/NexusTouch;->setGestureEnable(Z)V

    return-void
.end method

.method public static NexusTouchGestureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1230
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusTouch:Lcom/gamevil/nexus2/NexusTouch;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusTouch;->getGestureName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NexusTouchInitGestureName()V
    .locals 1

    .prologue
    .line 1231
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusTouch:Lcom/gamevil/nexus2/NexusTouch;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusTouch;->initGestureName()V

    return-void
.end method

.method public static NexusTouchSetCheckGesture(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 1233
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusTouch:Lcom/gamevil/nexus2/NexusTouch;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/NexusTouch;->SetCheckGesture(Z)V

    return-void
.end method

.method public static NexusTouchSetShowGestureLine(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 1234
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusTouch:Lcom/gamevil/nexus2/NexusTouch;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/NexusTouch;->setShowGestureLine(Z)V

    return-void
.end method

.method public static NexusTouchSimpleFlingEnable(ZII)V
    .locals 1
    .param p0, "b"    # Z
    .param p1, "nVel"    # I
    .param p2, "nDis"    # I

    .prologue
    .line 1232
    sget-object v0, Lcom/gamevil/nexus2/Natives;->nexusTouch:Lcom/gamevil/nexus2/NexusTouch;

    invoke-virtual {v0, p0, p1, p2}, Lcom/gamevil/nexus2/NexusTouch;->setSimpleFling(ZII)V

    return-void
.end method

.method private static OnAsyncTimerSet(II)V
    .locals 1
    .param p0, "timeOut"    # I
    .param p1, "timerIndex"    # I

    .prologue
    .line 190
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0, p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity;->OnAsyncTimerSet(II)V

    .line 191
    return-void
.end method

.method private static OnAsyncTimerSet(III)V
    .locals 1
    .param p0, "timeOut"    # I
    .param p1, "timerIndex"    # I
    .param p2, "timeStemp"    # I

    .prologue
    .line 196
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/gamevil/nexus2/NexusGLActivity;->OnAsyncTimerSet(III)V

    .line 197
    return-void
.end method

.method private static OnEvent(I)V
    .locals 1
    .param p0, "_event"    # I

    .prologue
    .line 184
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnEvent(I)V

    .line 185
    return-void
.end method

.method private static OnMessage(Ljava/lang/String;)V
    .locals 1
    .param p0, "_msg"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$EventListener;->OnMessage(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method private static OnSoundPlay(IIZ)V
    .locals 1
    .param p0, "sndID"    # I
    .param p1, "vol"    # I
    .param p2, "isLoop"    # Z

    .prologue
    .line 172
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/gamevil/nexus2/Natives$UIListener;->OnSoundPlay(IIZ)V

    .line 173
    return-void
.end method

.method private static OnStopSound()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnStopSound()V

    .line 177
    return-void
.end method

.method private static OnUIStatusChange(I)V
    .locals 1
    .param p0, "_status"    # I

    .prologue
    .line 168
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnUIStatusChange(I)V

    .line 169
    return-void
.end method

.method private static OnVibrate(I)V
    .locals 1
    .param p0, "_time"    # I

    .prologue
    .line 180
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnVibrate(I)V

    .line 181
    return-void
.end method

.method public static OpenTapjoyOffer()V
    .locals 1

    .prologue
    .line 1423
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    check-cast v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->openTapjoyOffer()V

    .line 1424
    return-void
.end method

.method private static SetSpeed(I)V
    .locals 0
    .param p0, "_speed"    # I

    .prologue
    .line 524
    invoke-static {p0}, Lcom/gamevil/nexus2/NexusGLThread;->SetFPS(I)V

    .line 525
    return-void
.end method

.method public static ShowTapjoyAd()V
    .locals 2

    .prologue
    .line 3471
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$30;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$30;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3494
    return-void
.end method

.method public static ShowTapjoyOffer()V
    .locals 2

    .prologue
    .line 3398
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$28;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$28;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3443
    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 527
    invoke-static {p0}, Lcom/gamevil/nexus2/Natives;->changeUIStatus(I)V

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 1300
    sget v0, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_KOR:I

    return v0
.end method

.method static synthetic access$10()I
    .locals 1

    .prologue
    .line 1304
    sget v0, Lcom/gamevil/nexus2/Natives;->bgName:I

    return v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 1305
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName0:I

    return v0
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 1306
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName1:I

    return v0
.end method

.method static synthetic access$13()I
    .locals 1

    .prologue
    .line 1307
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName2:I

    return v0
.end method

.method static synthetic access$14()I
    .locals 1

    .prologue
    .line 1308
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName3:I

    return v0
.end method

.method static synthetic access$15()I
    .locals 1

    .prologue
    .line 1309
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName4:I

    return v0
.end method

.method static synthetic access$16()I
    .locals 1

    .prologue
    .line 1310
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName5:I

    return v0
.end method

.method static synthetic access$17()I
    .locals 1

    .prologue
    .line 1311
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName6:I

    return v0
.end method

.method static synthetic access$18()I
    .locals 1

    .prologue
    .line 1312
    sget v0, Lcom/gamevil/nexus2/Natives;->btnName7:I

    return v0
.end method

.method static synthetic access$19(ILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 1013
    invoke-static {p0, p1, p2}, Lcom/gamevil/nexus2/Natives;->requestIAP(ILjava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 1302
    sget v0, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_JPN:I

    return v0
.end method

.method static synthetic access$20()I
    .locals 1

    .prologue
    .line 1319
    sget v0, Lcom/gamevil/nexus2/Natives;->reply_page_back_id:I

    return v0
.end method

.method static synthetic access$21()I
    .locals 1

    .prologue
    .line 1320
    sget v0, Lcom/gamevil/nexus2/Natives;->reply_write_id:I

    return v0
.end method

.method static synthetic access$22()I
    .locals 1

    .prologue
    .line 1321
    sget v0, Lcom/gamevil/nexus2/Natives;->reply_later_id:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 1303
    sget v0, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_CHI:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 1313
    sget v0, Lcom/gamevil/nexus2/Natives;->img_menu_community_id:I

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 1314
    sget v0, Lcom/gamevil/nexus2/Natives;->img_menu_options_id:I

    return v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 1315
    sget v0, Lcom/gamevil/nexus2/Natives;->img_menu_newgame_id:I

    return v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 1316
    sget v0, Lcom/gamevil/nexus2/Natives;->img_menu_continue_id:I

    return v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 1317
    sget v0, Lcom/gamevil/nexus2/Natives;->img_menu_help_id:I

    return v0
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 1318
    sget v0, Lcom/gamevil/nexus2/Natives;->img_menu_about_id:I

    return v0
.end method

.method private static cancelLocalPushNotification(I)V
    .locals 1
    .param p0, "_pushId"    # I

    .prologue
    .line 912
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0, p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->cancelLocalPushNotification(Landroid/content/Context;I)V

    .line 913
    return-void
.end method

.method private static changeUIStatus(I)V
    .locals 3
    .param p0, "_status"    # I

    .prologue
    .line 528
    const/16 v0, 0x115c

    if-ne p0, v0, :cond_0

    .line 530
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== [4444]changeUIStatus 3 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gamevil/nexus2/Natives;->saveUiStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    :goto_0
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->changeUIStatus(I)V

    .line 537
    return-void

    .line 533
    :cond_0
    sput p0, Lcom/gamevil/nexus2/Natives;->saveUiStatus:I

    .line 534
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== changeUIStatus 3 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static clearNumber()V
    .locals 2

    .prologue
    .line 588
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    const-string v1, ""

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->numberInputed:Ljava/lang/String;

    .line 589
    return-void
.end method

.method private static clearPlayerName()V
    .locals 2

    .prologue
    .line 570
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    const-string v1, ""

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 571
    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)I
    .locals 5
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 491
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "||==========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|| delete data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "||==========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v3, "gameSave"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 495
    .local v1, "pre":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 496
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    const/4 v2, 0x1

    return v2
.end method

.method private static finishApp()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method private static getAbsolueFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/NexusGLActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "filePath":Ljava/lang/String;
    return-object v0
.end method

.method private static getAndroidID()[B
    .locals 1

    .prologue
    .line 623
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceID()[B
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceType()[B
    .locals 2

    .prologue
    .line 638
    const-string v0, "AD Default"

    .line 639
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static getFreeMemory()J
    .locals 2

    .prologue
    .line 884
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getGLOptionLinear()I
    .locals 4

    .prologue
    .line 984
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v2, "glOptions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 986
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "glQuality"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getGPoint(I)V
    .locals 3
    .param p0, "_n"    # I

    .prologue
    .line 1676
    const-string v0, "#getGPoint A#"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    .line 1680
    const-string v0, "#getGPoint B#"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$12;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1695
    return-void
.end method

.method public static getGamevilLiveID()[B
    .locals 1

    .prologue
    .line 935
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->getGamevilLiveID()[B

    move-result-object v0

    return-object v0
.end method

.method public static getGamevilLivePW()[B
    .locals 1

    .prologue
    .line 941
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->getGamevilLivePW()[B

    move-result-object v0

    return-object v0
.end method

.method private static getInetHostAddress(Ljava/lang/String;)[B
    .locals 1
    .param p0, "_url"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getInetHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getLanguage(I)V
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 1632
    const-string v0, "## getLanguage :  ##"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    sput p0, Lcom/gamevil/nexus2/Natives;->language:I

    .line 1635
    return-void
.end method

.method public static getLocaleID()I
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getLocaleID()I

    move-result v0

    return v0
.end method

.method private static getMacAddress()[B
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getMaxMemory()J
    .locals 2

    .prologue
    .line 880
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOldPhoneNumber()[B
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getOldPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getOsVersion()[B
    .locals 1

    .prologue
    .line 633
    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneModel()[B
    .locals 1

    .prologue
    .line 605
    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneNumber()[B
    .locals 1

    .prologue
    .line 595
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    return-object v0
.end method

.method private static getPlayerNameByte()[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    move-object v1, v2

    .line 552
    check-cast v1, [B

    .line 554
    .local v1, "rtnByte":[B
    :try_start_0
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v3, v3, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->textInputed:Ljava/lang/String;

    .line 555
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 561
    .end local v1    # "rtnByte":[B
    :goto_0
    return-object v1

    .line 556
    .restart local v1    # "rtnByte":[B
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    .line 559
    goto :goto_0
.end method

.method private static getPlayerNumberByte()[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    move-object v1, v2

    .line 574
    check-cast v1, [B

    .line 576
    .local v1, "rtnByte":[B
    :try_start_0
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    iget-object v3, v3, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->numberInputed:Ljava/lang/String;

    .line 577
    const-string v4, "KSC5601"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 583
    .end local v1    # "rtnByte":[B
    :goto_0
    return-object v1

    .line 578
    .restart local v1    # "rtnByte":[B
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    .line 581
    goto :goto_0
.end method

.method private static getSimSerialNumber()[B
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusUtils;->getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getTapjoyGpoint()V
    .locals 1

    .prologue
    .line 1428
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    check-cast v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getTapjoyGpoint()Z

    .line 1429
    return-void
.end method

.method public static getTapjoyReady()Z
    .locals 1

    .prologue
    .line 1414
    sget-boolean v0, Lcom/gamevil/nexus2/Natives;->bTapjoyReady:Z

    return v0
.end method

.method public static getTotalMemory()J
    .locals 2

    .prologue
    .line 876
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUsedMemory()J
    .locals 4

    .prologue
    .line 888
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v0, v0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static native handleCletEvent(IIII)V
.end method

.method public static hideAboutComponent()V
    .locals 2

    .prologue
    .line 1474
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$7;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1489
    return-void
.end method

.method public static hideHelpComponent()V
    .locals 2

    .prologue
    .line 1612
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$10;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1626
    return-void
.end method

.method public static hideLoadingDialog()V
    .locals 2

    .prologue
    .line 859
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$3;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 869
    return-void
.end method

.method public static hideMenuComponent()V
    .locals 2

    .prologue
    .line 1492
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$8;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1517
    return-void
.end method

.method public static hideMenuItemComponent()V
    .locals 2

    .prologue
    .line 1556
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$9;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1610
    return-void
.end method

.method public static hidePurchaseComponent()V
    .locals 2

    .prologue
    .line 2526
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mPurchaseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$16;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$16;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2632
    return-void
.end method

.method public static hideReplyMoveComponent()V
    .locals 2

    .prologue
    .line 3805
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mReplyMoveHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$35;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$35;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3850
    return-void
.end method

.method public static hideTitleComponent()V
    .locals 2

    .prologue
    .line 3514
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTitleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$32;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$32;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3529
    return-void
.end method

.method private static isAssetExist(Ljava/lang/String;)I
    .locals 7
    .param p0, "_fileName"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "==== isAssetExist "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 219
    .local v3, "readLen":I
    :try_start_0
    sget-object v4, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v4}, Lcom/gamevil/nexus2/NexusGLActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v4, v3

    .line 230
    :goto_0
    return v4

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 225
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :cond_0
    invoke-static {p0}, Lcom/gamevil/nexus2/Natives;->isDownloadFileExist(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    .line 227
    .local v1, "e1":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isDownloadFileExist(Ljava/lang/String;)I
    .locals 12
    .param p0, "_filepath"    # Ljava/lang/String;

    .prologue
    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/sdcard/gamevil/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "sdPath":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "==== isDownloadFileExist1 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 300
    .local v6, "length":I
    const/4 v4, 0x0

    .line 302
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 304
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 305
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 306
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :goto_0
    move v7, v6

    .line 336
    .end local v6    # "length":I
    .local v7, "length":I
    :goto_1
    return v7

    .line 310
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :cond_0
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->GetAbsolutPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 311
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "==== isDownloadFileExist2 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 315
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 316
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 317
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move v7, v6

    .line 318
    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 321
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move v7, v6

    .line 327
    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 324
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :catch_1
    move-exception v1

    .local v1, "e1":Ljava/io/IOException;
    move v7, v6

    .line 325
    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 328
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :catch_2
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v7, v6

    .line 334
    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 331
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :catch_3
    move-exception v1

    .restart local v1    # "e1":Ljava/io/IOException;
    move v7, v6

    .line 332
    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "length":I
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_3

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_3

    .line 321
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method private static isFileExist(Ljava/lang/String;)I
    .locals 7
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 429
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "||==========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|| isFileExist dataString "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "||==========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    sget-object v4, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v5, "gameSave"

    invoke-virtual {v4, v5, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 434
    .local v1, "pre":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    invoke-interface {v1, p0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 438
    invoke-static {v0}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 440
    .local v2, "rtn":[B
    array-length v3, v2

    .line 442
    .end local v2    # "rtn":[B
    :cond_0
    return v3
.end method

.method public static isGamevilLiveLogined()I
    .locals 1

    .prologue
    .line 947
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->isGamevilLiveLogined()I

    move-result v0

    return v0
.end method

.method public static isNetAvailable()I
    .locals 6

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "_reachable":Z
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 650
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 649
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 652
    .local v1, "conn_manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 653
    .local v2, "network_info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    const/4 v0, 0x1

    .line 661
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-----------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 662
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "|isNetAvailable()"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 663
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|\t_reachable = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 664
    if-eqz v2, :cond_0

    .line 665
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|\t network_info.getType() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+-----------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 668
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    :goto_1
    return v3

    .line 658
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 668
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private static loadFile(Ljava/lang/String;)[B
    .locals 6
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 473
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "||==========================="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|| Load  = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v4, "gameSave"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 477
    .local v1, "pre":Landroid/content/SharedPreferences;
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 480
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|| dataString "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "||==========================="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    invoke-static {v0}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 487
    :cond_0
    return-object v2
.end method

.method private static loadFileFromStorage(Ljava/lang/String;)[B
    .locals 15
    .param p0, "_filepath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v14, -0x1

    .line 343
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "| loadFileFromStorage "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .local v5, "fis":Ljava/io/FileInputStream;
    move-object v8, v10

    .line 346
    check-cast v8, [B

    .line 348
    .local v8, "rtnBytes":[B
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/sdcard/gamevil/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, "sdPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 354
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 356
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v11

    new-array v2, v11, [B

    .line 357
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 360
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "readLen":I
    if-ne v7, v14, :cond_1

    .line 364
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 365
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 366
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    move-object v10, v8

    .line 422
    .end local v2    # "buffer":[B
    .end local v7    # "readLen":I
    :cond_0
    :goto_1
    return-object v10

    .line 361
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "readLen":I
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 370
    .end local v7    # "readLen":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 371
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v3, "e1":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    if-eqz v5, :cond_2

    .line 374
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 375
    :cond_2
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 377
    :catch_1
    move-exception v11

    goto :goto_1

    .line 383
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "| loadFileFromStorage file not found : sdcard "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->GetAbsolutPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 386
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 391
    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 392
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v11

    new-array v2, v11, [B

    .line 393
    .restart local v2    # "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 396
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .restart local v7    # "readLen":I
    if-ne v7, v14, :cond_4

    .line 400
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 401
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 402
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    move-object v10, v8

    .line 404
    goto :goto_1

    .line 397
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 405
    .end local v7    # "readLen":I
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 406
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "e1":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    if-eqz v5, :cond_5

    .line 409
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 410
    :cond_5
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 412
    :catch_3
    move-exception v11

    goto/16 :goto_1

    .line 418
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_6
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "| loadFileFromStorage file not found : Absol_path "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 405
    :catch_4
    move-exception v3

    goto :goto_4

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 370
    :catch_6
    move-exception v3

    goto/16 :goto_2

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static netConnect()I
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->isNetAvailable()I

    move-result v0

    return v0
.end method

.method public static openPurchasePopup(IILjava/lang/String;)V
    .locals 3
    .param p0, "n"    # I
    .param p1, "zen"    # I
    .param p2, "money"    # Ljava/lang/String;

    .prologue
    .line 2989
    sget-boolean v0, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    if-nez v0, :cond_0

    .line 2991
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    .line 2992
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_KOR:I

    if-ne v0, v1, :cond_1

    .line 2994
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2995
    const-string v1, "ZEN \uad6c\ub9e4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3002
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do you want to buy one "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ZEN for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3012
    const-string v1, "\uc608"

    new-instance v2, Lcom/gamevil/nexus2/Natives$19;

    invoke-direct {v2, p2, p0}, Lcom/gamevil/nexus2/Natives$19;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3019
    const-string v1, "\uc544\ub2c8\uc624"

    new-instance v2, Lcom/gamevil/nexus2/Natives$20;

    invoke-direct {v2}, Lcom/gamevil/nexus2/Natives$20;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3027
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3219
    :cond_0
    :goto_0
    return-void

    .line 3029
    :cond_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_JPN:I

    if-ne v0, v1, :cond_2

    .line 3031
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3032
    const-string v1, "ZEN\u3092\u8cfc\u5165"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ZEN\u3092"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3067\u8cfc\u5165\u3057\u307e\u3059\u304b?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3049
    const-string v1, "\u306f\u3044"

    new-instance v2, Lcom/gamevil/nexus2/Natives$21;

    invoke-direct {v2, p2, p0}, Lcom/gamevil/nexus2/Natives$21;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3056
    const-string v1, "\u3044\u3044\u3048"

    new-instance v2, Lcom/gamevil/nexus2/Natives$22;

    invoke-direct {v2}, Lcom/gamevil/nexus2/Natives$22;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3064
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3066
    :cond_2
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_CHI:I

    if-ne v0, v1, :cond_3

    .line 3068
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3069
    const-string v1, "\u8d2d\u4e70ZEN"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3076
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u613f\u610f\u7528\u9c9c\u89c1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ZEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3086
    const-string v1, "\u662f"

    new-instance v2, Lcom/gamevil/nexus2/Natives$23;

    invoke-direct {v2, p2, p0}, Lcom/gamevil/nexus2/Natives$23;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3093
    const-string v1, "\u4e0d"

    new-instance v2, Lcom/gamevil/nexus2/Natives$24;

    invoke-direct {v2}, Lcom/gamevil/nexus2/Natives$24;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3107
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3108
    const-string v1, "Purchase"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do you want to buy one "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ZEN for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3126
    const-string v1, "Yes"

    new-instance v2, Lcom/gamevil/nexus2/Natives$25;

    invoke-direct {v2, p2, p0}, Lcom/gamevil/nexus2/Natives$25;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3133
    const-string v1, "No"

    new-instance v2, Lcom/gamevil/nexus2/Natives$26;

    invoke-direct {v2}, Lcom/gamevil/nexus2/Natives$26;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public static openPurchaseSuccess()V
    .locals 2

    .prologue
    .line 1341
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$5;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1396
    return-void
.end method

.method public static openStoreWithProductId(Ljava/lang/String;)V
    .locals 0
    .param p0, "_pid"    # Ljava/lang/String;

    .prologue
    .line 1167
    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 4
    .param p0, "_query"    # Ljava/lang/String;

    .prologue
    .line 1129
    :try_start_0
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {p0}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :goto_0
    return-void

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static printErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 2635
    .line 2636
    const-string v0, "%s(...) : ERROR : %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 2637
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2636
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2635
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    return-void
.end method

.method private static readAssete(Ljava/lang/String;)[B
    .locals 12
    .param p0, "_fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 241
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "==== readAssete "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    const/4 v5, 0x0

    .line 243
    .local v5, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 247
    check-cast v7, [B

    .line 249
    .local v7, "rtnBytes":[B
    :try_start_0
    sget-object v9, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v9}, Lcom/gamevil/nexus2/NexusGLActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 251
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v2, v9, [B

    .line 252
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 255
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "readLen":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 259
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 261
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v0, v1

    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    move-object v8, v7

    .line 279
    .end local v2    # "buffer":[B
    .end local v6    # "readLen":I
    :goto_1
    return-object v8

    .line 256
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "readLen":I
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    .end local v6    # "readLen":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 265
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "==== readAssete IOException"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    if-eqz v5, :cond_1

    .line 268
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    :cond_1
    if-eqz v0, :cond_2

    .line 274
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 279
    :cond_2
    invoke-static {p0}, Lcom/gamevil/nexus2/Natives;->loadFileFromStorage(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_1

    .line 269
    :catch_1
    move-exception v4

    .line 270
    .local v4, "e1":Ljava/io/IOException;
    goto :goto_1

    .line 275
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 276
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_1

    .line 264
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static reqestGamevilLiveLogin()V
    .locals 1

    .prologue
    .line 952
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->reqestGamevilLiveLogin()V

    .line 953
    return-void
.end method

.method private static requestIAP(ILjava/lang/String;[B)V
    .locals 3
    .param p0, "_idx"    # I
    .param p1, "_pID"    # Ljava/lang/String;
    .param p2, "_itemName"    # [B

    .prologue
    .line 1040
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1041
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|\trequestIAP  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1042
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+---------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1044
    sput-object p1, Lcom/gamevil/nexus2/NexusGLActivity;->pID:Ljava/lang/String;

    .line 1045
    sput p0, Lcom/gamevil/nexus2/NexusGLActivity;->pIdIndex:I

    .line 1047
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$4;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1053
    return-void
.end method

.method private static saveFile(Ljava/lang/String;[B)I
    .locals 7
    .param p0, "_name"    # Ljava/lang/String;
    .param p1, "pData"    # [B

    .prologue
    .line 447
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "||==========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|| Save data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    array-length v2, p1

    .line 451
    .local v2, "length":I
    invoke-static {p1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "dataString":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|| dataString "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "||==========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v4, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v5, "gameSave"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 457
    .local v3, "pre":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 458
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/gamevil/nexus2/Natives$1;

    invoke-direct {v5, v1}, Lcom/gamevil/nexus2/Natives$1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 466
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 468
    return v2
.end method

.method public static saveGLOptionLinear(I)V
    .locals 5
    .param p0, "_mode"    # I

    .prologue
    .line 996
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v3, "glOptions"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 997
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 998
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "glQuality"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1001
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1002
    return-void
.end method

.method public static setEventListener(Lcom/gamevil/nexus2/Natives$EventListener;)V
    .locals 0
    .param p0, "_listener"    # Lcom/gamevil/nexus2/Natives$EventListener;

    .prologue
    .line 129
    sput-object p0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    .line 130
    return-void
.end method

.method private static setLocalPushNotification(I[B[B[B[BI)V
    .locals 13
    .param p0, "_pushId"    # I
    .param p1, "_title"    # [B
    .param p2, "_sender"    # [B
    .param p3, "_message"    # [B
    .param p4, "_callbackUrl"    # [B
    .param p5, "_seconds"    # I

    .prologue
    .line 893
    const/4 v3, 0x0

    .line 894
    .local v3, "title":Ljava/lang/String;
    const/4 v4, 0x0

    .line 895
    .local v4, "sender":Ljava/lang/String;
    const/4 v5, 0x0

    .line 896
    .local v5, "message":Ljava/lang/String;
    const/4 v6, 0x0

    .line 898
    .local v6, "callback":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v12, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .end local v3    # "title":Ljava/lang/String;
    .local v12, "title":Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v11, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 900
    .end local v4    # "sender":Ljava/lang/String;
    .local v11, "sender":Ljava/lang/String;
    :try_start_2
    new-instance v10, Ljava/lang/String;

    const-string v1, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 901
    .end local v5    # "message":Ljava/lang/String;
    .local v10, "message":Ljava/lang/String;
    :try_start_3
    new-instance v8, Ljava/lang/String;

    const-string v1, "UTF-8"

    move-object/from16 v0, p4

    invoke-direct {v8, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v6    # "callback":Ljava/lang/String;
    .local v8, "callback":Ljava/lang/String;
    move-object v6, v8

    .end local v8    # "callback":Ljava/lang/String;
    .restart local v6    # "callback":Ljava/lang/String;
    move-object v5, v10

    .end local v10    # "message":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    move-object v4, v11

    .end local v11    # "sender":Ljava/lang/String;
    .restart local v4    # "sender":Ljava/lang/String;
    move-object v3, v12

    .line 907
    .end local v12    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    move v2, p0

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/gamevil/nexus2/xml/NexusUtils;->setLocalPushNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 908
    return-void

    .line 902
    :catch_0
    move-exception v9

    .line 904
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 902
    .end local v3    # "title":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v12    # "title":Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v3, v12

    .end local v12    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1

    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "sender":Ljava/lang/String;
    .restart local v11    # "sender":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v4, v11

    .end local v11    # "sender":Ljava/lang/String;
    .restart local v4    # "sender":Ljava/lang/String;
    move-object v3, v12

    .end local v12    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1

    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "sender":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v11    # "sender":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/String;
    :catch_3
    move-exception v9

    move-object v5, v10

    .end local v10    # "message":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    move-object v4, v11

    .end local v11    # "sender":Ljava/lang/String;
    .restart local v4    # "sender":Ljava/lang/String;
    move-object v3, v12

    .end local v12    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public static setMenuItemResId()V
    .locals 2

    .prologue
    .line 1519
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_JPN:I

    if-ne v0, v1, :cond_0

    .line 1521
    const v0, 0x7f080035

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_community_id:I

    .line 1522
    const v0, 0x7f080039

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_options_id:I

    .line 1523
    const v0, 0x7f080038

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_newgame_id:I

    .line 1524
    const v0, 0x7f080036

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_continue_id:I

    .line 1525
    const v0, 0x7f080037

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_help_id:I

    .line 1526
    const v0, 0x7f080034

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_about_id:I

    .line 1554
    :goto_0
    return-void

    .line 1528
    :cond_0
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_CHI:I

    if-ne v0, v1, :cond_1

    .line 1530
    const v0, 0x7f08003b

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_community_id:I

    .line 1531
    const v0, 0x7f08003f

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_options_id:I

    .line 1532
    const v0, 0x7f08003e

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_newgame_id:I

    .line 1533
    const v0, 0x7f08003c

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_continue_id:I

    .line 1534
    const v0, 0x7f08003d

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_help_id:I

    .line 1535
    const v0, 0x7f08003a

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_about_id:I

    goto :goto_0

    .line 1537
    :cond_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_KOR:I

    if-ne v0, v1, :cond_2

    .line 1539
    const v0, 0x7f08002f

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_community_id:I

    .line 1540
    const v0, 0x7f080033

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_options_id:I

    .line 1541
    const v0, 0x7f080032

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_newgame_id:I

    .line 1542
    const v0, 0x7f080030

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_continue_id:I

    .line 1543
    const v0, 0x7f080031

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_help_id:I

    .line 1544
    const v0, 0x7f08002e

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_about_id:I

    goto :goto_0

    .line 1547
    :cond_2
    const v0, 0x7f080029

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_community_id:I

    .line 1548
    const v0, 0x7f08002d

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_options_id:I

    .line 1549
    const v0, 0x7f08002c

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_newgame_id:I

    .line 1550
    const v0, 0x7f08002a

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_continue_id:I

    .line 1551
    const v0, 0x7f08002b

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_help_id:I

    .line 1552
    const v0, 0x7f080028

    sput v0, Lcom/gamevil/nexus2/Natives;->img_menu_about_id:I

    goto :goto_0
.end method

.method public static setNamePurchaseComponent()V
    .locals 1

    .prologue
    .line 1981
    const v0, 0x7f080040

    sput v0, Lcom/gamevil/nexus2/Natives;->bgName:I

    .line 1982
    const v0, 0x7f080041

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName0:I

    .line 1983
    const v0, 0x7f080042

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName1:I

    .line 1984
    const v0, 0x7f080043

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName2:I

    .line 1985
    const v0, 0x7f080044

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName3:I

    .line 1986
    const v0, 0x7f080045

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName4:I

    .line 1987
    const v0, 0x7f080046

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName5:I

    .line 1988
    const v0, 0x7f080047

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName6:I

    .line 1989
    const v0, 0x7f080048

    sput v0, Lcom/gamevil/nexus2/Natives;->btnName7:I

    .line 1992
    return-void
.end method

.method public static setPurchaseChange(I)V
    .locals 2
    .param p0, "bSet"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1325
    if-nez p0, :cond_0

    .line 1327
    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bPurchaseConnect:Z

    .line 1328
    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    .line 1336
    :goto_0
    return-void

    .line 1333
    :cond_0
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->bPurchaseConnect:Z

    .line 1334
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    goto :goto_0
.end method

.method public static setReplyresId()V
    .locals 4

    .prologue
    const v3, 0x7f08004b

    const v2, 0x7f08004a

    .line 3538
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_KOR:I

    if-ne v0, v1, :cond_0

    .line 3540
    const v0, 0x7f080024

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_page_back_id:I

    .line 3541
    sput v2, Lcom/gamevil/nexus2/Natives;->reply_write_id:I

    .line 3542
    sput v3, Lcom/gamevil/nexus2/Natives;->reply_later_id:I

    .line 3562
    :goto_0
    return-void

    .line 3544
    :cond_0
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_JPN:I

    if-ne v0, v1, :cond_1

    .line 3546
    const v0, 0x7f080025

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_page_back_id:I

    .line 3547
    const v0, 0x7f08004f

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_write_id:I

    .line 3548
    const v0, 0x7f08004e

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_later_id:I

    goto :goto_0

    .line 3550
    :cond_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    sget v1, Lcom/gamevil/nexus2/Natives;->LANGUAGE_TYPE_CHI:I

    if-ne v0, v1, :cond_2

    .line 3552
    const v0, 0x7f080026

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_page_back_id:I

    .line 3553
    sput v2, Lcom/gamevil/nexus2/Natives;->reply_write_id:I

    .line 3554
    sput v3, Lcom/gamevil/nexus2/Natives;->reply_later_id:I

    goto :goto_0

    .line 3558
    :cond_2
    const v0, 0x7f080023

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_page_back_id:I

    .line 3559
    const v0, 0x7f08004c

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_write_id:I

    .line 3560
    const v0, 0x7f08004d

    sput v0, Lcom/gamevil/nexus2/Natives;->reply_later_id:I

    goto :goto_0
.end method

.method public static setTapjoyReady(Z)V
    .locals 3
    .param p0, "isReady"    # Z

    .prologue
    .line 1404
    const-string v0, "## setTapjoyReady :  ##"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->getTapjoyGpoint()V

    .line 1408
    sput-boolean p0, Lcom/gamevil/nexus2/Natives;->bTapjoyReady:Z

    .line 1410
    return-void
.end method

.method public static setUIListener(Lcom/gamevil/nexus2/Natives$UIListener;)V
    .locals 0
    .param p0, "_listener"    # Lcom/gamevil/nexus2/Natives$UIListener;

    .prologue
    .line 164
    sput-object p0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    .line 165
    return-void
.end method

.method public static showAboutComponent()V
    .locals 2

    .prologue
    .line 1638
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$11;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1673
    return-void
.end method

.method public static showHelpComponent()V
    .locals 2

    .prologue
    .line 1921
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$14;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1952
    return-void
.end method

.method public static showLoadingDialog()V
    .locals 2

    .prologue
    .line 836
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "showLoadingDialog2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 837
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$2;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 856
    return-void
.end method

.method public static showMenuComponent()V
    .locals 3

    .prologue
    .line 3682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3683
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3682
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3685
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3684
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$34;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$34;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3802
    return-void
.end method

.method public static showMenuItemComponent()V
    .locals 2

    .prologue
    .line 1698
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$13;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$13;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1918
    return-void
.end method

.method public static showPurchaseComponent()V
    .locals 2

    .prologue
    .line 1994
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mPurchaseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$15;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$15;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2523
    return-void
.end method

.method public static showReplyMoveComponent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3565
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3564
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3567
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3566
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    const v0, 0x7a120

    invoke-static {v0, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 3571
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mReplyMoveHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$33;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3678
    return-void
.end method

.method public static showTitleComponent()V
    .locals 2

    .prologue
    .line 1437
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTitleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$6;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1472
    return-void
.end method

.method public static startPurchase(Ljava/lang/String;I)V
    .locals 2
    .param p0, "money"    # Ljava/lang/String;
    .param p1, "n"    # I

    .prologue
    .line 3360
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$27;

    invoke-direct {v1, p1}, Lcom/gamevil/nexus2/Natives$27;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3394
    return-void
.end method

.method private static stopAndroidSound()V
    .locals 0

    .prologue
    .line 511
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 512
    return-void
.end method

.method public static trackEventDispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "_action"    # Ljava/lang/String;
    .param p1, "_lable"    # Ljava/lang/String;

    .prologue
    .line 925
    invoke-static {p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity;->AnalyticsTrackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public static trackPageViewDispatch(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 920
    invoke-static {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->AnalyticsTrackPageView(Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method private static vibrateAndroid(I)V
    .locals 0
    .param p0, "_time"    # I

    .prologue
    .line 515
    invoke-static {p0}, Lcom/gamevil/nexus2/ui/NexusSound;->Vibrator(I)V

    .line 516
    return-void
.end method


# virtual methods
.method public availableSize(Ljava/lang/String;)J
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1219
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    .line 1221
    .local v0, "blockSize":I
    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    return-wide v2
.end method
