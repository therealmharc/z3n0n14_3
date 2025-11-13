.class public Lcom/gamevil/nexus2/NexusTouch;
.super Ljava/lang/Object;
.source "NexusTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/NexusTouch$GestureListener;,
        Lcom/gamevil/nexus2/NexusTouch$OnFlingPerformedListener;,
        Lcom/gamevil/nexus2/NexusTouch$Vertex;
    }
.end annotation


# static fields
.field private static final B_TO_T:I = 0x2

.field private static final DEFAULT_PREDICTION_LIMIT:D = 2.0

.field public static final FLING_BOTH:I = 0x0

.field public static final FLING_HORIZONTAL:I = 0x1

.field public static final FLING_VERTICAL:I = 0x2

.field private static final L_TO_R:I = 0x1

.field private static final R_TO_L:I = 0x0

.field private static final T_TO_B:I = 0x3

.field private static gestureName:Ljava/lang/String;

.field private static nMinDistance:I

.field private static nThresholdVelocity:I

.field private static self:Lcom/gamevil/nexus2/NexusTouch;

.field private static toast:Landroid/widget/Toast;


# instance fields
.field private arVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gamevil/nexus2/NexusTouch$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private flingDirections:I

.field private gLib:Landroid/gesture/GestureLibrary;

.field private final gestureScanner:Landroid/view/GestureDetector;

.field private gestures:Landroid/gesture/GestureOverlayView;

.field private handleGestureListener:Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

.field private isCheckGesture:Z

.field private isDoubleTab:Z

.field private isGesture:Z

.field private isShowGestureLine:Z

.field private isSimpleFling:Z

.field private isSingleReact:Z

.field private onFlingPerformedListener:Lcom/gamevil/nexus2/NexusTouch$OnFlingPerformedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    const/16 v0, 0xc8

    sput v0, Lcom/gamevil/nexus2/NexusTouch;->nThresholdVelocity:I

    .line 107
    const/16 v0, 0x78

    sput v0, Lcom/gamevil/nexus2/NexusTouch;->nMinDistance:I

    .line 214
    sput-object v1, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    .line 736
    sput-object v1, Lcom/gamevil/nexus2/NexusTouch;->self:Lcom/gamevil/nexus2/NexusTouch;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Lcom/gamevil/nexus2/NexusTouch;->flingDirections:I

    .line 81
    iput-object v2, p0, Lcom/gamevil/nexus2/NexusTouch;->context:Landroid/content/Context;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isSingleReact:Z

    .line 83
    iput-boolean v1, p0, Lcom/gamevil/nexus2/NexusTouch;->isDoubleTab:Z

    .line 84
    iput-boolean v1, p0, Lcom/gamevil/nexus2/NexusTouch;->isShowGestureLine:Z

    .line 99
    iput-boolean v1, p0, Lcom/gamevil/nexus2/NexusTouch;->isSimpleFling:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    .line 112
    iput-object v2, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    .line 113
    iput-boolean v1, p0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    .line 114
    iput-boolean v1, p0, Lcom/gamevil/nexus2/NexusTouch;->isCheckGesture:Z

    .line 253
    new-instance v0, Lcom/gamevil/nexus2/NexusTouch$1;

    invoke-direct {v0, p0}, Lcom/gamevil/nexus2/NexusTouch$1;-><init>(Lcom/gamevil/nexus2/NexusTouch;)V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->handleGestureListener:Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    .line 400
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/gamevil/nexus2/NexusTouch$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/gamevil/nexus2/NexusTouch$GestureListener;-><init>(Lcom/gamevil/nexus2/NexusTouch;Lcom/gamevil/nexus2/NexusTouch$GestureListener;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestureScanner:Landroid/view/GestureDetector;

    .line 148
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusTouch;->context:Landroid/content/Context;

    .line 149
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusTouch;->Initialize()V

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/nexus2/NexusTouch;)Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isCheckGesture:Z

    return v0
.end method

.method static synthetic access$1(Lcom/gamevil/nexus2/NexusTouch;)Landroid/gesture/GestureLibrary;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gLib:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method static synthetic access$10(Lcom/gamevil/nexus2/NexusTouch;FF)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Lcom/gamevil/nexus2/NexusTouch;->onDown(FF)V

    return-void
.end method

.method static synthetic access$11(Lcom/gamevil/nexus2/NexusTouch;FF)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Lcom/gamevil/nexus2/NexusTouch;->onScroll(FF)V

    return-void
.end method

.method static synthetic access$12(Lcom/gamevil/nexus2/NexusTouch;)Z
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusTouch;->onSingleTab()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    sput-object p0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gamevil/nexus2/NexusTouch;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isSimpleFling:Z

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/gamevil/nexus2/NexusTouch;->nMinDistance:I

    return v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/gamevil/nexus2/NexusTouch;->nThresholdVelocity:I

    return v0
.end method

