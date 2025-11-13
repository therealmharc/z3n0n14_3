.class Lcom/gamevil/zenonia3/global/Zenonia3Launcher$1;
.super Ljava/lang/Object;
.source "Zenonia3Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/Zenonia3Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/Zenonia3Launcher;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$1;->this$0:Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$1;->this$0:Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

    invoke-static {v0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->access$0(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    .line 913
    return-void
.end method
