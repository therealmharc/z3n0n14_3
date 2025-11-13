.class Lcom/gamevil/nexus2/Natives$13;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->showMenuComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field OFFSET_LEFTMARGIN_ZEN:I

.field OFFSET_TOPMARGIN:I

.field OFFSET_TOPMARGIN_ZEN:I

.field OFFSET_WIDTH:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1677
    const/16 v0, 0x47

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN:I

    .line 1678
    const/16 v0, 0x190

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_WIDTH:I

    .line 1679
    const/16 v0, 0x142

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_ZEN:I

    .line 1681
    const/16 v0, 0xa

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN_ZEN:I

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x14a

    const/16 v8, 0x500

    const/4 v7, 0x0

    .line 1689
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_5

    .line 1691
    iput v9, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_ZEN:I

    .line 1692
    const/16 v5, 0x3d

    iput v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN:I

    .line 1693
    const/16 v5, 0x18f

    iput v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_WIDTH:I

    .line 1702
    :cond_0
    :goto_0
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v5, v8, :cond_1

    .line 1705
    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN_ZEN:I

    .line 1711
    :cond_1
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1712
    const v6, 0x7f07001e

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1711
    check-cast v0, Landroid/widget/ImageView;

    .line 1714
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1716
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1717
    const v6, 0x7f07001f

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1716
    check-cast v1, Landroid/widget/ImageView;

    .line 1719
    .local v1, "img2":Landroid/widget/ImageView;
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1720
    const v6, 0x7f070020

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1719
    check-cast v3, Landroid/widget/ImageView;

    .line 1723
    .local v3, "zen":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1722
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1726
    .local v2, "img2Layout":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xf0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1727
    iget v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_WIDTH:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x190

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1730
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v5, v8, :cond_2

    .line 1732
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v5, v5, 0x50

    div-int/lit16 v5, v5, 0xf0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1736
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1737
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1740
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1739
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1742
    .local v4, "zenLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1743
    iget v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1746
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-lt v5, v8, :cond_3

    .line 1748
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v5, v5, 0x32

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1749
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v5, v5, 0x32

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1753
    :cond_3
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_4

    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    if-ne v5, v8, :cond_4

    .line 1755
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v5, v5, 0x46

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1756
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v5, v5, 0x46

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1757
    iget v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xf0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1758
    iget v5, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_ZEN:I

    sget v6, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x190

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1763
    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1764
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1766
    new-instance v5, Lcom/gamevil/nexus2/Natives$13$1;

    invoke-direct {v5, p0}, Lcom/gamevil/nexus2/Natives$13$1;-><init>(Lcom/gamevil/nexus2/Natives$13;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1787
    const/4 v5, 0x3

    const/16 v6, -0x63

    invoke-static {v5, v6, v7, v7}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 1789
    return-void

    .line 1695
    .end local v0    # "img":Landroid/widget/ImageView;
    .end local v1    # "img2":Landroid/widget/ImageView;
    .end local v2    # "img2Layout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "zen":Landroid/widget/ImageView;
    .end local v4    # "zenLayout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    sget v5, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v6, 0x356

    if-ne v5, v6, :cond_0

    .line 1697
    iput v9, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_ZEN:I

    goto/16 :goto_0
.end method
