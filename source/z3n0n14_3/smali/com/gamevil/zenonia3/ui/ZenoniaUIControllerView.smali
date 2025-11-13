.class public Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;
.super Lcom/gamevil/nexus2/ui/NeoUIControllerView;
.source "ZenoniaUIControllerView.java"


# static fields
.field public static final UI_STATUS_ABOUT:I = 0x5

.field public static final UI_STATUS_ABOUT_JPN:I = 0x1e

.field public static final UI_STATUS_CERTIFICATION:I = 0xc

.field public static final UI_STATUS_CERT_CP_VERIFY:I = 0x8

.field public static final UI_STATUS_EDIT:I = 0x3

.field public static final UI_STATUS_EDITPLAYER:I = 0x7

.field public static final UI_STATUS_EDIT_INPUT_INVISIBLE:I = 0x12

.field public static final UI_STATUS_EDIT_MY_INPUT_VISIBLE:I = 0x10

.field public static final UI_STATUS_EDIT_NUMBER:I = 0x12c

.field public static final UI_STATUS_EDIT_NUMBER_INVISIBLE:I = 0x708

.field public static final UI_STATUS_EDIT_TEAM_INPUT_VISIBLE:I = 0x11

.field public static final UI_STATUS_EXIT:I = 0x68

.field public static final UI_STATUS_FULLTOUCH:I = 0xe

.field public static final UI_STATUS_GAME_DPAD:I = 0xd

.field public static final UI_STATUS_GAME_DPAD_MY:I = 0xf

.field public static final UI_STATUS_GAME_LOADING:I = 0x6

.field public static final UI_STATUS_HELP:I = 0x4

.field public static final UI_STATUS_HELP_CHIN:I = 0x16

.field public static final UI_STATUS_HELP_JPN:I = 0x15

.field public static final UI_STATUS_HELP_KOR:I = 0x14

.field public static final UI_STATUS_LOGO:I = 0x0

.field public static final UI_STATUS_MAINMENU:I = 0x2

.field public static final UI_STATUS_NEWS:I = 0x13

.field public static final UI_STATUS_PURCHASE_PAGE:I = 0x190

.field public static final UI_STATUS_RANKING:I = 0xa

.field public static final UI_STATUS_REPLY_PAGE:I = 0x1388

.field public static final UI_STATUS_SHOW_BACK:I = 0x1f4

.field public static final UI_STATUS_SPECIAL:I = 0x9

.field public static final UI_STATUS_THANKYOU:I = 0x69

.field public static final UI_STATUS_TITLE:I = 0x1

.field public static final UI_STATUS_TROPHY:I = 0xb

.field private static mRateHandler:Landroid/os/Handler;


# instance fields
.field private final WEBVIEW_OFFSET_HEIGHT:I

.field private final WEBVIEW_OFFSET_LEFTMARGIN:I

.field private final WEBVIEW_OFFSET_TOPMARGIN:I

.field private final WEBVIEW_OFFSET_WIDTH:I

.field aboutWebView:Landroid/webkit/WebView;

.field private final about_Url:Ljava/lang/String;

.field private final about_Url_chin:Ljava/lang/String;

.field private final about_Url_jpn:Ljava/lang/String;

.field private final about_Url_kor:Ljava/lang/String;

.field fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

.field private final helpUrl_chin:Ljava/lang/String;

.field private final helpUrl_eng:Ljava/lang/String;

.field private final helpUrl_jap:Ljava/lang/String;

.field private final helpUrl_kor:Ljava/lang/String;

.field helpWebView:Landroid/webkit/WebView;

.field imgRate:Landroid/widget/ImageView;

.field logoAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mHandler2:Landroid/os/Handler;

.field numberInput:Lcom/gamevil/nexus2/ui/UIEditNumber;

.field private pl:Landroid/widget/FrameLayout$LayoutParams;

.field textInput:Lcom/gamevil/nexus2/ui/UIEditText;

.field togle:Z

.field touchMe_Animation:Landroid/graphics/drawable/AnimationDrawable;

.field touch_blink:Z

.field public txtCS:Landroid/widget/TextView;

.field ui_title_logo:Landroid/widget/ImageView;

