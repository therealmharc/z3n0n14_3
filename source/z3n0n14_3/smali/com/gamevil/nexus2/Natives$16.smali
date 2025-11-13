.class Lcom/gamevil/nexus2/Natives$16;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->hidePurchaseComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    .line 2530
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->setNamePurchaseComponent()V

    .line 2532
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2533
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$10()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2532
    check-cast v1, Landroid/widget/ImageView;

    .line 2534
    .local v1, "img_BG":Landroid/widget/ImageView;
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2536
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2537
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$11()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2536
    check-cast v2, Landroid/widget/ImageView;

    .line 2538
    .local v2, "img_btn_0":Landroid/widget/ImageView;
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2540
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2541
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$12()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2540
    check-cast v3, Landroid/widget/ImageView;

    .line 2542
    .local v3, "img_btn_1":Landroid/widget/ImageView;
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2544
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2545
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$13()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2544
    check-cast v4, Landroid/widget/ImageView;

    .line 2546
    .local v4, "img_btn_2":Landroid/widget/ImageView;
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2548
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2549
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$14()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2548
    check-cast v5, Landroid/widget/ImageView;

    .line 2550
    .local v5, "img_btn_3":Landroid/widget/ImageView;
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2552
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2553
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$15()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2552
    check-cast v6, Landroid/widget/ImageView;

    .line 2554
    .local v6, "img_btn_4":Landroid/widget/ImageView;
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2556
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2557
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$16()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2556
    check-cast v7, Landroid/widget/ImageView;

    .line 2559
    .local v7, "img_btn_5":Landroid/widget/ImageView;
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2561
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2562
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$17()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2561
    check-cast v8, Landroid/widget/ImageView;

    .line 2563
    .local v8, "img_btn_6":Landroid/widget/ImageView;
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2564
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2565
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$18()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2564
    check-cast v9, Landroid/widget/ImageView;

    .line 2566
    .local v9, "img_btn_7":Landroid/widget/ImageView;
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2601
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2602
    const v11, 0x7f080049

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2601
    check-cast v0, Landroid/widget/ImageView;

    .line 2603
    .local v0, "back":Landroid/widget/ImageView;
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2605
    sget-object v10, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2606
    const v11, 0x7f080050

    invoke-virtual {v10, v11}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 2605
    check-cast v10, Landroid/widget/TextView;

    sput-object v10, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 2607
    sget-object v10, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2609
    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2610
    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2612
    invoke-virtual {v2}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2613
    invoke-virtual {v3}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2614
    invoke-virtual {v4}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2615
    invoke-virtual {v5}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2616
    invoke-virtual {v6}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2617
    invoke-virtual {v7}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2619
    const/4 v0, 0x0

    .line 2620
    const/4 v1, 0x0

    .line 2621
    const/4 v2, 0x0

    .line 2622
    const/4 v3, 0x0

    .line 2623
    const/4 v4, 0x0

    .line 2624
    const/4 v5, 0x0

    .line 2625
    const/4 v6, 0x0

    .line 2626
    const/4 v7, 0x0

    .line 2627
    const/4 v8, 0x0

    .line 2628
    const/4 v9, 0x0

    .line 2629
    return-void
.end method
