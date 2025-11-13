.class public Lcom/gamevil/nexus2/NexusGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "NexusGLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/NexusGLSurfaceView$Renderer;
    }
.end annotation


# instance fields
.field private mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

.field private mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 48
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 49
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 141
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLThread;->requestExitAndWait()V

    .line 142
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLThread;->onPause()V

    .line 104
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->NativePauseClet()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLThread;->onResume()V

    .line 112
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->NativeResumeClet()V

    .line 113
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 120
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/NexusGLThread;->onWindowFocusChanged(Z)V

    .line 122
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0, p1}, Lcom/gamevil/nexus2/NexusGLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 148
    return-void
.end method

.method public setRenderer(Lcom/gamevil/nexus2/NexusGLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/gamevil/nexus2/NexusGLSurfaceView$Renderer;

    .prologue
    .line 61
    new-instance v0, Lcom/gamevil/nexus2/NexusGLThread;

    iget-object v1, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p1, v1}, Lcom/gamevil/nexus2/NexusGLThread;-><init>(Lcom/gamevil/nexus2/NexusGLSurfaceView$Renderer;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    .line 62
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLThread;->setPriority(I)V

    .line 63
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLThread;->start()V

    .line 64
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-static {v0}, Lcom/gamevil/nexus2/Natives;->setEventListener(Lcom/gamevil/nexus2/Natives$EventListener;)V

    .line 65
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0, p3, p4}, Lcom/gamevil/nexus2/NexusGLThread;->onSurfaceChaged(II)V

    .line 88
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLThread;->surfaceCreated()V

    .line 71
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLSurfaceView;->mGLThread:Lcom/gamevil/nexus2/NexusGLThread;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLThread;->surfaceDestroyed()V

    .line 79
    return-void
.end method