.field ui_title_logo_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1063
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/gamevil/nexus2/ui/NeoUIControllerView;-><init>(Landroid/content/Context;)V

    .line 125
    const-string v0, "file:///android_asset/html/help_eng.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_eng:Ljava/lang/String;

    .line 126
    const-string v0, "file:///android_asset/html/help_kor.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_kor:Ljava/lang/String;

    .line 128
    const-string v0, "file:///android_asset/html/help_jpn.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_jap:Ljava/lang/String;

    .line 129
    const-string v0, "file:///android_asset/html/help_chin.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_chin:Ljava/lang/String;

    .line 130
    const-string v0, "file:///android_asset/html/about.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url:Ljava/lang/String;

    .line 133
    const-string v0, "file:///android_asset/html/about_kor.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url_kor:Ljava/lang/String;

    .line 134
    const-string v0, "file:///android_asset/html/about_jpn.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url_jpn:Ljava/lang/String;

    .line 135
    const-string v0, "file:///android_asset/html/about_chin.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url_chin:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_LEFTMARGIN:I

    .line 138
    const/4 v0, 0x5

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_TOPMARGIN:I

    .line 139
    const/16 v0, 0x12c

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_WIDTH:I

    .line 140
    const/16 v0, 0x92

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_HEIGHT:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo_index:I

    .line 283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler2:Landroid/os/Handler;

    .line 172
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mContext:Landroid/content/Context;

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/gamevil/nexus2/ui/NeoUIControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    const-string v0, "file:///android_asset/html/help_eng.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_eng:Ljava/lang/String;

    .line 126
    const-string v0, "file:///android_asset/html/help_kor.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_kor:Ljava/lang/String;

    .line 128
    const-string v0, "file:///android_asset/html/help_jpn.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_jap:Ljava/lang/String;

    .line 129
    const-string v0, "file:///android_asset/html/help_chin.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_chin:Ljava/lang/String;

    .line 130
    const-string v0, "file:///android_asset/html/about.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url:Ljava/lang/String;

    .line 133
    const-string v0, "file:///android_asset/html/about_kor.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url_kor:Ljava/lang/String;

    .line 134
    const-string v0, "file:///android_asset/html/about_jpn.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url_jpn:Ljava/lang/String;

    .line 135
    const-string v0, "file:///android_asset/html/about_chin.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url_chin:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_LEFTMARGIN:I

    .line 138
    const/4 v0, 0x5

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_TOPMARGIN:I

    .line 139
    const/16 v0, 0x12c

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_WIDTH:I

    .line 140
    const/16 v0, 0x92

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_HEIGHT:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo_index:I

    .line 283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler2:Landroid/os/Handler;

    .line 180
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mContext:Landroid/content/Context;

    .line 181
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->pl:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->pl:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method private hideAboutView()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 993
    return-void
.end method

.method private hideHelpView()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 933
    return-void
.end method

.method private hideUiTitleLogoView()V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1057
    return-void
.end method

.method private setNumberInputInvisible()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$8;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$8;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 873
    return-void
.end method

.method private setNumberInputVisible()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 850
    return-void
.end method

.method private setTextInputInvisible()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 829
    return-void
.end method

.method private setTextInputVisible()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$5;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$5;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 807
    return-void
.end method

