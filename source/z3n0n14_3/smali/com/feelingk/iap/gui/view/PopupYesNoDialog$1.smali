.class Lcom/feelingk/iap/gui/view/PopupYesNoDialog$1;
.super Ljava/lang/Object;
.source "PopupYesNoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupYesNoDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->access$0(Lcom/feelingk/iap/gui/view/PopupYesNoDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 65
    return-void
.end method
