.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->onInitialize()V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xa8

    .line 225
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    .local v1, "wvPlHelp":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit16 v2, v2, 0x190

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 228
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit16 v2, v2, 0xf0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 229
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit16 v2, v2, 0x12c

    div-int/lit16 v2, v2, 0x190

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 230
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v2, v2, 0x92

    div-int/lit16 v2, v2, 0xf0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 231
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    .local v0, "wvPlAbout":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit16 v2, v2, 0x190

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 237
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit16 v2, v2, 0xf0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 238
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit16 v2, v2, 0x12c

    div-int/lit16 v2, v2, 0x190

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 239
    sget v2, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v2, v2, 0x92

    div-int/lit16 v2, v2, 0xf0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 240
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->aboutWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/ui/UIEditText;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/ui/UIEditText;->setTextColor(I)V

    .line 250
    iget-object v3, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/ui/UIEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3, v2}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$0(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 251
    sget-boolean v2, Lcom/gamevil/nexus2/NexusGLActivity;->isLargeScreen:Z

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v2}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x34

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 253
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v2}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v2, v2, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    iget-object v3, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v3}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/ui/UIEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v2}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x34

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 256
    iget-object v2, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$1;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-static {v2}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->access$1(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
