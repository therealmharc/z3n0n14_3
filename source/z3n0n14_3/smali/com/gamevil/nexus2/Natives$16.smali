.class Lcom/gamevil/nexus2/Natives$16;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 2056
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2057
    const v7, 0x7f070024

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2056
    check-cast v1, Landroid/widget/ImageView;

    .line 2058
    .local v1, "img_menu_community":Landroid/widget/ImageView;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2060
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2061
    const v7, 0x7f070028

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2060
    check-cast v5, Landroid/widget/ImageView;

    .line 2062
    .local v5, "img_menu_options":Landroid/widget/ImageView;
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2064
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2065
    const v7, 0x7f070027

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2064
    check-cast v4, Landroid/widget/ImageView;

    .line 2066
    .local v4, "img_menu_newgame":Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2068
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2069
    const v7, 0x7f070025

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2068
    check-cast v2, Landroid/widget/ImageView;

    .line 2070
    .local v2, "img_menu_continue":Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2072
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2073
    const v7, 0x7f070026

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2072
    check-cast v3, Landroid/widget/ImageView;

    .line 2074
    .local v3, "img_menu_help":Landroid/widget/ImageView;
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2076
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2077
    const v7, 0x7f070023

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2076
    check-cast v0, Landroid/widget/ImageView;

    .line 2078
    .local v0, "img_menu_about":Landroid/widget/ImageView;
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2080
    sget-object v6, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 2081
    const v7, 0x7f070039

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2080
    check-cast v6, Landroid/widget/TextView;

    sput-object v6, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    .line 2082
    sget-object v6, Lcom/gamevil/nexus2/Natives;->txt_Gpoint:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2084
    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2085
    invoke-virtual {v5}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2086
    invoke-virtual {v4}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2087
    invoke-virtual {v2}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2088
    invoke-virtual {v3}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2089
    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 2091
    const/4 v1, 0x0

    .line 2092
    const/4 v5, 0x0

    .line 2093
    const/4 v4, 0x0

    .line 2094
    const/4 v2, 0x0

    .line 2095
    const/4 v3, 0x0

    .line 2096
    const/4 v0, 0x0

    .line 2098
    return-void
.end method
