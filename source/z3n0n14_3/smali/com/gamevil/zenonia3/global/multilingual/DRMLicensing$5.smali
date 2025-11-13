.class Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$5;
.super Ljava/lang/Object;
.source "DRMLicensing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$5;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$5;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->hideCertificationFrame()V

    .line 499
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$5;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->callGameActivitIntent()V

    .line 501
    return-void
.end method
