.class public Lcom/gamevil/nexus2/ui/UIControllerView;
.super Landroid/view/View;
.source "UIControllerView.java"

# interfaces
.implements Lcom/gamevil/nexus2/Natives$UIListener;


# static fields
.field public static height:I

.field public static width:I


# instance fields
.field public isStatusChanging:Z

.field public mgl:Ljavax/microedition/khronos/opengles/GL10;

.field public subViews:Lcom/gamevil/nexus2/ui/NxArray;

.field public textInputed:Ljava/lang/String;

.field public uiStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, -0x63

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 44
    new-instance v0, Lcom/gamevil/nexus2/ui/NxArray;

    invoke-direct {v0}, Lcom/gamevil/nexus2/ui/NxArray;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    .line 46
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, -0x63

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 52
    new-instance v0, Lcom/gamevil/nexus2/ui/NxArray;

    invoke-direct {v0}, Lcom/gamevil/nexus2/ui/NxArray;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    .line 54
    iput v1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->textInputed:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/gamevil/nexus2/ui/UIArea;->initCompatibility()V

    .line 57
    return-void
.end method


# virtual methods
.method public OnEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 307
    return-void
.end method

.method public OnSoundPlay(IIZ)V
    .locals 0
    .param p1, "sndID"    # I
    .param p2, "vol"    # I
    .param p3, "isLoop"    # Z

    .prologue
    .line 287
    return-void
.end method

.method public OnStopSound()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public OnUIStatusChange(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 297
    return-void
.end method

.method public OnVibrate(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 302
    return-void
.end method

.method public addSubView(Lcom/gamevil/nexus2/ui/UIArea;)V
    .locals 1
    .param p1, "_view"    # Lcom/gamevil/nexus2/ui/UIArea;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/NxArray;->addElemet(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public blinkSButton(I)V
    .locals 0
    .param p1, "blink"    # I

    .prologue
    .line 312
    return-void
.end method

.method public changeUIStatus(I)V
    .locals 3
    .param p1, "_status"    # I

    .prologue
    .line 155
    sput p1, Lcom/gamevil/nexus2/Natives;->saveUiStatus:I

    .line 156
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==== changeUIStatus 2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    iput p1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->uiStatus:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 159
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->hideAllUI()V

    .line 160
    return-void
.end method

.method public checkUIStatus()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->setUIState()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 74
    :cond_0
    return-void
.end method

.method public getHalKeyCode(I)I
    .locals 1
    .param p1, "_keyCode"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "rtnKeyCode":I
    packed-switch p1, :pswitch_data_0

    .line 263
    :pswitch_0
    move v0, p1

    .line 268
    :goto_0
    return v0

    .line 194
    :pswitch_1
    const/4 v0, -0x5

    .line 195
    goto :goto_0

    .line 197
    :pswitch_2
    const/4 v0, -0x3

    .line 198
    goto :goto_0

    .line 200
    :pswitch_3
    const/4 v0, -0x4

    .line 201
    goto :goto_0

    .line 203
    :pswitch_4
    const/4 v0, -0x1

    .line 204
    goto :goto_0

    .line 206
    :pswitch_5
    const/4 v0, -0x2

    .line 207
    goto :goto_0

    .line 209
    :pswitch_6
    const/16 v0, 0x30

    .line 210
    goto :goto_0

    .line 212
    :pswitch_7
    const/16 v0, 0x31

    .line 213
    goto :goto_0

    .line 215
    :pswitch_8
    const/16 v0, 0x32

    .line 216
    goto :goto_0

    .line 218
    :pswitch_9
    const/16 v0, 0x33

    .line 219
    goto :goto_0

    .line 221
    :pswitch_a
    const/16 v0, 0x34

    .line 222
    goto :goto_0

    .line 224
    :pswitch_b
    const/16 v0, 0x35

    .line 225
    goto :goto_0

    .line 227
    :pswitch_c
    const/16 v0, 0x36

    .line 228
    goto :goto_0

    .line 230
    :pswitch_d
    const/16 v0, 0x37

    .line 231
    goto :goto_0

    .line 233
    :pswitch_e
    const/16 v0, 0x38

    .line 234
    goto :goto_0

    .line 236
    :pswitch_f
    const/16 v0, 0x39

    .line 237
    goto :goto_0

    .line 239
    :pswitch_10
    const/16 v0, -0x10

    .line 240
    goto :goto_0

    .line 242
    :pswitch_11
    const/16 v0, -0x10

    .line 243
    goto :goto_0

    .line 245
    :pswitch_12
    const/4 v0, -0x8

    .line 246
    goto :goto_0

    .line 248
    :pswitch_13
    const/4 v0, -0x1

    .line 249
    goto :goto_0

    .line 251
    :pswitch_14
    const/4 v0, -0x3

    .line 252
    goto :goto_0

    .line 254
    :pswitch_15
    const/4 v0, -0x2

    .line 255
    goto :goto_0

    .line 257
    :pswitch_16
    const/4 v0, -0x4

    .line 258
    goto :goto_0

    .line 260
    :pswitch_17
    const/4 v0, -0x5

    .line 261
    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.method public getSubView(I)Lcom/gamevil/nexus2/ui/UIArea;
    .locals 1
    .param p1, "_idx"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    return-object v0
.end method

.method public hideAllUI()V
    .locals 4

    .prologue
    .line 140
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 141
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 150
    return-void

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 144
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v3, :cond_1

    .line 146
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/gamevil/nexus2/ui/UIArea;->setIsHidden(Z)V

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 108
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 117
    return-void

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 111
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v3, :cond_1

    .line 113
    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/UIArea;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/NxArray;->releaseAll()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    .line 282
    return-void
.end method

.method public removeAllUIArea()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/NxArray;->cleanUpAll()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->isStatusChanging:Z

    .line 276
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    if-nez v3, :cond_1

    .line 186
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/ui/NxArray;->getElemetsSize()I

    move-result v2

    .line 178
    .local v2, "_subViewSize":I
    const/4 v1, 0x0

    .local v1, "_i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 180
    iget-object v3, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->subViews:Lcom/gamevil/nexus2/ui/NxArray;

    invoke-virtual {v3, v1}, Lcom/gamevil/nexus2/ui/NxArray;->getElement(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamevil/nexus2/ui/UIArea;

    .line 181
    .local v0, "_area":Lcom/gamevil/nexus2/ui/UIArea;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/gamevil/nexus2/ui/UIArea;->mIsHidden:Z

    if-nez v3, :cond_2

    .line 183
    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/ui/UIArea;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
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
    .line 61
    sput p2, Lcom/gamevil/nexus2/ui/UIControllerView;->width:I

    .line 62
    sput p3, Lcom/gamevil/nexus2/ui/UIControllerView;->height:I

    .line 63
    invoke-virtual {p0}, Lcom/gamevil/nexus2/ui/UIControllerView;->initialize()V

    .line 64
    iput-object p1, p0, Lcom/gamevil/nexus2/ui/UIControllerView;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 65
    return-void
.end method

.method public setUIState()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public showMylSButton(I)V
    .locals 0
    .param p1, "show"    # I

    .prologue
    .line 317
    return-void
.end method
