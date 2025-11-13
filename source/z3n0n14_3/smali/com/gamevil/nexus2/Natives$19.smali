.class Lcom/gamevil/nexus2/Natives$19;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->openPurchasePopup(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$money:Ljava/lang/String;

.field private final synthetic val$n:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$19;->val$money:Ljava/lang/String;

    iput p2, p0, Lcom/gamevil/nexus2/Natives$19;->val$n:I

    .line 3012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 3016
    iget-object v0, p0, Lcom/gamevil/nexus2/Natives$19;->val$money:Ljava/lang/String;

    iget v1, p0, Lcom/gamevil/nexus2/Natives$19;->val$n:I

    invoke-static {v0, v1}, Lcom/gamevil/nexus2/Natives;->startPurchase(Ljava/lang/String;I)V

    .line 3017
    return-void
.end method
