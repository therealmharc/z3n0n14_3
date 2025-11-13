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
.field static OFFSET_TAPJOY_BANNER_TOPMARGIN:I = 0x0

.field static final REPLY_OFFSET_LEFTMARGIN_0:I = 0x14

.field static final REPLY_OFFSET_LEFTMARGIN_1:I = 0xb4

.field static final REPLY_OFFSET_TOPMARGIN_0:I = 0xaa

.field public static bOpenPurchasePopup:Z

.field public static bPurchaseConnect:Z

.field private static bTapjoyReady:Z

.field private static eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

.field static gPoint:Ljava/lang/String;

.field static img_btn_later:Landroid/widget/ImageButton;

.field static img_btn_write:Landroid/widget/ImageButton;

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

.field public static reserveMenu:Z

.field static txt_Gpoint:Landroid/widget/TextView;

.field private static uiListener:Lcom/gamevil/nexus2/Natives$UIListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    sput v0, Lcom/gamevil/nexus2/Natives;->language:I

    .line 195
    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bPurchaseConnect:Z

    .line 197
    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    .line 200
    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bTapjoyReady:Z

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mGpointHandler:Landroid/os/Handler;

    .line 1312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    .line 1313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mHandler2:Landroid/os/Handler;

    .line 1355
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mTitleHandler:Landroid/os/Handler;

    .line 1412
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mReplyMoveHandler:Landroid/os/Handler;

    .line 1543
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    .line 1609
    const/16 v0, 0xbe

    sput v0, Lcom/gamevil/nexus2/Natives;->OFFSET_TAPJOY_BANNER_TOPMARGIN:I

    .line 1663
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    .line 1664
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mAboutHandler:Landroid/os/Handler;

    .line 1665
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mMenuHandler:Landroid/os/Handler;

    .line 1666
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    .line 1667
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/nexus2/Natives;->mPurchaseHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GWSwapBuffers()V
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    invoke-interface {v0}, Lcom/gamevil/nexus2/Natives$EventListener;->GWSwapBuffers()V

    .line 340
    :cond_0
    return-void
.end method

.method public static HideTapjoyAd()V
    .locals 2

    .prologue
    .line 1642
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$12;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1655
    return-void
.end method

.method public static HideTapjoyOffer()V
    .locals 2

    .prologue
    .line 1596
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$10;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1607
    return-void
.end method

.method public static native InitializeJNIGlobalRef()V
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

.method public static NetErrorDialog(I)V
    .locals 3
    .param p0, "ack"    # I

    .prologue
    .line 3120
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

    .line 3122
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$25;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/Natives$25;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3279
    return-void
.end method

