.class Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;
.super Landroid/os/AsyncTask;
.source "NexusGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/nexus2/NexusGLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "C2dmRegisterTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/nexus2/NexusGLActivity;


# direct methods
.method private constructor <init>(Lcom/gamevil/nexus2/NexusGLActivity;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamevil/nexus2/NexusGLActivity;Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;)V
    .locals 0

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;-><init>(Lcom/gamevil/nexus2/NexusGLActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/gamevil/nexus2/NexusGLActivity$C2dmRegisterTask;->this$0:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-static {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->access$3(Lcom/gamevil/nexus2/NexusGLActivity;)V

    .line 1040
    const/4 v0, 0x0

    return-object v0
.end method
