.class Lcom/gamevil/nexus2/Natives$33$1;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamevil/nexus2/Natives$33;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/Natives$33;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$33$1;->this$1:Lcom/gamevil/nexus2/Natives$33;

    .line 3657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3660
    const v0, 0x128cbbf

    .line 3661
    const v1, 0x131579f

    .line 3660
    invoke-static {v0, v1, v2, v2}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 3663
    return-void
.end method
