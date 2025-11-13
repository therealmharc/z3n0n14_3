.class Lcom/gamevil/nexus2/Natives$12;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->getGPoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1686
    sget-object v0, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1688
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1689
    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1688
    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 1690
    sget-object v0, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    sget-object v1, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    sget-object v0, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1693
    :cond_0
    return-void
.end method
