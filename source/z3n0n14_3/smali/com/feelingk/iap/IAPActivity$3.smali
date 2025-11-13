.class Lcom/feelingk/iap/IAPActivity$3;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYesNoDialogCancelButtonClick()V
    .locals 3

    .prologue
    .line 607
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 608
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$8(Lcom/feelingk/iap/IAPActivity;)V

    .line 611
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 612
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 613
    .local v0, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v1, v1, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v1, :cond_0

    .line 614
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgAutoPurchaseInfoCancel()V

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    goto :goto_0
.end method

.method public onYesNoDialogOKButtonClick()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$8(Lcom/feelingk/iap/IAPActivity;)V

    .line 588
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v0, v0, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)V

    .line 590
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->sendPurchaseDismiss(Ljava/lang/String;)V

    .line 604
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v0, v0, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 596
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/IAPActivity;->popupJoinDlg()V

    .line 601
    const/16 v0, 0x6b

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0
.end method
