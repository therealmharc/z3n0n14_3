.class public Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;
.super Lcom/gamevil/nexus2/ui/UIControllerView;
.source "ZenoniaUIControllerView.java"


# static fields
.field public static final UI_STATUS_ABOUT:I = 0x5

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

.field fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

.field private final helpUrl_eng:Ljava/lang/String;

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

.field ui_title_logo:Landroid/widget/ImageView;

.field ui_title_logo_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 966
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/gamevil/nexus2/ui/UIControllerView;-><init>(Landroid/content/Context;)V

    .line 116
    const-string v0, "file:///android_asset/html/help_eng.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_eng:Ljava/lang/String;

    .line 117
    const-string v0, "file:///android_asset/html/help_kor.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_kor:Ljava/lang/String;

    .line 118
    const-string v0, "file:///android_asset/html/about.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_LEFTMARGIN:I

    .line 122
    const/4 v0, 0x5

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_TOPMARGIN:I

    .line 123
    const/16 v0, 0x12c

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_WIDTH:I

    .line 124
    const/16 v0, 0x92

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_HEIGHT:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo_index:I

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler2:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/gamevil/nexus2/ui/UIControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    const-string v0, "file:///android_asset/html/help_eng.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_eng:Ljava/lang/String;

    .line 117
    const-string v0, "file:///android_asset/html/help_kor.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpUrl_kor:Ljava/lang/String;

    .line 118
    const-string v0, "file:///android_asset/html/about.html"

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->about_Url:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_LEFTMARGIN:I

    .line 122
    const/4 v0, 0x5

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_TOPMARGIN:I

    .line 123
    const/16 v0, 0x12c

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_WIDTH:I

    .line 124
    const/16 v0, 0x92

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->WEBVIEW_OFFSET_HEIGHT:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo_index:I

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler2:Landroid/os/Handler;

    .line 164
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->pl:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->pl:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method private hideAboutView()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 896
    return-void
.end method

.method private hideHelpView()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    return-void
.end method

.method private hideUiTitleLogoView()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    return-void
.end method

.method private setNumberInputInvisible()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$8;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$8;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 812
    return-void
.end method

.method private setNumberInputVisible()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 791
    return-void
.end method

.method private setTextInputInvisible()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
    return-void
.end method

.method private setTextInputVisible()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$5;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$5;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    return-void
.end method

.method private showAboutView()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    return-void
.end method

