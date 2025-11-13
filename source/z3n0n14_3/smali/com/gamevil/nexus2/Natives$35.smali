.class Lcom/gamevil/nexus2/Natives$35;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->hideReplyMoveComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 3826
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->setReplyresId()V

    .line 3827
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3828
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$20()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3827
    check-cast v0, Landroid/widget/ImageView;

    .line 3829
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3830
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$21()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3829
    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 3831
    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    .line 3832
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$22()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3831
    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 3834
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3835
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3836
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3838
    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 3839
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 3840
    sget-object v1, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->destroyDrawingCache()V

    .line 3842
    sput-object v4, Lcom/gamevil/nexus2/Natives;->img_btn_write:Landroid/widget/ImageButton;

    .line 3843
    sput-object v4, Lcom/gamevil/nexus2/Natives;->img_btn_later:Landroid/widget/ImageButton;

    .line 3844
    const/4 v0, 0x0

    .line 3846
    return-void
.end method
