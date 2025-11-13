.class public Lcom/gamevil/nexus2/ui/UIControllerView;
.super Landroid/view/View;
.source "UIControllerView.java"

# interfaces
.implements Lcom/gamevil/nexus2/Natives$UIListener;


# static fields
.field public static height:I

.field public static width:I


# instance fields
.field public eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

.field private eventQueueSize:I

.field public isStatusChanging:Z

.field public mgl:Ljavax/microedition/khronos/opengles/GL10;

.field private moveEventClip:I

.field public numberInputed:Ljava/lang/String;

.field public subViews:Lcom/gamevil/nexus2/ui/NxArray;

.field public textInputed:Ljava/lang/String;

.field public uiStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, -0x63

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueueSize:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->moveEventClip:I

    .line 50
    new-instance v0, Lcom/gamevil/nexus2/ui/NxArray;

    invoke-direct {v0}, Lcom/gamevil/nexus2/ui/NxArray;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    .line 52
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/gamevil/zenonia3/ui/EventQueue;

    iget v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueueSize:I

    iget v2, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->moveEventClip:I

    invoke-direct {v0, v1, v2}, Lcom/gamevil/zenonia3/ui/EventQueue;-><init>(II)V

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, -0x63

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueueSize:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->moveEventClip:I

    .line 61
    new-instance v0, Lcom/gamevil/nexus2/ui/NxArray;

    invoke-direct {v0}, Lcom/gamevil/nexus2/ui/NxArray;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    .line 63
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->numberInputed:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/gamevil/nexus2/ui/UIArea;->initCompatibility()V

    .line 68
    new-instance v0, Lcom/gamevil/zenonia3/ui/EventQueue;

    iget v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueueSize:I

    iget v2, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->moveEventClip:I

    invoke-direct {v0, v1, v2}, Lcom/gamevil/zenonia3/ui/EventQueue;-><init>(II)V

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    .line 69
    return-void
.end method


# virtual methods
.method public OnEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 323
    return-void
.end method

.method public OnSoundPlay(IIZ)V
    .locals 0
    .param p1, "sndID"    # I
    .param p2, "vol"    # I
    .param p3, "isLoop"    # Z

    .prologue
    .line 303
    return-void
.end method

