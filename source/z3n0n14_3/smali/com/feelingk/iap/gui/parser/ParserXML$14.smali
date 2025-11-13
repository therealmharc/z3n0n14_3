.class Lcom/feelingk/iap/gui/parser/ParserXML$14;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 2580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2583
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    if-eqz v0, :cond_1

    .line 2584
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseAutoButtonClick()V

    .line 2587
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V

    .line 2588
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v0

    iput-boolean v2, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    .line 2597
    :goto_0
    return-void

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseAutoCancelButtonClick(Ljava/lang/String;)V

    goto :goto_0

    .line 2596
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$14;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseAutoButtonClick()V

    goto :goto_0
.end method
