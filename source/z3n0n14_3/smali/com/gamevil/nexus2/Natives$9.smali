.class Lcom/gamevil/nexus2/Natives$9;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->hideMenuItemComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field img_menu_about:Landroid/widget/ImageView;

.field img_menu_community:Landroid/widget/ImageView;

.field img_menu_continue:Landroid/widget/ImageView;

.field img_menu_help:Landroid/widget/ImageView;

.field img_menu_newgame:Landroid/widget/ImageView;

.field img_menu_options:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1565
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->setMenuItemResId()V

    .line 1566
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1567
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$4()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1566
    iput-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_community:Landroid/widget/ImageView;

    .line 1568
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_community:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1570
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1571
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$5()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1570
    iput-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_options:Landroid/widget/ImageView;

    .line 1572
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_options:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1574
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1575
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$6()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1574
    iput-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_newgame:Landroid/widget/ImageView;

    .line 1576
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_newgame:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1578
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1579
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$7()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1578
    iput-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_continue:Landroid/widget/ImageView;

    .line 1580
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_continue:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1582
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1583
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$8()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1582
    iput-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_help:Landroid/widget/ImageView;

    .line 1584
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_help:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1586
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1587
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$9()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1586
    iput-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_about:Landroid/widget/ImageView;

    .line 1588
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_about:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1591
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1592
    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1591
    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 1593
    sget-object v0, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_community:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1596
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_options:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1597
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_newgame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1598
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_continue:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1599
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_help:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1600
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_about:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 1602
    iput-object v3, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_community:Landroid/widget/ImageView;

    .line 1603
    iput-object v3, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_options:Landroid/widget/ImageView;

    .line 1604
    iput-object v3, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_newgame:Landroid/widget/ImageView;

    .line 1605
    iput-object v3, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_continue:Landroid/widget/ImageView;

    .line 1606
    iput-object v3, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_help:Landroid/widget/ImageView;

    .line 1607
    iput-object v3, p0, Lcom/gamevil/nexus2/Natives$9;->img_menu_about:Landroid/widget/ImageView;

    .line 1608
    return-void
.end method
