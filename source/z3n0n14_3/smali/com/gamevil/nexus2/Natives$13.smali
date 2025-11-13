.class Lcom/gamevil/nexus2/Natives$13;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->showMenuItemComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field GP_OFFSET_LEFTMARGIN:I

.field GP_OFFSET_TOPMARGIN:I

.field OFFSET_LEFTMARGIN_0:I

.field OFFSET_LEFTMARGIN_1:I

.field OFFSET_LEFTMARGIN_2:I

.field OFFSET_LEFTMARGIN_3:I

.field OFFSET_LEFTMARGIN_4:I

.field OFFSET_LEFTMARGIN_5:I

.field final OFFSET_SIZE_HEIGHT:I

.field final OFFSET_SIZE_WIDTH:I

.field final OFFSET_TOPMARGIN_0:I

.field final OFFSET_TOPMARGIN_1:I

.field final OFFSET_TOPMARGIN_2:I

.field img_menu_about:Landroid/widget/ImageView;

.field img_menu_community:Landroid/widget/ImageView;

.field img_menu_continue:Landroid/widget/ImageView;

.field img_menu_help:Landroid/widget/ImageView;

.field img_menu_newgame:Landroid/widget/ImageView;

.field img_menu_options:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1700
    const/16 v0, 0x64

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN_0:I

    .line 1701
    const/16 v0, 0x91

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN_1:I

    .line 1702
    const/16 v0, 0xa0

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_TOPMARGIN_2:I

    .line 1704
    const/16 v0, 0x19

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_0:I

    .line 1705
    iput v1, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_1:I

    .line 1706
    const/16 v0, 0x82

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_2:I

    .line 1707
    const/16 v0, 0xd2

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_3:I

    .line 1708
    const/16 v0, 0x118

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_4:I

    .line 1709
    const/16 v0, 0x13b

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_5:I

    .line 1712
    const/16 v0, 0xb

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->GP_OFFSET_TOPMARGIN:I

    .line 1713
    const/16 v0, 0x154

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->GP_OFFSET_LEFTMARGIN:I

    .line 1715
    const/16 v0, 0x28

    iput v0, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_SIZE_HEIGHT:I

    .line 1716
    iput v1, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_SIZE_WIDTH:I

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1726
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v8, 0x258

    if-lt v7, v8, :cond_0

    .line 1728
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_0:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_0:I

    .line 1729
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_1:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_1:I

    .line 1730
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_2:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_2:I

    .line 1731
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_3:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_3:I

    .line 1732
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_4:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_4:I

    .line 1733
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_5:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_5:I

    .line 1736
    :cond_0
    const-string v7, "###"

    const-string v8, "##### ShowMenuItemComponent() ####"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->setMenuItemResId()V

    .line 1738
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1739
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$4()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1738
    iput-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_community:Landroid/widget/ImageView;

    .line 1740
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_community:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1742
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1743
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$5()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1742
    iput-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_options:Landroid/widget/ImageView;

    .line 1744
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_options:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1746
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1747
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$6()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1746
    iput-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_newgame:Landroid/widget/ImageView;

    .line 1748
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_newgame:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1750
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1751
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$7()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1750
    iput-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_continue:Landroid/widget/ImageView;

    .line 1752
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_continue:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1754
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1755
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$8()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1754
    iput-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_help:Landroid/widget/ImageView;

    .line 1756
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_help:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1758
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1759
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$9()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1758
    iput-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_about:Landroid/widget/ImageView;

    .line 1760
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_about:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1763
    sget-object v7, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1764
    const v8, 0x7f080050

    invoke-virtual {v7, v8}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1763
    check-cast v7, Landroid/widget/TextView;

    sput-object v7, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 1765
    sget-object v7, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    sget-object v8, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1766
    sget-object v7, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1768
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_community:Landroid/widget/ImageView;

    .line 1769
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1768
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1771
    .local v1, "img_menu_community_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x64

    div-int/lit16 v7, v7, 0xf0

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1772
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_0:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x190

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1774
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_options:Landroid/widget/ImageView;

    .line 1775
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1774
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1777
    .local v5, "img_menu_options_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v7, v7, 0x91

    div-int/lit16 v7, v7, 0xf0

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1778
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_1:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x190

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1780
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_newgame:Landroid/widget/ImageView;

    .line 1781
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1780
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1783
    .local v4, "img_menu_newgame_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v7, v7, 0xa0

    div-int/lit16 v7, v7, 0xf0

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1784
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_2:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x190

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1786
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_continue:Landroid/widget/ImageView;

    .line 1787
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1786
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1789
    .local v2, "img_menu_continue_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v7, v7, 0xa0

    div-int/lit16 v7, v7, 0xf0

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1790
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_3:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x190

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1792
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_help:Landroid/widget/ImageView;

    .line 1793
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1792
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1795
    .local v3, "img_menu_help_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v7, v7, 0x91

    div-int/lit16 v7, v7, 0xf0

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1796
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_4:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x190

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1798
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_about:Landroid/widget/ImageView;

    .line 1799
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1798
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1801
    .local v0, "img_menu_about_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x64

    div-int/lit16 v7, v7, 0xf0

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1802
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->OFFSET_LEFTMARGIN_5:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x190

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1804
    sget-object v7, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 1805
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1804
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1806
    .local v6, "txt_Gpoint_Layout":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->GP_OFFSET_TOPMARGIN:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0xf0

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1807
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->GP_OFFSET_LEFTMARGIN:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x190

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1809
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v8, 0x400

    if-lt v7, v8, :cond_1

    .line 1811
    const-string v7, "###"

    const-string v8, "##### if(NexusGLActivity.displayWidth == 1280) ####"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/16 v7, 0x12

    iput v7, p0, Lcom/gamevil/nexus2/Natives$13;->GP_OFFSET_TOPMARGIN:I

    .line 1815
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x28

    div-int/lit16 v7, v7, 0xf0

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1816
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v7, v7, 0x3c

    div-int/lit16 v7, v7, 0x190

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1818
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x28

    div-int/lit16 v7, v7, 0xf0

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1819
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v7, v7, 0x3c

    div-int/lit16 v7, v7, 0x190

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1821
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x28

    div-int/lit16 v7, v7, 0xf0

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1822
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v7, v7, 0x3c

    div-int/lit16 v7, v7, 0x190

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1824
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x28

    div-int/lit16 v7, v7, 0xf0

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1825
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v7, v7, 0x3c

    div-int/lit16 v7, v7, 0x190

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1827
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x28

    div-int/lit16 v7, v7, 0xf0

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1828
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v7, v7, 0x3c

    div-int/lit16 v7, v7, 0x190

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1830
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v7, v7, 0x28

    div-int/lit16 v7, v7, 0xf0

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1831
    sget v7, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v7, v7, 0x3c

    div-int/lit16 v7, v7, 0x190

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1833
    iget v7, p0, Lcom/gamevil/nexus2/Natives$13;->GP_OFFSET_TOPMARGIN:I

    sget v8, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0xf0

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1834
    sget-object v7, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1837
    :cond_1
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_about:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1838
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_help:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1839
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_continue:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1840
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_newgame:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1841
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_community:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1842
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_options:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1843
    sget-object v7, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1845
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_community:Landroid/widget/ImageView;

    new-instance v8, Lcom/gamevil/nexus2/Natives$13$1;

    invoke-direct {v8, p0}, Lcom/gamevil/nexus2/Natives$13$1;-><init>(Lcom/gamevil/nexus2/Natives$13;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1857
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_options:Landroid/widget/ImageView;

    new-instance v8, Lcom/gamevil/nexus2/Natives$13$2;

    invoke-direct {v8, p0}, Lcom/gamevil/nexus2/Natives$13$2;-><init>(Lcom/gamevil/nexus2/Natives$13;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1868
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_newgame:Landroid/widget/ImageView;

    new-instance v8, Lcom/gamevil/nexus2/Natives$13$3;

    invoke-direct {v8, p0}, Lcom/gamevil/nexus2/Natives$13$3;-><init>(Lcom/gamevil/nexus2/Natives$13;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1879
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_continue:Landroid/widget/ImageView;

    new-instance v8, Lcom/gamevil/nexus2/Natives$13$4;

    invoke-direct {v8, p0}, Lcom/gamevil/nexus2/Natives$13$4;-><init>(Lcom/gamevil/nexus2/Natives$13;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1893
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_help:Landroid/widget/ImageView;

    new-instance v8, Lcom/gamevil/nexus2/Natives$13$5;

    invoke-direct {v8, p0}, Lcom/gamevil/nexus2/Natives$13$5;-><init>(Lcom/gamevil/nexus2/Natives$13;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1904
    iget-object v7, p0, Lcom/gamevil/nexus2/Natives$13;->img_menu_about:Landroid/widget/ImageView;

    new-instance v8, Lcom/gamevil/nexus2/Natives$13$6;

    invoke-direct {v8, p0}, Lcom/gamevil/nexus2/Natives$13$6;-><init>(Lcom/gamevil/nexus2/Natives$13;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    return-void
.end method
