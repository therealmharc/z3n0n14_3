.class Lcom/gamevil/nexus2/Natives$8;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->hideReplyMoveComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 1514
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1515
    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1514
    check-cast v0, Landroid/widget/ImageView;

    .line 1516
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1517
    const v2, 0x7f070037

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1516
    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 1518
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1519
    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1518
    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 1523
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1524
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1525
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1527
    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1528
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 1529
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 1531
    sput-object v4, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 1532
    sput-object v4, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 1533
    const/4 v0, 0x0

    .line 1535
    return-void
.end method
