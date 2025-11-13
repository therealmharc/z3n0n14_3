.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideUiTitleLogoView()V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 947
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v2, 0x7f070022

    invoke-virtual {v0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    .line 948
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$14;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->ui_title_logo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 958
    :cond_0
    return-void
.end method
