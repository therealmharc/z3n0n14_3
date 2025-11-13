.class Lcom/feelingk/iap/gui/parser/ParserXML$8;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 2469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2474
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2476
    .local v0, "id":Ljava/lang/String;
    const-string v1, "info_checkbox1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2477
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v3

    .line 2487
    :goto_0
    const-string v1, "purchase_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2489
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    if-eqz v1, :cond_5

    .line 2491
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$12(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2492
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean v3, v1, v3

    .line 2493
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    .line 2508
    :cond_0
    :goto_1
    const-string v1, "auto_purchase_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2510
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v3

    .line 2513
    :cond_1
    return-void

    .line 2479
    :cond_2
    const-string v1, "info_checkbox2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2480
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    goto :goto_0

    .line 2483
    :cond_3
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean p2, v1, v2

    goto :goto_0

    .line 2496
    :cond_4
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$12(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2497
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 2498
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    goto :goto_1

    .line 2502
    :cond_5
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    if-nez v1, :cond_0

    .line 2503
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$8;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v3

    goto :goto_1
.end method
