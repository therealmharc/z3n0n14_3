.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showAboutView(I)V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iput p2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->val$lng:I

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 941
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 945
    iget v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->val$lng:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 947
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/html/about_jpn.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 952
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "===== aboutWebView====="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 954
    const v3, 0x7f080050

    invoke-virtual {v1, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 953
    iput-object v1, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    .line 955
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CS CODE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gamevil/nexus2/xml/NexusUtils;->CS_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    .line 959
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 958
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 960
    .local v0, "txtCS_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v1, v1, 0xb4

    div-int/lit16 v1, v1, 0xf0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 961
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit16 v1, v1, 0xdc

    div-int/lit16 v1, v1, 0x190

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 963
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_0

    .line 965
    const-string v1, "###"

    const-string v2, "##### if(NexusGLActivity.displayWidth == 1280) ####"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v1, v1, 0xb4

    div-int/lit16 v1, v1, 0xf0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 967
    sget v1, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit16 v1, v1, 0xdc

    div-int/lit16 v1, v1, 0x190

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 968
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->txtCS:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    .end local v0    # "txtCS_Layout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 950
    :cond_2
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$11;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/html/about.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
