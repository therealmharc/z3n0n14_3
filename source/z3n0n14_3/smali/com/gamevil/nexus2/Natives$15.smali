.class Lcom/gamevil/nexus2/Natives$15;
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


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    const/16 v0, 0x64

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_TOPMARGIN_0:I

    .line 1828
    const/16 v0, 0x91

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_TOPMARGIN_1:I

    .line 1829
    const/16 v0, 0xa0

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_TOPMARGIN_2:I

    .line 1831
    const/16 v0, 0x19

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    .line 1832
    iput v1, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    .line 1833
    const/16 v0, 0x82

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_2:I

    .line 1834
    const/16 v0, 0xd2

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_3:I

    .line 1835
    const/16 v0, 0x118

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_4:I

    .line 1836
    const/16 v0, 0x13b

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_5:I

    .line 1839
    const/16 v0, 0xb

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_TOPMARGIN:I

    .line 1840
    const/16 v0, 0x154

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_LEFTMARGIN:I

    .line 1842
    const/16 v0, 0x28

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    .line 1843
    iput v1, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1848
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v14, 0x258

    if-lt v13, v14, :cond_0

    .line 1850
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    add-int/lit8 v13, v13, 0x5

    iput v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    .line 1851
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    add-int/lit8 v13, v13, 0x5

    iput v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    .line 1852
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_2:I

    add-int/lit8 v13, v13, 0x5

    iput v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_2:I

    .line 1853
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_3:I

    add-int/lit8 v13, v13, 0x5

    iput v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_3:I

    .line 1854
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_4:I

    add-int/lit8 v13, v13, 0x5

    iput v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_4:I

    .line 1855
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_5:I

    add-int/lit8 v13, v13, 0x5

    iput v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_5:I

    .line 1859
    :cond_0
    const-string v13, "###"

    const-string v14, "##### ShowMenuItemComponent() ####"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    sget-object v13, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1862
    const v14, 0x7f070024

    invoke-virtual {v13, v14}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1861
    check-cast v2, Landroid/widget/ImageButton;

    .line 1863
    .local v2, "img_menu_community":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1865
    sget-object v13, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1866
    const v14, 0x7f070028

    invoke-virtual {v13, v14}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1865
    check-cast v10, Landroid/widget/ImageButton;

    .line 1867
    .local v10, "img_menu_options":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1869
    sget-object v13, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1870
    const v14, 0x7f070027

    invoke-virtual {v13, v14}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1869
    check-cast v8, Landroid/widget/ImageButton;

    .line 1871
    .local v8, "img_menu_newgame":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1873
    sget-object v13, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1874
    const v14, 0x7f070025

    invoke-virtual {v13, v14}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1873
    check-cast v4, Landroid/widget/ImageButton;

    .line 1875
    .local v4, "img_menu_continue":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1877
    sget-object v13, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1878
    const v14, 0x7f070026

    invoke-virtual {v13, v14}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1877
    check-cast v6, Landroid/widget/ImageButton;

    .line 1879
    .local v6, "img_menu_help":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1881
    sget-object v13, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1882
    const v14, 0x7f070023

    invoke-virtual {v13, v14}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1881
    check-cast v0, Landroid/widget/ImageButton;

    .line 1883
    .local v0, "img_menu_about":Landroid/widget/ImageButton;
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1885
    sget-object v13, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 1886
    const v14, 0x7f070039

    invoke-virtual {v13, v14}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1885
    check-cast v13, Landroid/widget/TextView;

    sput-object v13, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 1887
    sget-object v13, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    sget-object v14, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    sget-object v13, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1891
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1890
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1893
    .local v3, "img_menu_community_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x64

    div-int/lit16 v13, v13, 0xf0

    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1894
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x190

    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1897
    invoke-virtual {v10}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1896
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1899
    .local v11, "img_menu_options_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v13, v13, 0x91

    div-int/lit16 v13, v13, 0xf0

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1900
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x190

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1903
    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1902
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1905
    .local v9, "img_menu_newgame_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v13, v13, 0xa0

    div-int/lit16 v13, v13, 0xf0

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1906
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_2:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x190

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1909
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1908
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1911
    .local v5, "img_menu_continue_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v13, v13, 0xa0

    div-int/lit16 v13, v13, 0xf0

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1912
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_3:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x190

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1915
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1914
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1917
    .local v7, "img_menu_help_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit16 v13, v13, 0x91

    div-int/lit16 v13, v13, 0xf0

    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1918
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_4:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x190

    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1921
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1920
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1923
    .local v1, "img_menu_about_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x64

    div-int/lit16 v13, v13, 0xf0

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1924
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_5:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x190

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1926
    sget-object v13, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 1927
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1926
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1928
    .local v12, "txt_Gpoint_Layout":Landroid/widget/FrameLayout$LayoutParams;
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_TOPMARGIN:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0xf0

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1929
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_LEFTMARGIN:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x190

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1933
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v14, 0x500

    if-lt v13, v14, :cond_1

    .line 1935
    const-string v13, "###"

    const-string v14, "##### if(NexusGLActivity.displayWidth == 1280) ####"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/16 v13, 0x12

    iput v13, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_TOPMARGIN:I

    .line 1939
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x28

    div-int/lit16 v13, v13, 0xf0

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1940
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v13, v13, 0x3c

    div-int/lit16 v13, v13, 0x190

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1942
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x28

    div-int/lit16 v13, v13, 0xf0

    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1943
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v13, v13, 0x3c

    div-int/lit16 v13, v13, 0x190

    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1945
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x28

    div-int/lit16 v13, v13, 0xf0

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1946
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v13, v13, 0x3c

    div-int/lit16 v13, v13, 0x190

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1948
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x28

    div-int/lit16 v13, v13, 0xf0

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1949
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v13, v13, 0x3c

    div-int/lit16 v13, v13, 0x190

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1951
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x28

    div-int/lit16 v13, v13, 0xf0

    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1952
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v13, v13, 0x3c

    div-int/lit16 v13, v13, 0x190

    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1954
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v13, v13, 0x28

    div-int/lit16 v13, v13, 0xf0

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1955
    sget v13, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int/lit8 v13, v13, 0x3c

    div-int/lit16 v13, v13, 0x190

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1957
    iget v13, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_TOPMARGIN:I

    sget v14, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0xf0

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1958
    sget-object v13, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1968
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1969
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1970
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1971
    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1972
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1973
    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1974
    sget-object v13, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1976
    new-instance v13, Lcom/gamevil/nexus2/Natives$15$1;

    invoke-direct {v13, p0}, Lcom/gamevil/nexus2/Natives$15$1;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    invoke-virtual {v2, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1988
    new-instance v13, Lcom/gamevil/nexus2/Natives$15$2;

    invoke-direct {v13, p0}, Lcom/gamevil/nexus2/Natives$15$2;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    invoke-virtual {v10, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1999
    new-instance v13, Lcom/gamevil/nexus2/Natives$15$3;

    invoke-direct {v13, p0}, Lcom/gamevil/nexus2/Natives$15$3;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2010
    new-instance v13, Lcom/gamevil/nexus2/Natives$15$4;

    invoke-direct {v13, p0}, Lcom/gamevil/nexus2/Natives$15$4;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    invoke-virtual {v4, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2024
    new-instance v13, Lcom/gamevil/nexus2/Natives$15$5;

    invoke-direct {v13, p0}, Lcom/gamevil/nexus2/Natives$15$5;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    invoke-virtual {v6, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2035
    new-instance v13, Lcom/gamevil/nexus2/Natives$15$6;

    invoke-direct {v13, p0}, Lcom/gamevil/nexus2/Natives$15$6;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2045
    return-void
.end method
