.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideAboutView()V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 982
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 985
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 986
    const v2, 0x7f080050

    invoke-virtual {v0, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 985
    iput-object v0, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    .line 987
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$12;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    :cond_0
    return-void
.end method
