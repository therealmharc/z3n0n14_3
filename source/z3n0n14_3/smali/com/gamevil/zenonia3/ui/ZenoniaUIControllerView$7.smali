.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setNumberInputVisible()V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 779
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->numberInput:Lcom/gamevil/nexus2/ui/UIEditNumber;

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->numberInput:Lcom/gamevil/nexus2/ui/UIEditNumber;

    invoke-virtual {v1, v3}, Lcom/gamevil/nexus2/ui/UIEditNumber;->setVisibility(I)V

    .line 782
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->numberInput:Lcom/gamevil/nexus2/ui/UIEditNumber;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/ui/UIEditNumber;->requestFocus()Z

    .line 784
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 785
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 784
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 787
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$7;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->numberInput:Lcom/gamevil/nexus2/ui/UIEditNumber;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 789
    .end local v0    # "mgr":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