.method private showHelpView(I)V
    .locals 2
    .param p1, "lng"    # I

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "##ShowHelpView## : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### A ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;

    invoke-direct {v1, p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 849
    return-void
.end method

.method private showUiTitleLogoView()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 935
    return-void
.end method


# virtual methods
.method public OnEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 640
    return-void
.end method

.method public OnSoundPlay(IIZ)V
    .locals 1
    .param p1, "sndID"    # I
    .param p2, "vol"    # I
    .param p3, "isLoop"    # Z

    .prologue
    .line 703
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 705
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopBGMSound()V

    .line 718
    :goto_0
    return-void

    .line 708
    :cond_0
    div-int/lit8 v0, p2, 0xa

    invoke-static {v0}, Lcom/gamevil/nexus2/ui/NexusSound;->setVolume(I)V

    .line 710
    if-lez p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 712
    invoke-static {p1}, Lcom/gamevil/nexus2/ui/NexusSound;->playSFXSound(I)V

    goto :goto_0

    .line 716
    :cond_1
    const/high16 v0, 0x7f050000

    add-int/2addr v0, p1

    invoke-static {v0, p3}, Lcom/gamevil/nexus2/ui/NexusSound;->playSound(IZ)V

    goto :goto_0
.end method

.method public OnStopSound()V
    .locals 0

    .prologue
    .line 722
    invoke-static {}, Lcom/gamevil/nexus2/ui/NexusSound;->stopAllSound()V

    .line 723
    return-void
.end method

.method public OnUIStatusChange(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->changeUIStatus(I)V

    .line 689
    return-void
.end method

.method public OnVibrate(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 727
    invoke-static {p1}, Lcom/gamevil/nexus2/ui/NexusSound;->Vibrator(I)V

    .line 728
    return-void
.end method

.method public changeUIStatus(I)V
    .locals 1
    .param p1, "_status"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->isStatusChanging:Z

    .line 322
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAllUI()V

    .line 323
    return-void
.end method

.method public hideAllUI()V
    .locals 4

    .prologue
    .line 307
    iget-object v3, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 308
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputInvisible()V

    .line 316
    return-void

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 310
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v3, :cond_1

    .line 311
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/gamevil/nexus2/ui/UIArea;->setIsHidden(Z)V

    .line 312
    const/4 v3, 0x0

    iput v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mStatus:I

    .line 308
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hideRateComponent()V
    .locals 2

    .prologue
    .line 995
    sget-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$17;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$17;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    return-void
.end method

.method public initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->imgRate:Landroid/widget/ImageView;

    .line 177
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f070022

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    .line 180
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x1010002

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    .line 181
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x1010003

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    .line 185
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 186
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 194
    iput v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    .line 196
    new-instance v0, Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-direct {v0}, Lcom/gamevil/zenonia3/ui/UIFullTouch;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    .line 197
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->initialize()V

    .line 198
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    .line 199
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->addSubView(Lcom/gamevil/nexus2/ui/UIArea;)V

    .line 201
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIEditText;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    .line 202
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIEditNumber;

    iput-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->numberInput:Lcom/gamevil/nexus2/ui/UIEditNumber;

    .line 204
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
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

    .line 250
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ADR6300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC Desire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->startBlock()V

    .line 254
    invoke-static {v3}, Lcom/gamevil/nexus2/Natives;->NativeIsNexusOne(Z)V

    .line 260
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "gamePad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const/16 v0, 0x1388

    invoke-static {v0, v2, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 265
    :cond_1
    return-void

    .line 256
    :cond_2
    invoke-static {v2}, Lcom/gamevil/nexus2/Natives;->NativeIsNexusOne(Z)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 292
    iget v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 296
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/UIArea;->onDraw(Landroid/graphics/Canvas;)V

    .line 303
    .end local v0    # "_area":Lcom/gamevil/nexus2/ui/UIArea;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 663
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

    .line 665
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    if-eqz v0, :cond_0

    .line 667
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->getHalKeyCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 670
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/gamevil/nexus2/ui/UIControllerView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 676
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

    .line 678
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    if-eqz v0, :cond_0

    .line 680
    sget-object v0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->getHalKeyCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 683
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/gamevil/nexus2/ui/UIControllerView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 647
    invoke-super {p0, p1}, Lcom/gamevil/nexus2/ui/UIControllerView;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 651
    const-wide/16 v1, 0x23

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 652
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUIState()V
    .locals 7

    .prologue
    const v6, 0x12f0c28

    const/4 v5, 0x1

    const v4, 0x7a120

    const/4 v3, 0x0

    .line 340
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

    .line 341
    iget v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->uiStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 616
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    .line 619
    :goto_0
    return-void

    .line 347
    :sswitch_0
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 348
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 350
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 351
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 352
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 353
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 355
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showUiTitleLogoView()V

    .line 356
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showTitleComponent()V

    .line 357
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto :goto_0

    .line 360
    :sswitch_1
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 361
    const-class v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@@@@2@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 365
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->showNewsView()V

    .line 368
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->ShowTapjoyOffer()V

    .line 369
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 371
    invoke-static {v6, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 373
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 374
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 375
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideTitleComponent()V

    .line 376
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 377
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 378
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 379
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 380
    sput-boolean v5, Lcom/gamevil/nexus2/Natives;->reserveMenu:Z

    .line 381
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideReplyMoveComponent()V

    .line 383
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showMenuComponent()V

    .line 384
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showMenuItemComponent()V

    .line 385
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto :goto_0

    .line 390
    :sswitch_2
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 394
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 395
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 397
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 398
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 399
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 401
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 402
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 403
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 404
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 407
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showHelpComponent()V

    .line 408
    invoke-direct {p0, v3}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showHelpView(I)V

    .line 409
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 413
    :sswitch_3
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 417
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 418
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 420
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 421
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 422
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 424
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 425
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 426
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 427
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 430
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showHelpComponent()V

    .line 431
    invoke-direct {p0, v5}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showHelpView(I)V

    .line 432
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 436
    :sswitch_4
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 440
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 441
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 443
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 444
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 445
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 447
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 448
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 449
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 452
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showAboutComponent()V

    .line 453
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showAboutView()V

    .line 454
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 458
    :sswitch_5
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->showNewsView()V

    .line 462
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->ShowTapjoyOffer()V

    .line 464
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 468
    :sswitch_6
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 470
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 471
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 472
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 474
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 475
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 476
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 477
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 478
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 479
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 481
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 485
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 486
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 488
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideReplyMoveComponent()V

    .line 489
    sput-boolean v3, Lcom/gamevil/nexus2/Natives;->reserveMenu:Z

    .line 492
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 495
    :sswitch_7
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputVisible()V

    .line 496
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 500
    :sswitch_8
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputVisible()V

    .line 501
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 505
    :sswitch_9
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputInvisible()V

    .line 506
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 510
    :sswitch_a
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    goto/16 :goto_0

    .line 513
    :sswitch_b
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputVisible()V

    .line 514
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 538
    :sswitch_c
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputVisible()V

    .line 539
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$4;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$4;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 558
    :sswitch_d
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputInvisible()V

    .line 559
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 562
    :sswitch_e
    invoke-static {v4, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 563
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V

    .line 564
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V

    .line 565
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 567
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 568
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 569
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 570
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 571
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 573
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 577
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 578
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->ShowTapjoyAd()V

    .line 582
    invoke-static {v6, v3, v3, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 583
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showPurchaseComponent()V

    .line 584
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 593
    :sswitch_f
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->showReplyMoveComponent()V

    .line 595
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideHelpComponent()V

    .line 597
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideAboutComponent()V

    .line 598
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V

    .line 599
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V

    .line 600
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V

    .line 601
    invoke-direct {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V

    .line 602
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 604
    invoke-static {}, Lcom/gamevil/nexus2/xml/NewsViewTask;->hideNewsView()V

    .line 608
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyOffer()V

    .line 609
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->HideTapjoyAd()V

    .line 612
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->fullTouch:Lcom/gamevil/zenonia3/ui/UIFullTouch;

    invoke-virtual {v0, v3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setIsHidden(Z)V

    goto/16 :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_7
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0xe -> :sswitch_6
        0x10 -> :sswitch_c
        0x11 -> :sswitch_b
        0x12 -> :sswitch_d
        0x13 -> :sswitch_5
        0x14 -> :sswitch_3
        0x68 -> :sswitch_a
        0x12c -> :sswitch_8
        0x190 -> :sswitch_e
        0x708 -> :sswitch_9
        0x1388 -> :sswitch_f
    .end sparse-switch
.end method

.method public showRateComponent()V
    .locals 4

    .prologue
    .line 971
    sget-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$15;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$15;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 983
    sget-object v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mRateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$16;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$16;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    .line 989
    const-wide/16 v2, 0x1388

    .line 983
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 990
    return-void
.end method

.method public startBlock()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$2;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$2;-><init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method
