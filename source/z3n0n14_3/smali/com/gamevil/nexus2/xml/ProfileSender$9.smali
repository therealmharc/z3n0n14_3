.class Lcom/gamevil/nexus2/xml/ProfileSender$9;
.super Ljava/lang/Object;
.source "ProfileSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/xml/ProfileSender;->showConfirmDialog()V
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
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/ProfileSender$9;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1114
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender$9;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    invoke-static {v2}, Lcom/gamevil/nexus2/xml/ProfileSender;->access$2(Lcom/gamevil/nexus2/xml/ProfileSender;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1115
    .local v0, "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1116
    :cond_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender$9;->this$0:Lcom/gamevil/nexus2/xml/ProfileSender;

    invoke-static {v2}, Lcom/gamevil/nexus2/xml/ProfileSender;->access$2(Lcom/gamevil/nexus2/xml/ProfileSender;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1118
    .local v1, "message":Landroid/widget/TextView;
    return-void
.end method
