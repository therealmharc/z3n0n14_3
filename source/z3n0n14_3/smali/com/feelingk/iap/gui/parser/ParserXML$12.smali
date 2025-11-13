.class Lcom/feelingk/iap/gui/parser/ParserXML$12;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$12;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 2555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$12;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$12;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$12;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$12;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const-string v1, "join"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogOKButtonClick(Ljava/lang/String;)V

    .line 2564
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$12;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x3

    new-array v1, v1, [Z

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$14(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V

    .line 2568
    :goto_0
    return-void

    .line 2567
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$12;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogOKButtonClick(Ljava/lang/String;)V

    goto :goto_0
.end method
