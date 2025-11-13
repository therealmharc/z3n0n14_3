.class Lcom/gamevil/nexus2/Natives$8;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->hideMenuComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1495
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1496
    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1495
    check-cast v0, Landroid/widget/ImageView;

    .line 1497
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1499
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1500
    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1499
    check-cast v1, Landroid/widget/ImageView;

    .line 1501
    .local v1, "img2":Landroid/widget/ImageView;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1503
    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1504
    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1503
    check-cast v2, Landroid/widget/ImageView;

    .line 1505
    .local v2, "zen":Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1507
    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1508
    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1509
    invoke-virtual {v2}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1511
    const/4 v0, 0x0

    .line 1512
    const/4 v1, 0x0

    .line 1513
    const/4 v2, 0x0

    .line 1515
    return-void
.end method
