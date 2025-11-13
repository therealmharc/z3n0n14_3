.class Lcom/gamevil/nexus2/xml/ProfileSender$3;
.super Ljava/lang/Object;
.source "ProfileSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/xml/ProfileSender;->showCertifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/nexus2/xml/ProfileSender;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/ProfileSender$3;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender$3;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    invoke-static {v1}, Lcom/gamevil/nexus2/xml/ProfileSender;->access$2(Lcom/gamevil/nexus2/xml/ProfileSender;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1294
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1296
    return-void
.end method
