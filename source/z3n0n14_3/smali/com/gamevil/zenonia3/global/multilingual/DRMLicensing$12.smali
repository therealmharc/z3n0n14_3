.class Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$12;
.super Ljava/lang/Object;
.source "DRMLicensing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$12;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$12;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->finish()V

    .line 435
    return-void
.end method
