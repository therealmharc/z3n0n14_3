.class Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$10;
.super Ljava/lang/Object;
.source "DRMLicensing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$10;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$10;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    .local v0, "button":Landroid/widget/Button;
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$10;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 114
    .local v1, "button1":Landroid/widget/Button;
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
