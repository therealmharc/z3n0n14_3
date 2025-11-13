.class Lcom/gamevil/nexus2/Natives$13$2;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamevil/nexus2/Natives$13;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/Natives$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$13$2;->this$1:Lcom/gamevil/nexus2/Natives$13;

    .line 1857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1860
    const/4 v0, 0x2

    invoke-static {v0, v2, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 1862
    const/4 v0, 0x3

    invoke-static {v0, v2, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 1865
    return-void
.end method
