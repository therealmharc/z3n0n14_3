.class Lcom/feelingk/iap/gui/parser/ParserXML$15;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 2599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onEnterTstore()V

    .line 2606
    :goto_0
    return-void

    .line 2605
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    const-string v1, "\ud574\ub2f9 \uc11c\ube44\uc2a4\ub294 T store \uc124\uce58 \ud6c4 \uc774\uc6a9\ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4. \uac10\uc0ac\ud569\ub2c8\ub2e4."

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onTstoreLockError(Ljava/lang/String;)V

    goto :goto_0
.end method
