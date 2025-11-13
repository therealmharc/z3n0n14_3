.class Lcom/gamevil/nexus2/Natives$23;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->requestIAP(ILjava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2840
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gamevil/nexus2/Natives;->setPurchaseChange(I)V

    .line 2841
    sget-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->requestPurchaceIAP()V

    .line 2844
    return-void
.end method
