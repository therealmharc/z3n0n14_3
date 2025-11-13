.class public Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;
.super Lcom/gamevil/zenonia3/global/multilingual/PurchaseObserver;
.source "Zenonia3Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Nexus2PurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;


# direct methods
.method public constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    .line 775
    invoke-direct {p0, p1, p2}, Lcom/gamevil/zenonia3/global/multilingual/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 776
    return-void
.end method


# virtual methods
.method public onPurchaseChange(Lcom/gamevil/zenonia3/global/multilingual/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 3
    .param p1, "purchaseState"    # Lcom/gamevil/zenonia3/global/multilingual/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 795
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Consts$PurchaseState;->PURCHASED:Lcom/gamevil/zenonia3/global/multilingual/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showDialog(I)V

    .line 798
    :cond_0
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 799
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 801
    :cond_1
    invoke-virtual {p1}, Lcom/gamevil/zenonia3/global/multilingual/Consts$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    sget v2, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->pIdIndex:I

    invoke-static {v0, v1, v2}, Lcom/gamevil/nexus2/Natives;->NativeHandleInAppBiiling(Ljava/lang/String;II)V

    .line 803
    return-void
.end method

.method public onRequestPurchaseCallback(Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;)V
    .locals 3
    .param p1, "request"    # Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;

    .prologue
    .line 809
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 810
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|| onRequestPurchaseResponse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| mProductId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/gamevil/zenonia3/global/multilingual/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 812
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|| responseCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 813
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 816
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;->RESULT_OK:Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;

    if-eq p2, v0, :cond_1

    .line 818
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 819
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 820
    :cond_0
    invoke-virtual {p2}, Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    sget v2, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->pIdIndex:I

    invoke-static {v0, v1, v2}, Lcom/gamevil/nexus2/Natives;->NativeHandleInAppBiiling(Ljava/lang/String;II)V

    .line 824
    :cond_1
    return-void
.end method

.method public onRestoreTransactionsCallback(Lcom/gamevil/zenonia3/global/multilingual/BillingService$RestoreTransactions;Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;)V
    .locals 5
    .param p1, "request"    # Lcom/gamevil/zenonia3/global/multilingual/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;

    .prologue
    .line 829
    sget-object v2, Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;->RESULT_OK:Lcom/gamevil/zenonia3/global/multilingual/Consts$ResponseCode;

    if-ne p2, v2, :cond_0

    .line 837
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 838
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "db_initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 849
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 846
    :cond_0
    const-string v2, "Nexus2Billing"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RestoreTransactions error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSupported(Z)V
    .locals 2
    .param p1, "supported"    # Z

    .prologue
    .line 781
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 782
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "|onBillingSupported "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 785
    if-nez p1, :cond_0

    .line 788
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showDialog(I)V

    .line 790
    :cond_0
    return-void
.end method
