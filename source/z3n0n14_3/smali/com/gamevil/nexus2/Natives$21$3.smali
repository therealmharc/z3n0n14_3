.class Lcom/gamevil/nexus2/Natives$21$3;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamevil/nexus2/Natives$21;


# direct methods
.method constructor <init>(Lcom/gamevil/nexus2/Natives$21;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamevil/nexus2/Natives$21$3;->this$1:Lcom/gamevil/nexus2/Natives$21;

    .line 2508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2519
    const/4 v0, 0x2

    const/16 v1, 0x4362

    const-string v2, "$4.99"

    invoke-static {v0, v1, v2}, Lcom/gamevil/nexus2/Natives;->openPurchasePopup(IILjava/lang/String;)V

    .line 2533
    const/4 v0, 0x1

    return v0
.end method
