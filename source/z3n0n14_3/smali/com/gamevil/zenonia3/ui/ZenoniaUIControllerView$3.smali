.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setUIState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0xa7

    .line 520
    sget-boolean v0, Lcom/gamevil/nexus2/NexusGLActivity;->isLargeScreen:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 522
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 528
    :goto_0
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v1}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/ui/UIEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/ui/UIEditText;->setEnabled(Z)V

    .line 530
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 525
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$3;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
