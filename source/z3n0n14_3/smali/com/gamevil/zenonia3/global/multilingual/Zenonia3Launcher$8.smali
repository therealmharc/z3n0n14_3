.class Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$8;
.super Ljava/lang/Object;
.source "Zenonia3Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$8;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 490
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLActivity;->finishApp()V

    .line 491
    return-void
.end method
