.class Lcom/gamevil/zenonia3/global/Zenonia3Launcher$9;
.super Ljava/lang/Object;
.source "Zenonia3Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->createDialog(II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

.field private final synthetic val$helpUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$9;->this$0:Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

    iput-object p2, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$9;->val$helpUri:Landroid/net/Uri;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 823
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$9;->val$helpUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 824
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$9;->this$0:Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

    invoke-virtual {v1, v0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->startActivity(Landroid/content/Intent;)V

    .line 825
    return-void
.end method
