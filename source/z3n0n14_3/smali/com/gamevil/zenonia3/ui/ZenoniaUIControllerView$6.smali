.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->setTextInputInvisible()V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 815
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    if-eqz v1, :cond_0

    .line 817
    const-string v1, "#Java#"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#### setTextInputInvisible #### code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v3, v3, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/ui/UIEditText;->setVisibility(I)V

    .line 819
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/ui/UIEditText;->clearFocus()V

    .line 820
    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/ui/UIEditText;->clearText()V

    .line 822
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 823
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 822
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 824
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$6;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    iget-object v1, v1, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->textInput:Lcom/gamevil/nexus2/ui/UIEditText;

    invoke-virtual {v1}, Lcom/gamevil/nexus2/ui/UIEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 827
    .end local v0    # "mgr":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
