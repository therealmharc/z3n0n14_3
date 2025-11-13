.class Lcom/gamevil/nexus2/NexusGLActivity$1$1;
.super Ljava/lang/Object;
.source "NexusGLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/NexusGLActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamevil/nexus2/NexusGLActivity$1;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/NexusGLActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity$1$1;->this$1:Lcom/gamevil/nexus2/NexusGLActivity$1;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity$1$1;->this$1:Lcom/gamevil/nexus2/NexusGLActivity$1;

    invoke-static {v0}, Lcom/gamevil/nexus2/NexusGLActivity$1;->access$0(Lcom/gamevil/nexus2/NexusGLActivity$1;)Lcom/gamevil/nexus2/NexusGLActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->finish()V

    .line 808
    return-void
.end method
