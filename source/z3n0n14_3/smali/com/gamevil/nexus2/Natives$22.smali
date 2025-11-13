.class Lcom/gamevil/nexus2/Natives$22;
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
    .line 2659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 2666
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2667
    const v9, 0x7f070029

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2666
    check-cast v1, Landroid/widget/ImageView;

    .line 2668
    .local v1, "img_BG":Landroid/widget/ImageView;
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2670
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2671
    const v9, 0x7f07002a

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2670
    check-cast v2, Landroid/widget/ImageView;

    .line 2672
    .local v2, "img_btn_0":Landroid/widget/ImageView;
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2674
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2675
    const v9, 0x7f07002b

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2674
    check-cast v3, Landroid/widget/ImageView;

    .line 2676
    .local v3, "img_btn_1":Landroid/widget/ImageView;
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2678
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2679
    const v9, 0x7f07002c

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2678
    check-cast v4, Landroid/widget/ImageView;

    .line 2680
    .local v4, "img_btn_2":Landroid/widget/ImageView;
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2682
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2683
    const v9, 0x7f07002d

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2682
    check-cast v5, Landroid/widget/ImageView;

    .line 2684
    .local v5, "img_btn_3":Landroid/widget/ImageView;
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2686
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2687
    const v9, 0x7f07002e

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2686
    check-cast v6, Landroid/widget/ImageView;

    .line 2688
    .local v6, "img_btn_4":Landroid/widget/ImageView;
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2690
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2691
    const v9, 0x7f07002f

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2690
    check-cast v7, Landroid/widget/ImageView;

    .line 2692
    .local v7, "img_btn_5":Landroid/widget/ImageView;
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2728
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2729
    const v9, 0x7f070036

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2728
    check-cast v0, Landroid/widget/ImageView;

    .line 2730
    .local v0, "back":Landroid/widget/ImageView;
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2732
    sget-object v8, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2733
    const v9, 0x7f070039

    invoke-virtual {v8, v9}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2732
    check-cast v8, Landroid/widget/TextView;

    sput-object v8, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 2734
    sget-object v8, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2736
    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2737
    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2739
    invoke-virtual {v2}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2740
    invoke-virtual {v3}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2741
    invoke-virtual {v4}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2742
    invoke-virtual {v5}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2743
    invoke-virtual {v6}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2744
    invoke-virtual {v7}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2746
    const/4 v0, 0x0

    .line 2747
    const/4 v1, 0x0

    .line 2748
    const/4 v2, 0x0

    .line 2749
    const/4 v3, 0x0

    .line 2750
    const/4 v4, 0x0

    .line 2751
    const/4 v5, 0x0

    .line 2752
    const/4 v6, 0x0

    .line 2753
    const/4 v7, 0x0

    .line 2761
    return-void
.end method
