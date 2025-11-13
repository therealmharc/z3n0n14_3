.class public Lcom/gamevil/zenonia3/ui/UIFullTouch;
.super Lcom/gamevil/nexus2/ui/NeoUIArea;
.source "UIFullTouch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/gamevil/nexus2/ui/NeoUIArea;-><init>()V

    return-void
.end method


# virtual methods
.method public convertScreenX(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 82
    sget v0, Lcom/gamevil/nexus2/NexusGLActivity;->gameScreenWidth:I

    mul-int/2addr v0, p1

    sget v1, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->width:I

    div-int/2addr v0, v1

    return v0
.end method

.method public convertScreenY(I)I
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 87
    sget v0, Lcom/gamevil/nexus2/NexusGLActivity;->gameScreenHeight:I

    mul-int/2addr v0, p1

    sget v1, Lcom/gamevil/nexus2/ui/NeoUIControllerView;->height:I

    div-int/2addr v0, v1

    return v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sget v0, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setPosition(IIII)V

    .line 65
    return-void
.end method

.method public onAction(IFFI)V
    .locals 4
    .param p1, "_uiAreaAction"    # I
    .param p2, "_px"    # F
    .param p3, "_py"    # F
    .param p4, "_pointerId"    # I

    .prologue
    .line 93
    float-to-int v2, p2

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->convertScreenX(I)I

    move-result v0

    .line 94
    .local v0, "_x":I
    float-to-int v2, p3

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->convertScreenY(I)I

    move-result v1

    .line 105
    .local v1, "_y":I
    const/16 v2, 0x65

    if-ne p1, v2, :cond_1

    .line 108
    sget-object v2, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, v0, v1, p4}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 109
    const/4 v2, 0x1

    iput v2, p0, Lcom/gamevil/zenonia3/ui/UIFullTouch;->mStatus:I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    .line 113
    sget-object v2, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v0, v1, p4}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    goto :goto_0

    .line 115
    :cond_2
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 118
    sget-object v2, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v0, v1, p4}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 119
    const/4 v2, 0x0

    iput v2, p0, Lcom/gamevil/zenonia3/ui/UIFullTouch;->mStatus:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "_canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    return-void
.end method

.method public releaseAll()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
