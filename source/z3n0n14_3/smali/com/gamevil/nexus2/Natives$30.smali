.class Lcom/gamevil/nexus2/Natives$30;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->ShowTapjoyAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3475
    sget-object v2, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v3, 0x7f080058

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3478
    .local v0, "_adLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3477
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3480
    .local v1, "tapjoyLayout":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/gamevil/nexus2/Natives;->OFFSET_TAPJOY_BANNER_TOPMARGIN:I

    sget v3, Lcom/gamevil/nexus2/NexusGLActivity;->displayHeight:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xf0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3482
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3485
    if-eqz v0, :cond_0

    .line 3487
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3489
    :cond_0
    return-void
.end method