.method static synthetic access$7()Lcom/gamevil/nexus2/NexusTouch;
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->self:Lcom/gamevil/nexus2/NexusTouch;

    return-object v0
.end method

.method static synthetic access$8(Lcom/gamevil/nexus2/NexusTouch;FF)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Lcom/gamevil/nexus2/NexusTouch;->onUp(FF)V

    return-void
.end method

.method static synthetic access$9(Lcom/gamevil/nexus2/NexusTouch;II)Z
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Lcom/gamevil/nexus2/NexusTouch;->onDoubleTap(II)Z

    move-result v0

    return v0
.end method

.method private initSettingGesture()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/String;

    const-string v1, "GESTURE_NONE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    .line 327
    return-void
.end method

.method private onDoubleTap(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    if-eqz v0, :cond_0

    .line 333
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isCheckGesture:Z

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "[NexusTouch Gestures]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDoubleTap name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/lang/String;

    const-string v1, "DOUBLE_TAB"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isDoubleTab:Z

    .line 344
    :cond_0
    const/16 v0, 0x2d

    invoke-static {v0, p1, p2, v3}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 345
    return v3
.end method

.method private onDown(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    if-eqz v0, :cond_1

    .line 352
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isDoubleTab:Z

    if-nez v0, :cond_1

    .line 354
    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isShowGestureLine:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 360
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    new-instance v1, Lcom/gamevil/nexus2/NexusTouch$Vertex;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/gamevil/nexus2/NexusTouch$Vertex;-><init>(Lcom/gamevil/nexus2/NexusTouch;FFZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_1
    return-void
.end method

.method private onScroll(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isCheckGesture:Z

    if-eqz v0, :cond_0

    .line 371
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isShowGestureLine:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    new-instance v1, Lcom/gamevil/nexus2/NexusTouch$Vertex;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/gamevil/nexus2/NexusTouch$Vertex;-><init>(Lcom/gamevil/nexus2/NexusTouch;FFZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    return-void
.end method

.method private onSingleTab()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public static onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[DEBUG NexusTouch] CALL onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->self:Lcom/gamevil/nexus2/NexusTouch;

    iget-boolean v0, v0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->self:Lcom/gamevil/nexus2/NexusTouch;

    iget-boolean v0, v0, Lcom/gamevil/nexus2/NexusTouch;->isSimpleFling:Z

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->self:Lcom/gamevil/nexus2/NexusTouch;

    iget-object v0, v0, Lcom/gamevil/nexus2/NexusTouch;->gestureScanner:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private onUp(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    if-eqz v0, :cond_1

    .line 380
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isShowGestureLine:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    new-instance v1, Lcom/gamevil/nexus2/NexusTouch$Vertex;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/gamevil/nexus2/NexusTouch$Vertex;-><init>(Lcom/gamevil/nexus2/NexusTouch;FFZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isDoubleTab:Z

    .line 388
    :cond_1
    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    sput-object p0, Lcom/gamevil/nexus2/NexusTouch;->self:Lcom/gamevil/nexus2/NexusTouch;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isSingleReact:Z

    .line 158
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->context:Landroid/content/Context;

    const/high16 v1, 0x7f060000

    invoke-static {v0, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gLib:Landroid/gesture/GestureLibrary;

    .line 159
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gLib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "android.gesture"

    const-string v1, "could not load gesture library!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "could not load gesture library!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "gesture library is loaded!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    .line 167
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Landroid/gesture/GestureOverlayView;->setGestureStrokeType(I)V

    .line 168
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1}, Landroid/gesture/GestureOverlayView;->getGestureColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setUncertainGestureColor(I)V

    .line 169
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Landroid/gesture/GestureOverlayView;->setOrientation(I)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/gamevil/nexus2/NexusTouch;->setGestureEnable(Z)V

    .line 172
    return-void
.end method

.method public SetCheckGesture(Z)V
    .locals 0
    .param p1, "bCheck"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/gamevil/nexus2/NexusTouch;->isCheckGesture:Z

    .line 134
    return-void
.end method

.method public convertScreenX(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public convertScreenY(I)I
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public getFlingDirections()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/gamevil/nexus2/NexusTouch;->flingDirections:I

    return v0
.end method

.method public getFlingLastX()I
    .locals 3

    .prologue
    .line 644
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/NexusTouch$Vertex;

    .line 646
    .local v0, "it":Lcom/gamevil/nexus2/NexusTouch$Vertex;
    iget v1, v0, Lcom/gamevil/nexus2/NexusTouch$Vertex;->x:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/gamevil/nexus2/NexusTouch;->convertScreenX(I)I

    move-result v1

    .line 649
    .end local v0    # "it":Lcom/gamevil/nexus2/NexusTouch$Vertex;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFlingLastY()I
    .locals 3

    .prologue
    .line 658
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/NexusTouch$Vertex;

    .line 660
    .local v0, "it":Lcom/gamevil/nexus2/NexusTouch$Vertex;
    iget v1, v0, Lcom/gamevil/nexus2/NexusTouch$Vertex;->y:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/gamevil/nexus2/NexusTouch;->convertScreenY(I)I

    move-result v1

    .line 663
    .end local v0    # "it":Lcom/gamevil/nexus2/NexusTouch$Vertex;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFlingLength()I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFlingX()[I
    .locals 5

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "i":I
    const/4 v2, 0x0

    check-cast v2, [I

    .line 675
    .local v2, "iarray":[I
    iget-object v4, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 676
    iget-object v4, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 677
    iget-object v4, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 678
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamevil/nexus2/NexusTouch$Vertex;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 683
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamevil/nexus2/NexusTouch$Vertex;>;"
    :cond_0
    return-object v2

    .line 679
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamevil/nexus2/NexusTouch$Vertex;>;"
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gamevil/nexus2/NexusTouch$Vertex;

    iget v4, v4, Lcom/gamevil/nexus2/NexusTouch$Vertex;->x:F

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/gamevil/nexus2/NexusTouch;->convertScreenX(I)I

    move-result v4

    aput v4, v2, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public getFlingY()[I
    .locals 5

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "i":I
    const/4 v2, 0x0

    check-cast v2, [I

    .line 695
    .local v2, "iarray":[I
    iget-object v4, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 696
    iget-object v4, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 697
    iget-object v4, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 698
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamevil/nexus2/NexusTouch$Vertex;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 703
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamevil/nexus2/NexusTouch$Vertex;>;"
    :cond_0
    return-object v2

    .line 699
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamevil/nexus2/NexusTouch$Vertex;>;"
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gamevil/nexus2/NexusTouch$Vertex;

    iget v4, v4, Lcom/gamevil/nexus2/NexusTouch$Vertex;->y:F

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/gamevil/nexus2/NexusTouch;->convertScreenY(I)I

    move-result v4

    aput v4, v2, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public getGestureName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-boolean v1, p0, Lcom/gamevil/nexus2/NexusTouch;->isCheckGesture:Z

    if-eqz v1, :cond_1

    .line 218
    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "getGestureName was NULLLLL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 222
    sput-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    goto :goto_0
.end method

.method public initGestureName()V
    .locals 2

    .prologue
    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[Debug NexusTouch] call initGestureName :::::"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isDoubleTab:Z

    .line 235
    sget-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/nexus2/NexusTouch;->gestureName:Ljava/lang/String;

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isShowGestureLine:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[Debug NexusTouch] call arVertex.clear() :::::"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_1
    return-void
.end method

.method public setFlingDirections(I)V
    .locals 0
    .param p1, "directions"    # I

    .prologue
    .line 617
    iput p1, p0, Lcom/gamevil/nexus2/NexusTouch;->flingDirections:I

    .line 618
    return-void
.end method

.method public setGestureEnable(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/gamevil/nexus2/NexusTouch;->isGesture:Z

    .line 196
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/gamevil/nexus2/NexusTouch;->handleGestureListener:Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 199
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    iget-boolean v1, p0, Lcom/gamevil/nexus2/NexusTouch;->isShowGestureLine:Z

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 200
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Landroid/gesture/GestureOverlayView;->setEventsInterceptionEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setEventsInterceptionEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 206
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->removeAllOnGesturePerformedListeners()V

    .line 207
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->removeAllOnGestureListeners()V

    goto :goto_0
.end method

.method public setOnFlingPerformedListener(Lcom/gamevil/nexus2/NexusTouch$OnFlingPerformedListener;)V
    .locals 0
    .param p1, "onFlingPerformedListener"    # Lcom/gamevil/nexus2/NexusTouch$OnFlingPerformedListener;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusTouch;->onFlingPerformedListener:Lcom/gamevil/nexus2/NexusTouch$OnFlingPerformedListener;

    .line 398
    return-void
.end method

.method public setShowGestureLine(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/gamevil/nexus2/NexusTouch;->isShowGestureLine:Z

    .line 138
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusTouch;->gestures:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public setSimpleFling(ZII)V
    .locals 1
    .param p1, "b"    # Z
    .param p2, "nVelocityMin"    # I
    .param p3, "nDistanceMin"    # I

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/gamevil/nexus2/NexusTouch;->isSimpleFling:Z

    .line 180
    iget-boolean v0, p0, Lcom/gamevil/nexus2/NexusTouch;->isSimpleFling:Z

    if-eqz v0, :cond_0

    .line 182
    sput p2, Lcom/gamevil/nexus2/NexusTouch;->nThresholdVelocity:I

    .line 183
    sput p3, Lcom/gamevil/nexus2/NexusTouch;->nMinDistance:I

    .line 185
    :cond_0
    return-void
.end method

.method public setSingleReact(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/gamevil/nexus2/NexusTouch;->isSingleReact:Z

    .line 614
    return-void
.end method
