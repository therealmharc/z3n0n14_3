.class Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;
.super Ljava/lang/Object;
.source "NexusXmlChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/xml/NexusXmlChecker;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/nexus2/xml/NexusXmlChecker;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;->this$0:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;->this$0:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->access$2(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLOBAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;->this$0:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->access$3(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;->this$0:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->access$3(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamevil/nexus2/Natives;->openUrl(Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/NexusXmlChecker$1;->this$0:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    invoke-static {v0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->access$4(Lcom/gamevil/nexus2/xml/NexusXmlChecker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamevil/nexus2/Natives;->openStoreWithProductId(Ljava/lang/String;)V

    goto :goto_0
.end method