.method public static NetErrorDialogException(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3079
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$24;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/Natives$24;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3115
    return-void
.end method

.method public static NexusSetMaxLengthNumberInput(I)V
    .locals 3
    .param p0, "nLength"    # I

    .prologue
    .line 701
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#########  nLength : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sput p0, Lcom/gamevil/nexus2/ui/UIEditNumber;->MAX_NUMBER_LENGTH:I

    .line 703
    return-void
.end method

.method public static NexusSetMaxLengthTextInput(I)V
    .locals 3
    .param p0, "nLength"    # I

    .prologue
    .line 696
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#########  nLength : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    sput p0, Lcom/gamevil/nexus2/ui/UIEditText;->MAX_NUMBER_LENGTH:I

    .line 698
    return-void
.end method

.method private static OnEvent(I)V
    .locals 1
    .param p0, "_event"    # I

    .prologue
    .line 381
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnEvent(I)V

    .line 382
    return-void
.end method

.method private static OnMessage(Ljava/lang/String;)V
    .locals 1
    .param p0, "_msg"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$EventListener;->OnMessage(Ljava/lang/String;)V

    .line 334
    :cond_0
    return-void
.end method

.method private static OnSoundPlay(IIZ)V
    .locals 1
    .param p0, "sndID"    # I
    .param p1, "vol"    # I
    .param p2, "isLoop"    # Z

    .prologue
    .line 369
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/gamevil/nexus2/Natives$UIListener;->OnSoundPlay(IIZ)V

    .line 370
    return-void
.end method

.method private static OnStopSound()V
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnStopSound()V

    .line 374
    return-void
.end method

.method private static OnUIStatusChange(I)V
    .locals 1
    .param p0, "_status"    # I

    .prologue
    .line 365
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnUIStatusChange(I)V

    .line 366
    return-void
.end method

.method private static OnVibrate(I)V
    .locals 1
    .param p0, "_time"    # I

    .prologue
    .line 377
    sget-object v0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    invoke-interface {v0, p0}, Lcom/gamevil/nexus2/Natives$UIListener;->OnVibrate(I)V

    .line 378
    return-void
.end method

.method public static OpenTapjoyOffer()V
    .locals 1

    .prologue
    .line 3031
    sget-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    check-cast v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->openTapjoyOffer()V

    .line 3032
    return-void
.end method

.method private static SetSpeed(I)V
    .locals 0
    .param p0, "_speed"    # I

    .prologue
    .line 650
    invoke-static {p0}, Lcom/gamevil/nexus2/NexusGLThread;->SetFPS(I)V

    .line 651
    return-void
.end method

.method public static ShowTapjoyAd()V
    .locals 2

    .prologue
    .line 1613
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$11;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1638
    return-void
.end method

.method public static ShowTapjoyOffer()V
    .locals 2

    .prologue
    .line 1549
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTapjoyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$9;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1592
    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 1336
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$1(ILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 2789
    invoke-static {p0, p1, p2}, Lcom/gamevil/nexus2/Natives;->requestIAP(ILjava/lang/String;[B)V

    return-void
.end method

.method private static blinkSButton(I)V
    .locals 1
    .param p0, "blink"    # I

    .prologue
    .line 2775
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->blinkSButton(I)V

    .line 2776
    return-void
.end method

.method private static changeUIStatus(I)V
    .locals 1
    .param p0, "_status"    # I

    .prologue
    .line 654
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->changeUIStatus(I)V

    .line 655
    return-void
.end method

.method private static clearPlayerName()V
    .locals 2

    .prologue
    .line 692
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    const-string v1, ""

    iput-object v1, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 693
    return-void
.end method

.method private static finishApp()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method private static getAbsolueFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/NexusGLActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 573
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "filePath":Ljava/lang/String;
    return-object v0
.end method

.method private static getGLOptionLinear()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3050
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3051
    const-string v2, "glOptions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3052
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=== getGLOptionLinear settings.getInt = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "glQuality"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3053
    const-string v1, "glQuality"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getGPoint(I)V
    .locals 3
    .param p0, "_n"    # I

    .prologue
    .line 296
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

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    .line 300
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

    .line 302
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$2;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method private static getInetHostAddress(Ljava/lang/String;)[B
    .locals 1
    .param p0, "_url"    # Ljava/lang/String;

    .prologue
    .line 216
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
    .line 290
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

    .line 292
    sput p0, Lcom/gamevil/nexus2/Natives;->language:I

    .line 293
    return-void
.end method

.method public static getLocaleID()I
    .locals 2

    .prologue
    .line 515
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    .line 519
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    const/4 v0, 0x3

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    const/4 v0, 0x4

    goto :goto_0

    .line 527
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    const/4 v0, 0x5

    goto :goto_0

    .line 533
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getPhoneModel()[B
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 712
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 714
    .local v0, "_model":Ljava/lang/String;
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "######### getPhoneModel() Length :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ###########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 718
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 720
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "######### 20 Over!! - after Cut Length :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ###########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static getPhoneNumber()[B
    .locals 1

    .prologue
    .line 707
    invoke-static {}, Lcom/gamevil/nexus2/NexusGLActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    return-object v0
.end method

.method private static getPlayerNameByte()[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    move-object v1, v2

    .line 662
    check-cast v1, [B

    .line 664
    .local v1, "rtnByte":[B
    :try_start_0
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v3, v3, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 665
    const-string v4, "KSC5601"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    .end local v1    # "rtnByte":[B
    :goto_0
    return-object v1

    .line 666
    .restart local v1    # "rtnByte":[B
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    .line 669
    goto :goto_0
.end method

.method private static getPlayerNumberByte()[B
    .locals 3

    .prologue
    .line 676
    const/4 v0, 0x0

    check-cast v0, [B

    .line 678
    .local v0, "rtnByte":[B
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 679
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    const-string v2, " "

    iput-object v2, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    .line 682
    :cond_0
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 684
    return-object v0
.end method

.method public static getTapjoyGpoint()V
    .locals 1

    .prologue
    .line 3036
    sget-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    check-cast v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getTapjoyGpoint()Z

    .line 3037
    return-void
.end method

.method public static getTapjoyReady()Z
    .locals 1

    .prologue
    .line 285
    sget-boolean v0, Lcom/gamevil/nexus2/Natives;->bTapjoyReady:Z

    return v0
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2770
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v0, v0, Lcom/gamevil/nexus2/NexusGLActivity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static native handleCletEvent(IIII)V
.end method

.method public static hideAboutComponent()V
    .locals 2

    .prologue
    .line 2192
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$20;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$20;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2206
    return-void
.end method

.method public static hideHelpComponent()V
    .locals 2

    .prologue
    .line 2141
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$18;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$18;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2155
    return-void
.end method

.method private static hideLoadingDialog()V
    .locals 2

    .prologue
    .line 1337
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$4;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1345
    return-void
.end method

.method public static hideMenuComponent()V
    .locals 2

    .prologue
    .line 1797
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$14;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1822
    return-void
.end method

.method public static hideMenuItemComponent()V
    .locals 2

    .prologue
    .line 2052
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$16;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$16;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2102
    return-void
.end method

.method public static hidePurchaseComponent()V
    .locals 2

    .prologue
    .line 2659
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mPurchaseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$22;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$22;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2765
    return-void
.end method

.method public static hideReplyMoveComponent()V
    .locals 2

    .prologue
    .line 1499
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mReplyMoveHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$8;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1539
    return-void
.end method

.method public static hideTitleComponent()V
    .locals 2

    .prologue
    .line 1395
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTitleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$6;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1410
    return-void
.end method

.method private static isAssetExist(Ljava/lang/String;)I
    .locals 5
    .param p0, "_fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 400
    const/4 v2, 0x0

    .line 402
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v4, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v4}, Lcom/gamevil/nexus2/NexusGLActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 403
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 404
    .local v3, "readLen":I
    const/4 p0, 0x0

    .line 414
    .end local v3    # "readLen":I
    :cond_0
    :goto_0
    return v3

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/io/IOException;
    const/4 p0, 0x0

    .line 409
    if-eqz v2, :cond_0

    .line 410
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 411
    :catch_1
    move-exception v1

    .line 412
    .local v1, "e1":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static isFileExist(Ljava/lang/String;)I
    .locals 4
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v3, p0}, Lcom/gamevil/nexus2/NexusGLActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 482
    :cond_0
    :goto_0
    return v2

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_0

    .line 474
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 475
    :catch_1
    move-exception v3

    goto :goto_0

    .line 480
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static isNetAvailable()I
    .locals 6

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 746
    .local v0, "_reachable":Z
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 747
    .local v1, "conn_manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 748
    .local v2, "network_info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    const/4 v0, 0x1

    .line 751
    const-string v3, "#Java#"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#### isReachable #### "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static loadFile(Ljava/lang/String;)[B
    .locals 8
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 540
    const/4 v5, 0x0

    .line 541
    .local v5, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 543
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v7, p0}, Lcom/gamevil/nexus2/NexusGLActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 545
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 546
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "readLen":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 553
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 554
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 555
    .local v3, "data":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v0, v1

    .line 568
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "data":[B
    .end local v6    # "readLen":I
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v3

    .line 550
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "readLen":I
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 558
    .end local v6    # "readLen":I
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 560
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v5, :cond_1

    .line 561
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 562
    :cond_1
    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 568
    :cond_2
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 564
    :catch_1
    move-exception v7

    goto :goto_3

    .line 558
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method private static netConnect()I
    .locals 1

    .prologue
    .line 1307
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
    .line 3288
    sget-boolean v0, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    if-nez v0, :cond_0

    .line 3290
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    .line 3292
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    if-nez v0, :cond_1

    .line 3297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3298
    const-string v1, "Purchase"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3306
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

    .line 3316
    const-string v1, "Yes"

    new-instance v2, Lcom/gamevil/nexus2/Natives$26;

    invoke-direct {v2, p2, p0}, Lcom/gamevil/nexus2/Natives$26;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3323
    const-string v1, "No"

    new-instance v2, Lcom/gamevil/nexus2/Natives$27;

    invoke-direct {v2}, Lcom/gamevil/nexus2/Natives$27;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3370
    :cond_0
    :goto_0
    return-void

    .line 3333
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3334
    const-string v1, "ZEN \uad6c\ub9e4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3341
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

    .line 3351
    const-string v1, "\uc608"

    new-instance v2, Lcom/gamevil/nexus2/Natives$28;

    invoke-direct {v2, p2, p0}, Lcom/gamevil/nexus2/Natives$28;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3358
    const-string v1, "\uc544\ub2c8\uc624"

    new-instance v2, Lcom/gamevil/nexus2/Natives$29;

    invoke-direct {v2}, Lcom/gamevil/nexus2/Natives$29;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static openPurchaseSuccess()V
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$1;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method public static openStoreWithProductId(Ljava/lang/String;)V
    .locals 0
    .param p0, "_pid"    # Ljava/lang/String;

    .prologue
    .line 2981
    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 4
    .param p0, "_query"    # Ljava/lang/String;

    .prologue
    .line 2943
    :try_start_0
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {p0}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2944
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2943
    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2948
    :goto_0
    return-void

    .line 2945
    :catch_0
    move-exception v0

    .line 2946
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
    .line 3072
    .line 3073
    const-string v0, "%s(...) : ERROR : %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 3074
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3073
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3072
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return-void
.end method

.method private static readAssete(Ljava/lang/String;)[B
    .locals 9
    .param p0, "_fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 426
    const/4 v4, 0x0

    .line 427
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .line 431
    check-cast v6, [B

    .line 433
    .local v6, "rtnBytes":[B
    :try_start_0
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v8}, Lcom/gamevil/nexus2/NexusGLActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 435
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v2, v8, [B

    .line 436
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 439
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "readLen":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 443
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 444
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 445
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v0, v1

    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    move-object v7, v6

    .line 460
    .end local v2    # "buffer":[B
    .end local v5    # "readLen":I
    :cond_0
    :goto_1
    return-object v7

    .line 440
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "readLen":I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 448
    .end local v5    # "readLen":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 451
    .end local v1    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_2

    .line 452
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 456
    :cond_2
    :goto_3
    if-eqz v0, :cond_0

    .line 457
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 458
    :catch_1
    move-exception v8

    goto :goto_1

    .line 453
    :catch_2
    move-exception v8

    goto :goto_3

    .line 448
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method private static requestIAP(ILjava/lang/String;[B)V
    .locals 2
    .param p0, "_idx"    # I
    .param p1, "_pID"    # Ljava/lang/String;
    .param p2, "_itemName"    # [B

    .prologue
    .line 2832
    sput-object p1, Lcom/gamevil/nexus2/NexusGLActivity;->pID:Ljava/lang/String;

    .line 2833
    sput p0, Lcom/gamevil/nexus2/NexusGLActivity;->pIdIndex:I

    .line 2835
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$23;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$23;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2847
    return-void
.end method

.method private static saveFile(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "_name"    # Ljava/lang/String;
    .param p1, "pData"    # [B

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 496
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 497
    const/4 v3, 0x0

    .line 496
    invoke-virtual {v2, p0, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 495
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    :try_start_1
    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 499
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    if-eqz v1, :cond_2

    .line 506
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 511
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v2

    .line 504
    :goto_1
    if-eqz v0, :cond_0

    .line 506
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 507
    :catch_1
    move-exception v2

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v2

    .line 504
    :goto_2
    if-eqz v0, :cond_1

    .line 506
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 510
    :cond_1
    :goto_3
    throw v2

    .line 507
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_3

    .line 503
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 501
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method public static saveGLOptionLinear(I)V
    .locals 5
    .param p0, "_mode"    # I

    .prologue
    .line 3061
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3062
    const-string v3, "glOptions"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3063
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3064
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "glQuality"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3067
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3068
    return-void
.end method

.method public static setEventListener(Lcom/gamevil/nexus2/Natives$EventListener;)V
    .locals 0
    .param p0, "_listener"    # Lcom/gamevil/nexus2/Natives$EventListener;

    .prologue
    .line 327
    sput-object p0, Lcom/gamevil/nexus2/Natives;->eventListener:Lcom/gamevil/nexus2/Natives$EventListener;

    .line 328
    return-void
.end method

.method public static setPurchaseChange(I)V
    .locals 2
    .param p0, "bSet"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    if-nez p0, :cond_0

    .line 223
    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bPurchaseConnect:Z

    .line 224
    sput-boolean v0, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->bPurchaseConnect:Z

    .line 230
    sput-boolean v1, Lcom/gamevil/nexus2/Natives;->bOpenPurchasePopup:Z

    goto :goto_0
.end method

.method public static setTapjoyReady(Z)V
    .locals 3
    .param p0, "isReady"    # Z

    .prologue
    .line 276
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

    .line 278
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->getTapjoyGpoint()V

    .line 280
    sput-boolean p0, Lcom/gamevil/nexus2/Natives;->bTapjoyReady:Z

    .line 281
    return-void
.end method

.method public static setUIListener(Lcom/gamevil/nexus2/Natives$UIListener;)V
    .locals 0
    .param p0, "_listener"    # Lcom/gamevil/nexus2/Natives$UIListener;

    .prologue
    .line 361
    sput-object p0, Lcom/gamevil/nexus2/Natives;->uiListener:Lcom/gamevil/nexus2/Natives$UIListener;

    .line 362
    return-void
.end method

.method public static showAboutComponent()V
    .locals 2

    .prologue
    .line 2158
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$19;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$19;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2189
    return-void
.end method

.method public static showHelpComponent()V
    .locals 2

    .prologue
    .line 2107
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHelpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$17;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$17;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2138
    return-void
.end method

.method private static showLoadingDialog()V
    .locals 2

    .prologue
    .line 1317
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$3;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1334
    return-void
.end method

.method public static showMenuComponent()V
    .locals 3

    .prologue
    .line 1670
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

    .line 1671
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1670
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
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

    .line 1673
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1672
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$13;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$13;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1793
    return-void
.end method

.method public static showMenuItemComponent()V
    .locals 2

    .prologue
    .line 1825
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mMenuItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$15;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$15;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2049
    return-void
.end method

.method private static showMylSButton(I)V
    .locals 1
    .param p0, "show"    # I

    .prologue
    .line 2779
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v0, p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->showMylSButton(I)V

    .line 2781
    return-void
.end method

.method public static showPurchaseComponent()V
    .locals 2

    .prologue
    .line 2209
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mPurchaseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$21;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$21;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2656
    return-void
.end method

.method public static showReplyMoveComponent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1419
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

    .line 1420
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
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

    .line 1422
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1421
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const v0, 0x7a120

    invoke-static {v0, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 1426
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mReplyMoveHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$7;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    return-void
.end method

.method public static showTitleComponent()V
    .locals 2

    .prologue
    .line 1358
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mTitleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$5;

    invoke-direct {v1}, Lcom/gamevil/nexus2/Natives$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1392
    return-void
.end method

.method public static startPurchase(Ljava/lang/String;I)V
    .locals 2
    .param p0, "money"    # Ljava/lang/String;
    .param p1, "n"    # I

    .prologue
    .line 3376
    sget-object v0, Lcom/gamevil/nexus2/Natives;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/Natives$30;

    invoke-direct {v1, p1}, Lcom/gamevil/nexus2/Natives$30;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3477
    return-void
.end method

.method private static stopAndroidSound()V
    .locals 0

    .prologue
    .line 637
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 638
    return-void
.end method

.method public static trackEventDispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "_action"    # Ljava/lang/String;
    .param p1, "_lable"    # Ljava/lang/String;

    .prologue
    .line 2993
    return-void
.end method

.method public static trackPageViewDispatch(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2988
    invoke-static {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->AnalyticsTrackPageView(Ljava/lang/String;)V

    .line 2989
    return-void
.end method

.method private static vibrateAndroid(I)V
    .locals 0
    .param p0, "_time"    # I

    .prologue
    .line 641
    invoke-static {p0}, Lcom/gamevil/nexus2/ui/NexusSound;->Vibrator(I)V

    .line 642
    return-void
.end method