.method private showAboutView(I)V
    .locals 2
    .param p1, "lng"    # I

    .prologue
    .line 937
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;

    invoke-direct {v1, p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 974
    return-void
.end method

.method private showHelpView(I)V
    .locals 2
    .param p1, "lng"    # I

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "##ShowHelpView## : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### A ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;

    invoke-direct {v1, p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 918
    return-void
.end method

.method private showUiTitleLogoView()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1032
    return-void
.end method


# virtual methods
.method public OnEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 694
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputInvisible()V

    .line 698
    :cond_0
    return-void
.end method

.method public OnSoundPlay(IIZ)V
    .locals 1
    .param p1, "sndID"    # I
    .param p2, "vol"    # I
    .param p3, "isLoop"    # Z

    .prologue
    .line 764
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 766
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopBGMSound()V

    .line 779
    :goto_0
    return-void

    .line 769
    :cond_0
    div-int/lit8 v0, p2, 0xa

    invoke-static {v0}, Lcom/gamevil/nexus2/ui/NexusSound;->setVolume(I)V

    .line 771
    if-lez p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 773
    invoke-static {p1}, Lcom/gamevil/nexus2/ui/NexusSound;->playSFXSound(I)V

    goto :goto_0

    .line 777
    :cond_1
    const v0, 0x7f060001

    add-int/2addr v0, p1

    invoke-static {v0, p3}, Lcom/gamevil/nexus2/ui/NexusSound;->playSound(IZ)V

    goto :goto_0
.end method

.method public OnStopSound()V
    .locals 0

    .prologue
    .line 783
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 784
    return-void
.end method

.method public OnUIStatusChange(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 746
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== changeUIStatus 5 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 747
    sput p1, Lcom/gamevil/nexus2/Natives;->saveUiStatus:I

    .line 748
    invoke-virtual {p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->changeUIStatus(I)V

    .line 750
    return-void
.end method

.method public OnVibrate(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 788
    invoke-static {p1}, Lcom/gamevil/nexus2/ui/NexusSound;->Vibrator(I)V

    .line 789
    return-void
.end method

.method public changeUIStatus(I)V
    .locals 3
    .param p1, "_status"    # I

    .prologue
    .line 338
    const/16 v0, 0x115c

    if-ne p1, v0, :cond_0

    .line 340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== [4444]changeUIStatus 4 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gamevil/nexus2/Natives;->saveUiStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    :goto_0
    iput p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->isStatusChanging:Z

    .line 348
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAllUI()V

    .line 349
    return-void

    .line 343
    :cond_0
    sput p1, Lcom/gamevil/nexus2/Natives;->saveUiStatus:I

    .line 344
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== changeUIStatus 4 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeUIStatusZenonia(I)V
    .locals 3
    .param p1, "_status"    # I

    .prologue
    .line 351
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== changeUIStatus 6 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    iput p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->isStatusChanging:Z

    .line 354
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAllUI()V

    .line 355
    const-class v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#################### changeUIStatusZenonia %d ####################"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method public hideAllUI()V
    .locals 4

    .prologue
    .line 324
    iget-object v3, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 325
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputInvisible()V

    .line 333
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputInvisible()V

    .line 334
    return-void

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/NeoUIArea;

    .line 327
    .local v0, "_area":Lcom/gamevil/nexus2/ui/NeoUIArea;
    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/NeoUIArea;->mIsHidden:Z

    if-nez v3, :cond_1

    .line 328
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/gamevil/nexus2/ui/NeoUIArea;->setIsHidden(Z)V

    .line 329
    const/4 v3, 0x0

    iput v3, v0, Lcom/gamevil/nexus2/ui/NeoUIArea;->mStatus:I

    .line 325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hideRateComponent()V
    .locals 2

    .prologue
    .line 1092
    sget-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$17;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$17;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1104
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 308
    iget v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    if-nez v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/NeoUIArea;

    .line 313
    .local v0, "_area":Lcom/gamevil/nexus2/ui/NeoUIArea;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/gamevil/nexus2/ui/NeoUIArea;->mIsHidden:Z

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/NeoUIArea;->onDraw(Landroid/graphics/Canvas;)V

    .line 320
    .end local v0    # "_area":Lcom/gamevil/nexus2/ui/NeoUIArea;
    :cond_0
    return-void
.end method

.method public onInitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->imgRate:Landroid/widget/ImageView;

    .line 193
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    .line 196
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x1010002

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    .line 197
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x1010003

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    .line 201
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 202
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 204
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 210
    iput v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    .line 212
    new-instance v0, Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-direct {v0}, Lcom/gamevil/zenonia3/ui/UIFullTouch;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    .line 213
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->initialize()V

    .line 215
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->addSubView(Lcom/gamevil/nexus2/ui/NeoUIArea;)V

    .line 217
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIEditText;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    .line 218
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIEditNumber;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->numberInput:Lcom/gamevil/nexus2/ui/UIEditNumber;

    .line 220
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus One"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "PC36100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ADR6300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC Desire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->startBlock()V

    .line 270
    const/4 v0, 0x1

    :try_start_nexus1_cond0
    invoke-static {v0}, Lcom/gamevil/nexus2/Natives;->NativeIsNexusOne(Z)V
    :try_end_nexus1_cond0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_nexus1_cond0 .. :try_end_nexus1_cond0} :catch_nexus1_cond0
    .catch Ljava/lang/Exception; {:try_start_nexus1_cond0 .. :try_end_nexus1_cond0} :catch_nexus1_cond0

    goto :goto_nexus1_cond0

    :catch_nexus1_cond0
    const-string v0, "ZenoniaUIControllerView"
    const-string v1, "Warning: NativeIsNexusOne not available"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_nexus1_cond0
    .line 276
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "gamePad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const/16 v0, 0x1388

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 281
    :cond_1
    return-void

    .line 272
    :cond_2
    :try_start_nexus1_cond2
    invoke-static {v2}, Lcom/gamevil/nexus2/Natives;->NativeIsNexusOne(Z)V
    :try_end_nexus1_cond2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_nexus1_cond2 .. :try_end_nexus1_cond2} :catch_nexus1_cond2
    .catch Ljava/lang/Exception; {:try_start_nexus1_cond2 .. :try_end_nexus1_cond2} :catch_nexus1_cond2

    goto :goto_nexus1_cond2

    :catch_nexus1_cond2
    const-string v0, "ZenoniaUIControllerView"
    const-string v1, "Warning: NativeIsNexusOne not available"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_nexus1_cond2
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 721
    const-string v0, "ZenoniaUIController-onKeyDown"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    if-eqz v0, :cond_0

    .line 725
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->getHalKeyCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 728
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 734
    const-string v0, "ZenoniaUIController-onKeyUp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    if-eqz v0, :cond_0

    .line 738
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->getHalKeyCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 741
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 706
    invoke-super {p0, p1}, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public setUIState()V
    .locals 8

    .prologue
    const v7, 0x12f0c28

    const/4 v6, 0x2

    const v5, 0x7a120

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    const-class v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@@@ setUIState @@@@@@@@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 670
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    .line 673
    :goto_0
    return-void

    .line 399
    :sswitch_0
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputInvisible()V

    .line 400
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputInvisible()V

    .line 401
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto :goto_0

    .line 409
    :sswitch_1
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 410
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 412
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 413
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 414
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 415
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 417
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showUiTitleLogoView()V

    .line 418
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showTitleComponent()V

    .line 419
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto :goto_0

    .line 422
    :sswitch_2
    invoke-static {v5, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 423
    const-class v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@@@@2@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 427
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->showNewsView()V

    .line 430
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->ShowTapjoyOffer()V

    .line 431
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 433
    invoke-static {v7, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 435
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 436
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 437
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideTitleComponent()V

    .line 438
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 439
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 440
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 441
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 442
    sput-boolean v4, Lcom/gamevil/nexus2/Natives;->reserveMenu:Z

    .line 443
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideReplyMoveComponent()V

    .line 445
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showMenuComponent()V

    .line 446
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showMenuItemComponent()V

    .line 447
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto :goto_0

    .line 451
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setUIStateHelp(I)V

    goto :goto_0

    .line 454
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setUIStateHelp(I)V

    goto :goto_0

    .line 457
    :sswitch_5
    invoke-virtual {p0, v6}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setUIStateHelp(I)V

    goto :goto_0

    .line 460
    :sswitch_6
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setUIStateHelp(I)V

    goto :goto_0

    .line 464
    :sswitch_7
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 468
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 469
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 471
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 472
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 473
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 475
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 476
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 477
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 480
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showAboutComponent()V

    .line 481
    invoke-direct {p0, v3}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showAboutView(I)V

    .line 482
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 486
    :sswitch_8
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 490
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 491
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 493
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 494
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 495
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 497
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 498
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 499
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 502
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showAboutComponent()V

    .line 503
    invoke-direct {p0, v6}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showAboutView(I)V

    .line 504
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 508
    :sswitch_9
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->showNewsView()V

    .line 512
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->ShowTapjoyOffer()V

    .line 514
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 518
    :sswitch_a
    invoke-static {v5, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 520
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 521
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 522
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 524
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 525
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 526
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 527
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 528
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 529
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 531
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 535
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 536
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 538
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideReplyMoveComponent()V

    .line 539
    sput-boolean v3, Lcom/gamevil/nexus2/Natives;->reserveMenu:Z

    .line 542
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 545
    :sswitch_b
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputVisible()V

    .line 546
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 550
    :sswitch_c
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputVisible()V

    .line 551
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 555
    :sswitch_d
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputInvisible()V

    .line 556
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 560
    :sswitch_e
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    goto/16 :goto_0

    .line 563
    :sswitch_f
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputVisible()V

    .line 564
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 588
    :sswitch_10
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputVisible()V

    .line 589
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$4;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$4;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 608
    :sswitch_11
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputInvisible()V

    .line 609
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputInvisible()V

    .line 610
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 613
    :sswitch_12
    invoke-static {v5, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 614
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 615
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 616
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 618
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 619
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 620
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 621
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 622
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 624
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 628
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 629
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->ShowTapjoyAd()V

    .line 633
    invoke-static {v7, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 634
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showPurchaseComponent()V

    .line 635
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 644
    :sswitch_13
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showReplyMoveComponent()V

    .line 646
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 648
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 649
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 650
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 651
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 652
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 653
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 655
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 659
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 660
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 663
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 667
    :sswitch_14
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v4}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 395
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_b
        0x4 -> :sswitch_3
        0x5 -> :sswitch_7
        0xe -> :sswitch_a
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x12 -> :sswitch_11
        0x13 -> :sswitch_9
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x1e -> :sswitch_8
        0x68 -> :sswitch_e
        0x12c -> :sswitch_c
        0x190 -> :sswitch_12
        0x708 -> :sswitch_d
        0x115c -> :sswitch_14
        0x1388 -> :sswitch_13
    .end sparse-switch
.end method

.method public setUIStateHelp(I)V
    .locals 2
    .param p1, "language"    # I

    .prologue
    .line 360
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 364
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 365
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 367
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 368
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 369
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 370
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 371
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 373
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 374
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 375
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showHelpComponent()V

    .line 376
    invoke-direct {p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showHelpView(I)V

    .line 377
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    .line 378
    return-void
.end method

.method public showRateComponent()V
    .locals 4

    .prologue
    .line 1068
    sget-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$15;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$15;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1080
    sget-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$16;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$16;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    .line 1086
    const-wide/16 v2, 0x1388

    .line 1080
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1087
    return-void
.end method

.method public startBlock()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$2;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$2;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method
