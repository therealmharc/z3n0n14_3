.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showUiTitleLogoView()V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 905
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 908
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v2, 0x500

    if-lt v1, v2, :cond_0

    .line 910
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    .line 911
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 910
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 913
    .local v0, "logoLayout":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit16 v1, v1, 0x1a2

    div-int/lit16 v1, v1, 0x190

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 914
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v1, v1, 0xac

    div-int/lit16 v1, v1, 0xf0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 915
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    .end local v0    # "logoLayout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$13;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    :cond_1
    return-void
.end method
