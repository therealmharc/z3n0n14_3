.class Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$4;
.super Ljava/lang/Object;
.source "DRMLicensing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;


# direct methods
.method constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$4;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 484
    new-instance v0, Lcom/gamevil/nexus2/xml/ProfileSender;

    invoke-direct {v0}, Lcom/gamevil/nexus2/xml/ProfileSender;-><init>()V

    .line 485
    .local v0, "sendProfile":Lcom/gamevil/nexus2/xml/ProfileSender;
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$4;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    sget-object v2, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->myActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/gamevil/nexus2/xml/NexusUtils;->getSavedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 486
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 487
    iget-object v4, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$4;->this$0:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;

    invoke-static {v4}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->access$0(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)Ljava/lang/String;

    move-result-object v4

    .line 488
    sget-object v5, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->myActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/gamevil/nexus2/xml/ProfileData;->isTermsAccepted(Landroid/content/Context;)I

    move-result v5

    int-to-byte v5, v5

    .line 485
    invoke-virtual/range {v0 .. v5}, Lcom/gamevil/nexus2/xml/ProfileSender;->setProfileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 489
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/xml/ProfileSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    return-void
.end method
