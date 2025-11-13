.class Lcom/gamevil/nexus2/Natives$28$1;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamevil/nexus2/Natives$28;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/Natives$28;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$28$1;->this$1:Lcom/gamevil/nexus2/Natives$28;

    .line 3403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 3409
    const v0, 0x131f50f

    invoke-static {v0, v1, v1, v1}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V

    .line 3411
    return-void
.end method
