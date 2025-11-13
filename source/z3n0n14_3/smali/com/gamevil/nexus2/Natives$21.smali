.class Lcom/gamevil/nexus2/Natives$21;
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


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2213
    const/16 v0, 0x46

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_TOPMARGIN_0:I

    .line 2214
    const/16 v0, 0x6e

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_TOPMARGIN_1:I

    .line 2215
    const/16 v0, 0x96

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_TOPMARGIN_2:I

    .line 2216
    const/16 v0, 0x32

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_0:I

    .line 2217
    const/16 v0, 0xd2

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_1:I

    .line 2229
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->GP_OFFSET_TOPMARGIN:I

    .line 2230
    const/16 v0, 0x12c

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->GP_OFFSET_LEFTMARGIN:I

    .line 2233
    const/16 v0, 0x25

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_HEIGHT:I

    .line 2234
    const/16 v0, 0x8c

    iput v0, p0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_WIDTH:I

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 2239
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v18, 0x258

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 2241
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/Natives$21;->GP_OFFSET_TOPMARGIN:I

    .line 2249
    :cond_0
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2250
    const v18, 0x7f070029

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2249
    check-cast v3, Landroid/widget/ImageView;

    .line 2251
    .local v3, "img_BG":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2254
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2255
    const v18, 0x7f07002a

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2254
    check-cast v4, Landroid/widget/ImageView;

    .line 2256
    .local v4, "img_btn_0":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2258
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2259
    const v18, 0x7f07002b

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2258
    check-cast v6, Landroid/widget/ImageView;

    .line 2260
    .local v6, "img_btn_1":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2262
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2263
    const v18, 0x7f07002c

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2262
    check-cast v8, Landroid/widget/ImageView;

    .line 2264
    .local v8, "img_btn_2":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2266
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2267
    const v18, 0x7f07002d

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 2266
    check-cast v10, Landroid/widget/ImageView;

    .line 2268
    .local v10, "img_btn_3":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2270
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2271
    const v18, 0x7f07002e

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 2270
    check-cast v12, Landroid/widget/ImageView;

    .line 2272
    .local v12, "img_btn_4":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2274
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2275
    const v18, 0x7f07002f

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 2274
    check-cast v14, Landroid/widget/ImageView;

    .line 2276
    .local v14, "img_btn_5":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2316
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2317
    const v18, 0x7f070036

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2316
    check-cast v2, Landroid/widget/ImageView;

    .line 2318
    .local v2, "back":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2320
    sget-object v17, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2321
    const v18, 0x7f070039

    invoke-virtual/range {v17 .. v18}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 2320
    check-cast v17, Landroid/widget/TextView;

    sput-object v17, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 2322
    sget-object v17, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    sget-object v18, Lcom/gamevil/nexus2/Natives;->gPoint:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2323
    sget-object v17, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2327
    const-string v17, "####"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "### NexusGLActivity.displayWidth : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v19, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "###"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const-string v17, "####"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "### NexusGLActivity.displayHeight : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v19, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "###"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 2343
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2346
    .local v5, "img_btn_0_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v17, v17, 0x46

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_0:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2350
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2349
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 2352
    .local v7, "img_btn_1_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v17, v17, 0x6e

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_0:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2356
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 2355
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 2358
    .local v9, "img_btn_2_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x96

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_0:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2362
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 2361
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 2364
    .local v11, "img_btn_3_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v17, v17, 0x46

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_1:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2368
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 2367
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 2370
    .local v13, "img_btn_4_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/lit8 v17, v17, 0x6e

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_1:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2377
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 2376
    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 2379
    .local v15, "img_btn_5_Layout":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x96

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_LEFTMARGIN_1:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2385
    sget-object v17, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 2386
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 2385
    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 2387
    .local v16, "txt_Gpoint_Layout":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->GP_OFFSET_TOPMARGIN:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2388
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x12c

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2392
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    const/16 v18, 0x320

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v18, 0x500

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2394
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2404
    :cond_1
    sget v17, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    const/16 v18, 0x500

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 2406
    const-string v17, "###"

    const-string v18, "##### if(NexusGLActivity.displayWidth >= 1280) ####"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_HEIGHT:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_WIDTH:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_HEIGHT:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_WIDTH:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_HEIGHT:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_WIDTH:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_HEIGHT:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_WIDTH:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_HEIGHT:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_WIDTH:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_HEIGHT:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/Natives$21;->OFFSET_SIZE_WIDTH:I

    move/from16 v17, v0

    sget v18, Lcom/gamevil/nexus2/NexusGLActivity;->displayWidth:I

    mul-int v17, v17, v18

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2435
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2436
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2437
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2438
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2439
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2441
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2444
    sget-object v17, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2450
    new-instance v17, Lcom/gamevil/nexus2/Natives$21$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$21$1;-><init>(Lcom/gamevil/nexus2/Natives$21;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2478
    new-instance v17, Lcom/gamevil/nexus2/Natives$21$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$21$2;-><init>(Lcom/gamevil/nexus2/Natives$21;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2508
    new-instance v17, Lcom/gamevil/nexus2/Natives$21$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$21$3;-><init>(Lcom/gamevil/nexus2/Natives$21;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2537
    new-instance v17, Lcom/gamevil/nexus2/Natives$21$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$21$4;-><init>(Lcom/gamevil/nexus2/Natives$21;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2566
    new-instance v17, Lcom/gamevil/nexus2/Natives$21$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$21$5;-><init>(Lcom/gamevil/nexus2/Natives$21;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2600
    new-instance v17, Lcom/gamevil/nexus2/Natives$21$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$21$6;-><init>(Lcom/gamevil/nexus2/Natives$21;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2632
    new-instance v17, Lcom/gamevil/nexus2/Natives$21$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/Natives$21$7;-><init>(Lcom/gamevil/nexus2/Natives$21;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2653
    return-void
.end method
