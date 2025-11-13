.class Lcom/feelingk/iap/IAPActivity$5;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoPurchaseFormDialogButtonClick(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 642
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)V

    .line 643
    if-eqz p1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAfterAutoPurchaseInfoAgree(Z)V

    .line 647
    :goto_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 648
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$14(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAfterAutoPurchaseInfoAgree(Z)V

    goto :goto_0
.end method

.method public onAutoPurchaseFormDialogCancelButtonClick()V
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)V

    .line 653
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$15(Lcom/feelingk/iap/IAPActivity;)V

    .line 656
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 657
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$5;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 658
    .local v0, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 659
    return-void
.end method
