.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideHelpView()V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$10;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 930
    :cond_0
    return-void
.end method
