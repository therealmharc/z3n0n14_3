.class public Lcom/tapjoy/TapjoyVideoView;
.super Landroid/app/Activity;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyVideoView$RemainingTime;
    }
.end annotation


# static fields
.field private static final DIALOG_WARNING_ID:I = 0x0

.field private static final TJC_VIDEO_AD_TEXT_FONT_COLOR:Ljava/lang/String; = "#909090"

.field private static TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String; = null

.field private static final TJC_VIDEO_CURRENCY_TEXT_COLOR:Ljava/lang/String; = "#004194"

.field private static final TJC_VIDEO_FONT_COLOR:Ljava/lang/String; = "\"black\""

.field private static TJC_VIDEO_FONT_SIZE:Ljava/lang/String; = null

.field private static final TJC_VIDEO_FONT_TYPE:Ljava/lang/String; = "\"helvetica\""

.field static buttonHeight:I = 0x0

.field static final colorsBackground:[I

.field static final colorsButtons:[I

.field static final colorsInfo:[I

.field static final cornerAll:[F

.field static final innerRadii:[F

.field static final inset:Landroid/graphics/RectF;

.field static final outerRadii:[F

.field static padding:I = 0x0

.field static final stateFocused:I = 0x101009c

.field static final statePressed:I = 0x10100a7

.field static final stateSelected:I = 0x10100a1

.field static textSize:I = 0x0

.field private static final videoSecondsText:Ljava/lang/String; = " seconds"

.field private static final videoWillResumeText:Ljava/lang/String; = ""


# instance fields
.field final TAPJOY_VIDEO:Ljava/lang/String;

.field private adText:Ljava/lang/String;

.field private allowBackKey:Z

.field private clickRequestSuccess:Z

.field private closeButton:Landroid/widget/Button;

.field private currencyAmount:Ljava/lang/String;

.field private currencyName:Ljava/lang/String;

.field private detailsText:Landroid/widget/TextView;

.field deviceScreenDensity:I

.field deviceScreenLayoutSize:I

.field private iconURL:Ljava/lang/String;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linkAltButton:Landroid/widget/Button;

.field private linkButton:Landroid/widget/Button;

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private overlayText:Landroid/widget/TextView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private replayButton:Landroid/widget/Button;

.field private seekTime:I

.field private tapjoyImage:Landroid/widget/ImageView;

.field private thumbnailImage:Landroid/widget/ImageView;

.field private timeRemaining:I

.field timer:Ljava/util/Timer;

.field private videoData:Lcom/tapjoy/TapjoyVideoObject;

.field private videoPath:Ljava/lang/String;

.field private videoScreenshot:Landroid/graphics/Bitmap;

.field private videoView:Landroid/widget/VideoView;

.field private whatNowText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x2

    const/high16 v1, 0x40c00000    # 6.0f

    .line 109
    const-string v0, "\"4\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    .line 111
    const-string v0, "\"3\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    .line 119
    const/16 v0, 0x10

    sput v0, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    .line 120
    const/16 v0, 0xa

    sput v0, Lcom/tapjoy/TapjoyVideoView;->padding:I

    .line 121
    const/4 v0, -0x1

    sput v0, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    .line 123
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->colorsBackground:[I

    .line 128
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->colorsInfo:[I

    .line 133
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    .line 138
    new-array v0, v3, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->cornerAll:[F

    .line 144
    new-array v0, v3, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->outerRadii:[F

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->inset:Landroid/graphics/RectF;

    .line 146
    new-array v0, v3, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->innerRadii:[F

    .line 63
    return-void

    .line 123
    :array_0
    .array-data 4
        -0x757576
        -0xbbbbbc
    .end array-data

    .line 128
    :array_1
    .array-data 4
        -0x1
        -0x171718
    .end array-data

    .line 133
    :array_2
    .array-data 4
        -0x1
        -0x171718
    .end array-data

    .line 138
    :array_3
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 144
    :array_4
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 146
    :array_5
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    .line 66
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    .line 74
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    .line 75
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    .line 80
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    .line 84
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    .line 85
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 86
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    .line 87
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 114
    const-string v0, "VIDEO"

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->TAPJOY_VIDEO:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->mHandler:Landroid/os/Handler;

    .line 828
    new-instance v0, Lcom/tapjoy/TapjoyVideoView$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideoView$1;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->mUpdateResults:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->getRemainingVideoTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/tapjoy/TapjoyVideoView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tapjoy/TapjoyVideoView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView;->videoScreenshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$5(Lcom/tapjoy/TapjoyVideoView;)Lcom/tapjoy/TapjoyVideoObject;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tapjoy/TapjoyVideoView;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    return-void
.end method

.method static synthetic access$7(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    return v0
.end method

.method static synthetic access$8(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    return v0
.end method

.method private createButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 699
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    .line 700
    .local v4, "s1":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 701
    .local v3, "n1":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 704
    .local v2, "f1":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 706
    .local v1, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v5, v8, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 707
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-virtual {v1, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 708
    new-array v5, v9, [I

    fill-array-data v5, :array_1

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 710
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 711
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 714
    const v5, -0xfcc36e

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 715
    sget v5, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 716
    const-string v5, "default"

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 718
    sget v5, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    if-lez v5, :cond_0

    .line 719
    sget v5, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setHeight(I)V

    .line 721
    :cond_0
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding bottom: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding top: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding left: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding right: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 728
    return-object v0

    .line 707
    nop

    :array_0
    .array-data 4
        -0x101009c
        -0x10100a1
    .end array-data

    .line 708
    :array_1
    .array-data 4
        -0x101009c
        0x10100a1
    .end array-data
.end method

.method private static createGradient([I)Landroid/graphics/drawable/GradientDrawable;
    .locals 3
    .param p0, "colors"    # [I

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 743
    .local v1, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 746
    .restart local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->cornerAll:[F

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 747
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 749
    return-object v0
.end method

.method private getRemainingVideoTime()I
    .locals 3

    .prologue
    .line 799
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x3e8

    .line 801
    .local v0, "timeRemaining":I
    if-gez v0, :cond_0

    .line 802
    const/4 v0, 0x0

    .line 804
    :cond_0
    return v0
.end method

.method private initVideoUI()V
    .locals 45

    .prologue
    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TapjoyVideoView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 364
    .local v14, "display":Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v38

    .line 365
    .local v38, "width":I
    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v18

    .line 367
    .local v18, "height":I
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "view dimensions: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "x"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v40, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_0

    .line 373
    new-instance v15, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 375
    .local v15, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    invoke-virtual {v15}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    .line 377
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "deviceScreenLayoutSize: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 384
    const/16 v40, 0x14

    sput v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    .line 385
    const/16 v40, 0x20

    sput v40, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    .line 386
    div-int/lit8 v40, v18, 0x7

    sput v40, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    .line 388
    const-string v40, "\"10\""

    sput-object v40, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    .line 389
    const-string v40, "\"6\""

    sput-object v40, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    .line 391
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "buttonHeight: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v42, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v15    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    :cond_0
    div-int/lit8 v19, v18, 0x3

    .line 396
    .local v19, "infoViewHeight":I
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v40

    div-int/lit8 v40, v40, 0x2

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v41, v41, 0x2

    sub-int v6, v40, v41

    .line 398
    .local v6, "buttonWidth":I
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 400
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x1

    const/16 v41, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    .local v20, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v20

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "Details"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    sget v41, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "default"

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x3f800000    # 1.0f

    const/high16 v42, 0x3f800000    # 1.0f

    const/high16 v43, 0x3f800000    # 1.0f

    const/high16 v44, -0x1000000

    invoke-virtual/range {v40 .. v44}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 413
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v13, "detailsParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    const/16 v43, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x83f

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setId(I)V

    .line 431
    :try_start_0
    sget-object v40, Lcom/tapjoy/TapjoyVideo;->imageBackgroundLocation:Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 433
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 435
    new-instance v33, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    .local v33, "tiledBackground":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v40, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 437
    sget-object v40, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v33    # "tiledBackground":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_0
    new-instance v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    .line 456
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->videoScreenshot:Landroid/graphics/Bitmap;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4

    .line 457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tapjoy/TapjoyVideoView;->videoScreenshot:Landroid/graphics/Bitmap;

    .line 461
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v5, :cond_2

    .line 463
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    .line 464
    .local v34, "w":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 467
    .local v17, "h":I
    sget-object v40, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v34

    move/from16 v1, v17

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 468
    .local v28, "rounder":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 473
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v39, Landroid/graphics/Paint;

    const/16 v40, 0x1

    invoke-direct/range {v39 .. v40}, Landroid/graphics/Paint;-><init>(I)V

    .line 474
    .local v39, "xferPaint":Landroid/graphics/Paint;
    const/high16 v40, -0x10000

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    new-instance v40, Landroid/graphics/RectF;

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v44, v0

    invoke-direct/range {v40 .. v44}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v41, 0x41c80000    # 25.0f

    const/high16 v42, 0x41c80000    # 25.0f

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move-object/from16 v3, v39

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 481
    new-instance v40, Landroid/graphics/PorterDuffXfermode;

    sget-object v41, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v40 .. v41}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 484
    sget-object v40, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v34

    move/from16 v1, v17

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 485
    .local v27, "roundedBitmap":Landroid/graphics/Bitmap;
    new-instance v26, Landroid/graphics/Canvas;

    invoke-direct/range {v26 .. v27}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .local v26, "result":Landroid/graphics/Canvas;
    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 492
    move/from16 v11, v19

    .line 493
    .local v11, "desiredHeight":I
    mul-int v40, v34, v11

    div-int v12, v40, v17

    .line 496
    .local v12, "desiredWidth":I
    const/16 v40, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-static {v0, v12, v11, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 498
    .local v29, "scaled":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v40 .. v44}, Landroid/widget/ImageView;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "desiredHeight":I
    .end local v12    # "desiredWidth":I
    .end local v17    # "h":I
    .end local v26    # "result":Landroid/graphics/Canvas;
    .end local v27    # "roundedBitmap":Landroid/graphics/Bitmap;
    .end local v28    # "rounder":Landroid/graphics/Bitmap;
    .end local v29    # "scaled":Landroid/graphics/Bitmap;
    .end local v34    # "w":I
    .end local v39    # "xferPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_2
    new-instance v36, Landroid/webkit/WebView;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 508
    .local v36, "webview":Landroid/webkit/WebView;
    const/16 v40, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 511
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "<html><body><font face=\"helvetica\" color=\"black\" size="

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    sget-object v41, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ">"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 515
    const-string v41, "<p>You just earned <font color="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "#004194"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "><b>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->currencyAmount:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "</b></font> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->currencyName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "! <br /> <font color="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "#909090"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 516
    const-string v41, " size="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-object v41, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ">"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 517
    const-string v41, "<b>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->adText:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "</b></p></font></font></body></html>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 511
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 520
    .local v32, "summary":Ljava/lang/String;
    const-string v40, "text/html"

    const-string v41, "utf-8"

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 523
    .local v35, "webLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    div-int/lit8 v40, v40, 0x2

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    div-int/lit8 v41, v41, 0x2

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 529
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 530
    .local v9, "customLinearLayoutView":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v40, v40, 0x2

    sub-int v40, v38, v40

    move/from16 v0, v40

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 531
    .local v10, "customLinearLayoutViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 532
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 535
    const/16 v40, 0x0

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v41, v41, 0x2

    const/16 v42, 0x0

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v43, v43, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 536
    sget-object v40, Lcom/tapjoy/TapjoyVideoView;->colorsInfo:[I

    invoke-static/range {v40 .. v40}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    const/16 v40, 0x13

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "What now?"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    sget v41, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "default"

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x3f800000    # 1.0f

    const/high16 v42, 0x3f800000    # 1.0f

    const/high16 v43, 0x3f800000    # 1.0f

    const/high16 v44, -0x1000000

    invoke-virtual/range {v40 .. v44}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 551
    new-instance v37, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    const/16 v41, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 552
    .local v37, "whatNowParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    const/16 v43, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0xc28

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setId(I)V

    .line 560
    const-string v40, "Replay this video"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    .line 562
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 563
    .local v25, "replayParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v25

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    const/16 v41, 0x459

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setId(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$3;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$3;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "button dimensions: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "x"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v40, "View More Offers"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    .line 582
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move/from16 v0, v40

    invoke-direct {v8, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 583
    .local v8, "closeParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$4;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$4;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 595
    .local v21, "linearLayoutRow":Landroid/widget/LinearLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 596
    .local v22, "linearLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    const/16 v40, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "linear width: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_3

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonData:[[Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget-object v40, v40, v41

    const/16 v41, 0x0

    aget-object v40, v40, v41

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    .line 615
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 616
    .local v24, "linkParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v24

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$5;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$5;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    move/from16 v40, v0

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_5

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonData:[[Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget-object v40, v40, v41

    const/16 v41, 0x0

    aget-object v40, v40, v41

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    .line 645
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 646
    .local v23, "linkAltParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v23

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$6;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$6;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 671
    .local v30, "secondLayoutRow":Landroid/widget/LinearLayout;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v31

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 672
    .local v31, "secondLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    .end local v23    # "linkAltParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "linkParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "secondLayoutRow":Landroid/widget/LinearLayout;
    .end local v31    # "secondLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_3
    return-void

    .line 459
    .end local v8    # "closeParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "customLinearLayoutView":Landroid/widget/LinearLayout;
    .end local v10    # "customLinearLayoutViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "linearLayoutRow":Landroid/widget/LinearLayout;
    .end local v22    # "linearLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "replayParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "summary":Ljava/lang/String;
    .end local v35    # "webLinearLayout":Landroid/widget/LinearLayout;
    .end local v36    # "webview":Landroid/webkit/WebView;
    .end local v37    # "whatNowParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :try_start_2
    sget-object v40, Lcom/tapjoy/TapjoyVideo;->imagePlaceholderLocation:Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 502
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v16

    .line 504
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 682
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "closeParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "customLinearLayoutView":Landroid/widget/LinearLayout;
    .restart local v10    # "customLinearLayoutViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "linearLayoutRow":Landroid/widget/LinearLayout;
    .restart local v22    # "linearLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v24    # "linkParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v25    # "replayParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v32    # "summary":Ljava/lang/String;
    .restart local v35    # "webLinearLayout":Landroid/widget/LinearLayout;
    .restart local v36    # "webview":Landroid/webkit/WebView;
    .restart local v37    # "whatNowParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 442
    .end local v8    # "closeParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "customLinearLayoutView":Landroid/widget/LinearLayout;
    .end local v10    # "customLinearLayoutViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "linearLayoutRow":Landroid/widget/LinearLayout;
    .end local v22    # "linearLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "linkParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "replayParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "summary":Ljava/lang/String;
    .end local v35    # "webLinearLayout":Landroid/widget/LinearLayout;
    .end local v36    # "webview":Landroid/webkit/WebView;
    .end local v37    # "whatNowParams":Landroid/widget/LinearLayout$LayoutParams;
    :catch_1
    move-exception v40

    goto/16 :goto_0
.end method

.method private initVideoView()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 303
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 304
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 306
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 311
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    .line 312
    sget-object v4, Lcom/tapjoy/TapjoyVideo;->imageTapjoyLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 315
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v1, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 320
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v4, Landroid/widget/VideoView;

    invoke-direct {v4, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    .line 326
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 327
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 328
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 329
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 331
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 332
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 333
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    .line 340
    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "videoView.getDuration(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "timeRemaining: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    .line 344
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    sget v5, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    const-string v5, "default"

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 346
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->getRemainingVideoTime()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 349
    .local v3, "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 350
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->startVideo()V

    .line 355
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 358
    return-void
.end method

.method private showVideoUI()V
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 691
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Lcom/tapjoy/TapjoyVideoView;->colorsBackground:[I

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 693
    return-void
.end method

.method private startVideo()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xfa

    .line 758
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 759
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 763
    const-string v0, "VIDEO"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 767
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 773
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    .line 774
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$RemainingTime;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/tapjoy/TapjoyVideoView$RemainingTime;-><init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$RemainingTime;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 776
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$7;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$7;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 789
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 790
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 866
    const-string v0, "VIDEO"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoUI()V

    .line 872
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->showVideoUI()V

    .line 875
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getVideoNotifier()Lcom/tapjoy/TapjoyVideoNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TapjoyVideoNotifier;->videoComplete()V

    .line 877
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$8;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$8;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 885
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 888
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    .line 167
    const-string v5, "VIDEO"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyVideo;->getCurrentVideoData()Lcom/tapjoy/TapjoyVideoObject;

    move-result-object v5

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    .line 170
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    .line 172
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->currencyAmount:Ljava/lang/String;

    .line 173
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->currencyName:Ljava/lang/String;

    .line 174
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->videoAdName:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->adText:Ljava/lang/String;

    .line 175
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->iconURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    .line 178
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 180
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/tapjoy/TapjoyVideoView$2;

    invoke-direct {v6, p0}, Lcom/tapjoy/TapjoyVideoView$2;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 208
    :cond_0
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "videoPath: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/tapjoy/TapjoyVideoView;->requestWindowFeature(I)Z

    .line 213
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 214
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/tapjoy/TapjoyVideoView;->setContentView(Landroid/view/View;)V

    .line 220
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v5, v9, :cond_1

    .line 222
    new-instance v1, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 224
    .local v1, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v5

    iput v5, p0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    .line 226
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deviceScreenLayoutSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget v5, p0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    if-ne v5, v9, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 234
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 235
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 237
    .local v2, "height":I
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "width: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/16 v5, 0x14

    sput v5, Lcom/tapjoy/TapjoyVideoView;->padding:I

    .line 240
    const/16 v5, 0x20

    sput v5, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    .line 241
    div-int/lit8 v5, v2, 0x7

    sput v5, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    .line 243
    const-string v5, "\"10\""

    sput-object v5, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    .line 244
    const-string v5, "\"6\""

    sput-object v5, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    .line 246
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "buttonHeight: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_1
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/tapjoy/TapjoyVideoView;->padding:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "textSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoView()V

    .line 255
    const-string v5, "VIDEO"

    const-string v6, "onCreate DONE"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 931
    packed-switch p1, :pswitch_data_0

    .line 957
    const/4 v0, 0x0

    .line 959
    .local v0, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 934
    .end local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Cancel Video?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Currency will not be awarded, are you sure you want to cancel the video?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 935
    const-string v2, "End"

    new-instance v3, Lcom/tapjoy/TapjoyVideoView$9;

    invoke-direct {v3, p0}, Lcom/tapjoy/TapjoyVideoView$9;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 942
    const-string v2, "Resume"

    new-instance v3, Lcom/tapjoy/TapjoyVideoView$10;

    invoke-direct {v3, p0}, Lcom/tapjoy/TapjoyVideoView$10;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 952
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 954
    .restart local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 931
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 851
    const-string v0, "VIDEO"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getVideoNotifier()Lcom/tapjoy/TapjoyVideoNotifier;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyVideoNotifier;->videoError(I)V

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 856
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 859
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 894
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 897
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    if-nez v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 902
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 903
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 924
    :cond_0
    :goto_0
    return v0

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 913
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 914
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->showVideoUI()V

    .line 916
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 924
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 264
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "VIDEO"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 268
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 844
    const-string v0, "VIDEO"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 276
    const-string v0, "VIDEO"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->setRequestedOrientation(I)V

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    if-lez v0, :cond_0

    .line 285
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 288
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 290
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 296
    const-string v0, "VIDEO"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 298
    return-void
.end method
