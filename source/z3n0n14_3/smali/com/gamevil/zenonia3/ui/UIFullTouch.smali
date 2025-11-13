.class public Lcom/gamevil/zenonia3/ui/UIFullTouch;
.super Lcom/gamevil/nexus2/ui/UIArea;
.source "UIFullTouch.java"


# static fields
.field private static final GAME_SCREEN_HEIGHT:I = 0xf0

.field private static final GAME_SCREEN_WIDTH:I = 0x190


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/gamevil/nexus2/ui/UIArea;-><init>()V

    return-void
.end method


# virtual methods
.method public convertScreenX(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 90
    mul-int/lit16 v0, p1, 0x190

    sget v1, Lcom/gamevil/nexus2/ui/UIControllerView;->width:I

    div-int/2addr v0, v1

    return v0
.end method

.method public convertScreenY(I)I
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 95
    mul-int/lit16 v0, p1, 0xf0

    sget v1, Lcom/gamevil/nexus2/ui/UIControllerView;->height:I

    div-int/2addr v0, v1

    return v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    sget v0, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->setPosition(IIII)V

    .line 62
    return-void
.end method

.method public onAction(III)V
    .locals 5
    .param p1, "_uiAreaAction"    # I
    .param p2, "_px"    # I
    .param p3, "_py"    # I

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p0, p2}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->convertScreenX(I)I

    move-result v0

    .line 103
    .local v0, "_x":I
    invoke-virtual {p0, p3}, Lcom/gamevil/zenonia3/ui/UIFullTouch;->convertScreenY(I)I

    move-result v1

    .line 115
    .local v1, "_y":I
    const/16 v2, 0x65

    if-ne p1, v2, :cond_1

    .line 118
    sget-object v2, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 119
    const/4 v2, 0x1

    iput v2, p0, Lcom/gamevil/zenonia3/ui/UIFullTouch;->mStatus:I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    .line 123
    sget-object v2, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    goto :goto_0

    .line 125
    :cond_2
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 128
    sget-object v2, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 130
    iput v4, p0, Lcom/gamevil/zenonia3/ui/UIFullTouch;->mStatus:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "_canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    return-void
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 80
    return-void
.end method

.method public releaseAll()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setGLTexturPlane(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 86
    return-void
.end method
