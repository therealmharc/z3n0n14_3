.class public Lcom/gamevil/nexus2/NexusGLRenderer;
.super Ljava/lang/Object;
.source "NexusGLRenderer.java"

# interfaces
.implements Lcom/gamevil/nexus2/NexusGLSurfaceView$Renderer;


# static fields
.field public static bTouchDown:Z

.field public static m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

.field public static touchPassCount:I


# instance fields
.field private currentMotionEvent:I

.field private handleCletParam1:I

.field private handleCletParam2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    sput-boolean v0, Lcom/gamevil/nexus2/NexusGLRenderer;->bTouchDown:Z

    .line 111
    sput v0, Lcom/gamevil/nexus2/NexusGLRenderer;->touchPassCount:I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x8

    iput v0, p0, Lcom/gamevil/nexus2/NexusGLRenderer;->currentMotionEvent:I

    .line 30
    iput v1, p0, Lcom/gamevil/nexus2/NexusGLRenderer;->handleCletParam1:I

    .line 31
    iput v1, p0, Lcom/gamevil/nexus2/NexusGLRenderer;->handleCletParam2:I

    .line 26
    return-void
.end method

.method private sendHandleCletEvent()V
    .locals 5

    .prologue
    .line 218
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/ui/EventQueue;->IsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v1, v1, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/ui/EventQueue;->Dequeue()Lcom/gamevil/zenonia3/ui/EventQueue$EventItem;

    move-result-object v0

    .line 224
    .local v0, "currentEvent":Lcom/gamevil/zenonia3/ui/EventQueue$EventItem;
    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/EventQueue$EventItem;->GetEvent()I

    move-result v1

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/EventQueue$EventItem;->GetParam1()I

    move-result v2

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/EventQueue$EventItem;->GetParam2()I

    move-result v3

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/EventQueue$EventItem;->GetPointerID()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 228
    .end local v0    # "currentEvent":Lcom/gamevil/zenonia3/ui/EventQueue$EventItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLRenderer;->sendHandleCletEvent()V

    .line 40
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->NativeRender()V

    .line 42
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/UIControllerView;->checkUIStatus()V

    .line 47
    :cond_0
    return-void
.end method

.method public getConfigSpec()[I
    .locals 2

    .prologue
    .line 51
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 55
    .local v0, "configSpec":[I
    return-object v0

    .line 51
    nop

    :array_0
    .array-data 4
        0x3025
        0x10
        0x3038
    .end array-data
.end method

.method public setTouchEvent(IIII)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "_param1"    # I
    .param p3, "_param2"    # I
    .param p4, "_param3"    # I

    .prologue
    .line 115
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/EventQueue;->IsFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gamevil/zenonia3/ui/EventQueue;->FullEnqueue(IIII)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    iget-object v0, v0, Lcom/gamevil/nexus2/ui/UIControllerView;->eventQueue:Lcom/gamevil/zenonia3/ui/EventQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gamevil/zenonia3/ui/EventQueue;->Enqueue(IIII)V

    goto :goto_0
.end method

.method public surfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "_gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "_width"    # I
    .param p3, "_height"    # I

    .prologue
    const/16 v0, 0x1f4

    .line 61
    sput p2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    .line 62
    sput p3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    .line 64
    if-gt p2, v0, :cond_0

    if-le p3, v0, :cond_2

    .line 66
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamevil/nexus2/NexusGLActivity;->isLargeScreen:Z

    .line 82
    :goto_0
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/ui/UIControllerView;->removeAllUIArea()V

    .line 85
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gamevil/nexus2/ui/UIControllerView;->setSize(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 87
    :cond_1
    invoke-static {p2, p3}, Lcom/gamevil/nexus2/Natives;->NativeResize(II)V

    .line 88
    return-void

    .line 73
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamevil/nexus2/NexusGLActivity;->isLargeScreen:Z

    goto :goto_0
.end method

.method public surfaceCreated(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 95
    sput-object p0, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    .line 97
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->NativeInit()V

    .line 101
    return-void
.end method
