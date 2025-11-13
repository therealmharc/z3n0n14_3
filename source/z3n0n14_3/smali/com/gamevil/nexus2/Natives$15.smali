.class Lcom/gamevil/nexus2/Natives$15;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->showPurchaseComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final GP_OFFSET_LEFTMARGIN:I

.field GP_OFFSET_TOPMARGIN:I

.field OFFSET_LEFTMARGIN_0:I

.field OFFSET_LEFTMARGIN_1:I

.field OFFSET_SIZE_HEIGHT:I

.field OFFSET_SIZE_WIDTH:I

.field final OFFSET_TOPMARGIN_0:I

.field final OFFSET_TOPMARGIN_1:I

.field final OFFSET_TOPMARGIN_2:I

.field final OFFSET_TOPMARGIN_3:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1998
    const/16 v0, 0x23

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_TOPMARGIN_0:I

    .line 1999
    const/16 v0, 0x4b

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_TOPMARGIN_1:I

    .line 2000
    const/16 v0, 0x73

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_TOPMARGIN_2:I

    .line 2001
    const/16 v0, 0x9b

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_TOPMARGIN_3:I

    .line 2002
    const/16 v0, 0x32

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    .line 2003
    const/16 v0, 0xd2

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    .line 2015
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_TOPMARGIN:I

    .line 2016
    const/16 v0, 0x12c

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_LEFTMARGIN:I

    .line 2019
    const/16 v0, 0x25

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    .line 2020
    const/16 v0, 0x8c

    iput v0, p0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 2025
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v22, 0x258

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    .line 2027
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_TOPMARGIN:I

    .line 2029
    :cond_0
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->setNamePurchaseComponent()V

    .line 2035
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2036
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$10()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2035
    check-cast v3, Landroid/widget/ImageView;

    .line 2037
    .local v3, "img_BG":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2039
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2040
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$11()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2039
    check-cast v4, Landroid/widget/ImageView;

    .line 2041
    .local v4, "img_btn_0":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2043
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2044
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$12()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2043
    check-cast v6, Landroid/widget/ImageView;

    .line 2045
    .local v6, "img_btn_1":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2047
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2048
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$13()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2047
    check-cast v8, Landroid/widget/ImageView;

    .line 2049
    .local v8, "img_btn_2":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2051
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2052
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$14()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 2051
    check-cast v10, Landroid/widget/ImageView;

    .line 2053
    .local v10, "img_btn_3":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2055
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2056
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$15()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 2055
    check-cast v12, Landroid/widget/ImageView;

    .line 2057
    .local v12, "img_btn_4":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2059
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2060
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$16()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 2059
    check-cast v14, Landroid/widget/ImageView;

    .line 2062
    .local v14, "img_btn_5":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2101
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2102
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$17()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 2101
    check-cast v16, Landroid/widget/ImageView;

    .line 2103
    .local v16, "img_btn_6":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2104
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2105
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$18()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 2104
    check-cast v18, Landroid/widget/ImageView;

    .line 2106
    .local v18, "img_btn_7":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2108
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2109
    const v22, 0x7f080049

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2108
    check-cast v2, Landroid/widget/ImageView;

    .line 2110
    .local v2, "back":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2112
    sget-object v21, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2113
    const v22, 0x7f080050

    invoke-virtual/range {v21 .. v22}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 2112
    check-cast v21, Landroid/widget/TextView;

    sput-object v21, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 2114
    sget-object v21, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    sget-object v22, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2115
    sget-object v21, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2119
    const-string v21, "####"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "### NexusGLActivity.displayWidth : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v23, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "###"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    const-string v21, "####"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "### NexusGLActivity.displayHeight : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v23, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "###"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 2135
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2138
    .local v5, "img_btn_0_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v21, v21, 0x23

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2142
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2141
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 2144
    .local v7, "img_btn_1_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v21, v21, 0x4b

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2148
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 2147
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 2150
    .local v9, "img_btn_2_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v21, v21, 0x73

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2154
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 2153
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 2156
    .local v11, "img_btn_3_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v21, v21, 0x23

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2160
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 2159
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 2162
    .local v13, "img_btn_4_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v21, v21, 0x4b

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2169
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 2168
    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 2171
    .local v15, "img_btn_5_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v21, v21, 0x73

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2176
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 2175
    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 2177
    .local v17, "img_btn_6_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x9b

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_1:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2182
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 2181
    check-cast v19, Landroid/widget/FrameLayout$LayoutParams;

    .line 2183
    .local v19, "img_btn_7_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x9b

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_LEFTMARGIN_0:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2187
    sget-object v21, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 2188
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2187
    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    .line 2189
    .local v20, "txt_Gpoint_Layout":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->GP_OFFSET_TOPMARGIN:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2190
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x12c

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2194
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v22, 0x320

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v22, 0x500

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 2196
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x4

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2203
    :cond_1
    sget v21, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v22, 0x400

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 2205
    const-string v21, "###"

    const-string v22, "##### if(NexusGLActivity.displayWidth >= 1280) ####"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_HEIGHT:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xf0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$15;->OFFSET_SIZE_WIDTH:I

    move/from16 v21, v0

    sget v22, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v21, v21, v22

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x190

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2234
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2238
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2239
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2240
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2241
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2242
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2244
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2247
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2248
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2250
    sget-object v21, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2256
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$1;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2285
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$2;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2315
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$3;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2344
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$4;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2373
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$5;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2403
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$6;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2433
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$7;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2467
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$8;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2499
    new-instance v21, Lcom/gamevil/nexus2/Natives$15$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$15$9;-><init>(Lcom/gamevil/nexus2/Natives$15;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2520
    return-void
.end method
