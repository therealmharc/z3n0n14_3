.class Lcom/gamevil/nexus2/Natives$6;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->showTitleComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1439
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1440
    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1439
    check-cast v0, Landroid/widget/ImageView;

    .line 1441
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1443
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1444
    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1443
    check-cast v1, Landroid/widget/TextView;

    .line 1445
    .local v1, "txt":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1446
    invoke-virtual {v1}, Landroid/widget/TextView;->bringToFront()V

    .line 1448
    new-instance v2, Lcom/gamevil/nexus2/Natives$6$1;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$6$1;-><init>(Lcom/gamevil/nexus2/Natives$6;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1470
    return-void
.end method
