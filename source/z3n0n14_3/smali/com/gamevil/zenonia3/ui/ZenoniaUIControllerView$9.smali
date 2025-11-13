.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showHelpView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

.field private final synthetic val$lng:I


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iput p2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->val$lng:I

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 894
    iget v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->val$lng:I

    packed-switch v0, :pswitch_data_0

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 898
    :pswitch_0
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/html/help_eng.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :pswitch_1
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/html/help_kor.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 906
    :pswitch_2
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/html/help_jpn.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 910
    :pswitch_3
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$9;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v0, v0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/html/help_chin.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