.method public OnStopSound()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public OnUIStatusChange(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 313
    return-void
.end method

.method public OnVibrate(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 318
    return-void
.end method

.method public addSubView(Lcom/gamevil/nexus2/ui/UIArea;)V
    .locals 1
    .param p1, "_view"    # Lcom/gamevil/nexus2/ui/UIArea;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/NxArray;->addElemet(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public blinkSButton(I)V
    .locals 0
    .param p1, "blink"    # I

    .prologue
    .line 328
    return-void
.end method

.method public changeUIStatus(I)V
    .locals 1
    .param p1, "_status"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 169
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->hideAllUI()V

    .line 170
    return-void
.end method

.method public checkUIStatus()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->setUIState()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 86
    :cond_0
    return-void
.end method

.method public getHalKeyCode(I)I
    .locals 4
    .param p1, "_keyCode"    # I

    .prologue
    .line 201
    const-class v1, Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "######## IN : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ##########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "rtnKeyCode":I
    sparse-switch p1, :sswitch_data_0

    .line 277
    move v0, p1

    .line 282
    :goto_0
    const-class v1, Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "######## OUT : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ##########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v0

    .line 207
    :sswitch_0
    const/4 v0, -0x5

    .line 208
    goto :goto_0

    .line 210
    :sswitch_1
    const/4 v0, -0x3

    .line 211
    goto :goto_0

    .line 213
    :sswitch_2
    const/4 v0, -0x4

    .line 214
    goto :goto_0

    .line 216
    :sswitch_3
    const/4 v0, -0x1

    .line 217
    goto :goto_0

    .line 219
    :sswitch_4
    const/4 v0, -0x2

    .line 220
    goto :goto_0

    .line 222
    :sswitch_5
    const/16 v0, 0x30

    .line 223
    goto :goto_0

    .line 225
    :sswitch_6
    const/16 v0, 0x31

    .line 226
    goto :goto_0

    .line 228
    :sswitch_7
    const/16 v0, 0x32

    .line 229
    goto :goto_0

    .line 231
    :sswitch_8
    const/16 v0, 0x33

    .line 232
    goto :goto_0

    .line 234
    :sswitch_9
    const/16 v0, 0x34

    .line 235
    goto :goto_0

    .line 237
    :sswitch_a
    const/16 v0, 0x35

    .line 238
    goto :goto_0

    .line 240
    :sswitch_b
    const/16 v0, 0x36

    .line 241
    goto :goto_0

    .line 243
    :sswitch_c
    const/16 v0, 0x37

    .line 244
    goto :goto_0

    .line 246
    :sswitch_d
    const/16 v0, 0x38

    .line 247
    goto :goto_0

    .line 249
    :sswitch_e
    const/16 v0, 0x39

    .line 250
    goto :goto_0

    .line 252
    :sswitch_f
    const/16 v0, -0x10

    .line 253
    goto :goto_0

    .line 255
    :sswitch_10
    const/16 v0, -0x10

    .line 256
    goto :goto_0

    .line 258
    :sswitch_11
    const/4 v0, -0x8

    .line 259
    goto :goto_0

    .line 262
    :sswitch_12
    const/16 v0, 0x11

    .line 263
    goto :goto_0

    .line 265
    :sswitch_13
    const/16 v0, 0x23

    .line 266
    goto :goto_0

    .line 268
    :sswitch_14
    const/4 v0, -0x5

    .line 269
    goto :goto_0

    .line 271
    :sswitch_15
    const/16 v0, -0x10

    .line 272
    goto :goto_0

    .line 274
    :sswitch_16
    const/4 v0, -0x5

    .line 275
    goto :goto_0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_11
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x1c -> :sswitch_f
        0x1d -> :sswitch_13
        0x1f -> :sswitch_14
        0x20 -> :sswitch_15
        0x21 -> :sswitch_12
        0x2d -> :sswitch_12
        0x2f -> :sswitch_14
        0x33 -> :sswitch_12
        0x34 -> :sswitch_14
        0x36 -> :sswitch_14
        0x42 -> :sswitch_16
        0x43 -> :sswitch_10
        0x63 -> :sswitch_13
        0x64 -> :sswitch_15
        0x6c -> :sswitch_15
        0x6d -> :sswitch_12
    .end sparse-switch
.end method

.method public getSubView(I)Lcom/gamevil/nexus2/ui/UIArea;
    .locals 1
    .param p1, "_idx"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    return-object v0
.end method

.method public hideAllUI()V
    .locals 4

    .prologue
    .line 152
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 153
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 162
    return-void

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 156
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v3, :cond_1

    .line 158
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/gamevil/nexus2/ui/UIArea;->setIsHidden(Z)V

    .line 153
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 120
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 129
    return-void

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 123
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v3, :cond_1

    .line 125
    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/UIArea;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/NxArray;->releaseAll()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    .line 298
    return-void
.end method

.method public removeAllUIArea()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/NxArray;->cleanUpAll()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 292
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    if-nez v3, :cond_1

    .line 196
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 188
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 191
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v3, :cond_2

    .line 193
    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/UIArea;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSize(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "_gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "_width"    # I
    .param p3, "_height"    # I

    .prologue
    .line 73
    sput p2, Lcom/gamevil/nexus2/ui/UIControllerView;->width:I

    .line 74
    sput p3, Lcom/gamevil/nexus2/ui/UIControllerView;->height:I

    .line 75
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->initialize()V

    .line 76
    iput-object p1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 77
    return-void
.end method

.method public setUIState()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public showMylSButton(I)V
    .locals 0
    .param p1, "show"    # I

    .prologue
    .line 333
    return-void
.end method
