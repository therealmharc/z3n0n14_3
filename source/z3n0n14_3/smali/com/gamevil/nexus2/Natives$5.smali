.class Lcom/gamevil/nexus2/Natives$5;
.super Ljava/lang/Object;
.source "Natives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamevil/nexus2/Natives;->openPurchaseSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1345
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$1()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1347
    const-string v1, "ZEN \uad6c\ub9e4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1348
    const-string v1, "\uad6c\uc785\uc774 \uc644\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1349
    const-string v1, "\ud655\uc778"

    .line 1350
    new-instance v2, Lcom/gamevil/nexus2/Natives$5$1;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$5$1;-><init>(Lcom/gamevil/nexus2/Natives$5;)V

    .line 1349
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1393
    :goto_0
    return-void

    .line 1357
    :cond_0
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1359
    const-string v1, "ZEN\u3000\u8cfc\u5165"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1360
    const-string v1, "\u8cfc\u5165\u304c\u5b8c\u4e86\u3057\u307e\u3057\u305f\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1361
    const-string v1, "\u78ba\u8a8d"

    .line 1362
    new-instance v2, Lcom/gamevil/nexus2/Natives$5$2;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$5$2;-><init>(Lcom/gamevil/nexus2/Natives$5;)V

    .line 1361
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1369
    :cond_1
    sget v0, Lcom/gamevil/nexus2/Natives;->language:I

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->access$3()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1371
    const-string v1, "\u8d2d\u4e70ZEN"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1372
    const-string v1, "\u91c7\u8d2d\u5df2\u7ecf\u5b8c\u6210\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1373
    const-string v1, "\u786e\u8ba4"

    .line 1374
    new-instance v2, Lcom/gamevil/nexus2/Natives$5$3;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$5$3;-><init>(Lcom/gamevil/nexus2/Natives$5;)V

    .line 1373
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1382
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1383
    const-string v1, "Purchase"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1384
    const-string v1, "Purchase Complete."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1385
    const-string v1, "OK"

    .line 1386
    new-instance v2, Lcom/gamevil/nexus2/Natives$5$4;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/Natives$5$4;-><init>(Lcom/gamevil/nexus2/Natives$5;)V

    .line 1385
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1390
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
