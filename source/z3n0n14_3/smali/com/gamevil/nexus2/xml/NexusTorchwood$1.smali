.class Lcom/gamevil/nexus2/xml/NexusTorchwood$1;
.super Ljava/lang/Object;
.source "NexusTorchwood.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/xml/NexusTorchwood;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/nexus2/xml/NexusTorchwood;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/xml/NexusTorchwood;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood$1;->this$0:Lcom/gamevil/nexus2/xml/NexusTorchwood;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusTorchwood$1;->this$0:Lcom/gamevil/nexus2/xml/NexusTorchwood;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusTorchwood;->access$2(Lcom/gamevil/nexus2/xml/NexusTorchwood;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 340
    return-void
.end method
