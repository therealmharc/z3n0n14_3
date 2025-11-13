.class Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$7;
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$7;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$7;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 512
    .local v0, "frame":Landroid/widget/LinearLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$7;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "frame":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 514
    .restart local v0    # "frame":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    return-void
.end method
