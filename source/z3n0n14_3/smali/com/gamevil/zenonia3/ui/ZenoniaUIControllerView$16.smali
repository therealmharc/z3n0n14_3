.class Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$16;
.super Ljava/lang/Object;
.source "ZenoniaUIControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->showRateComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$16;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView$16;->this$0:Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;->hideRateComponent()V

    .line 1085
    return-void
.end method
