.class public Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;
.super Landroid/app/Activity;
.source "DRMLicensing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;
    }
.end annotation


# static fields
.field private static final MSG_AUTH_EXECPTION_BLOCK:I = 0xa

.field private static final MSG_AUTH_EXECPTION_ERROR:I = 0xc

.field private static final MSG_AUTH_EXECPTION_PASS:I = 0xb

.field static drmGraceRun:I

.field public static myActivity:Landroid/app/Activity;

.field public static timesAppLaunched:I


# instance fields
.field private armCon:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

.field private armPassed:Z

.field mCertifiCancelListener:Landroid/view/View$OnClickListener;

.field mCertifiYesListener:Landroid/view/View$OnClickListener;

.field mCertifiYesListener1:Landroid/view/View$OnClickListener;

.field mCloseCancelListener:Landroid/view/View$OnClickListener;

.field mCloseYesListener:Landroid/view/View$OnClickListener;

.field mConfirmOkListener:Landroid/view/View$OnClickListener;

.field final mHandler:Landroid/os/Handler;

.field private final mMessageHandler:Landroid/os/Handler;

.field mSmsCancelListener:Landroid/view/View$OnClickListener;

.field mSmsYesListener:Landroid/view/View$OnClickListener;

.field private progress:Landroid/widget/ProgressBar;

.field private service:Lcom/skt/arm/aidl/IArmService;

.field private textview:Landroid/widget/TextView;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->timesAppLaunched:I

    .line 67
    sput v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->drmGraceRun:I

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mHandler:Landroid/os/Handler;

    .line 450
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$1;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$1;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCertifiYesListener:Landroid/view/View$OnClickListener;

    .line 465
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$2;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$2;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCertifiYesListener1:Landroid/view/View$OnClickListener;

    .line 471
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$3;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$3;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCertifiCancelListener:Landroid/view/View$OnClickListener;

    .line 480
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$4;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$4;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mSmsYesListener:Landroid/view/View$OnClickListener;

    .line 496
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$5;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$5;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mSmsCancelListener:Landroid/view/View$OnClickListener;

    .line 504
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$6;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$6;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCloseYesListener:Landroid/view/View$OnClickListener;

    .line 509
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$7;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$7;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCloseCancelListener:Landroid/view/View$OnClickListener;

    .line 518
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$8;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$8;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mConfirmOkListener:Landroid/view/View$OnClickListener;

    .line 598
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$9;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mMessageHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)Lcom/skt/arm/aidl/IArmService;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->service:Lcom/skt/arm/aidl/IArmService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;Lcom/skt/arm/aidl/IArmService;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->service:Lcom/skt/arm/aidl/IArmService;

    return-void
.end method

.method static synthetic access$3(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->startGameActivity()V

    return-void
.end method

.method static synthetic access$4(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armPassed:Z

    return-void
.end method

.method static synthetic access$5(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->releaseService()V

    return-void
.end method

.method private releaseService()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armCon:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+--------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "|releaseService"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+--------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armCon:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->unbindService(Landroid/content/ServiceConnection;)V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armCon:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

    .line 325
    :cond_0
    return-void
.end method

.method private runArmService()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->startGameActivity()V

    .line 294
    return-void
.end method

.method private runBindArmService()V
    .locals 4

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armCon:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

    if-nez v1, :cond_0

    .line 300
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|bind ARM Service"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    iput-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armCon:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

    .line 304
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/skt/arm/aidl/IArmService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armCon:Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$ArmServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const/16 v1, 0x3e7

    invoke-virtual {p0, v1}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->releaseService()V

    goto :goto_0
.end method

.method private startGameActivity()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 227
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|startGameActivity()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|\ud1b5\uc2e0\uc0ac"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->isDomestic(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|getLocaleID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getLocaleID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/gamevil/nexus2/xml/ProfileData;->isTermsAccepted(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 236
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|DRMLicensing TermsAccepted"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    invoke-static {v5}, Lcom/gamevil/nexus2/xml/ProfileData;->setProfileSent(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->callGameActivitIntent()V

    .line 259
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->isDomestic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/gamevil/nexus2/xml/NexusUtils;->getLocaleID()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 243
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "| Start Gamevil Certification"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 247
    .local v0, "wb":Landroid/webkit/WebView;
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 248
    const-string v1, "file:///android_asset/auth_terms.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 250
    invoke-static {v4}, Lcom/gamevil/nexus2/xml/ProfileData;->setProfileSent(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->showCertificationFrame()V

    goto :goto_0

    .line 253
    .end local v0    # "wb":Landroid/webkit/WebView;
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|DRMLicensing TermsAccepted"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    invoke-static {v5}, Lcom/gamevil/nexus2/xml/ProfileData;->setProfileSent(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->callGameActivitIntent()V

    goto :goto_0
.end method


# virtual methods
.method public callGameActivitIntent()V
    .locals 3

    .prologue
    .line 264
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|callGameActivitIntent()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+--------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/gamevil/nexus2/Natives;->gameActivityClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 271
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/gamevil/nexus2/Natives;->gameActivityClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->finish()V

    .line 280
    return-void

    .line 275
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public handleExceptionErrorMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mMessageHandler:Landroid/os/Handler;

    .line 662
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mMessageHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 661
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    return-void
.end method

.method public handleExceptionMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mMessageHandler:Landroid/os/Handler;

    .line 652
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mMessageHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 651
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    return-void
.end method

.method public handleExceptionPassMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mMessageHandler:Landroid/os/Handler;

    .line 657
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mMessageHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 656
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    return-void
.end method

.method public hideCertificationFrame()V
    .locals 2

    .prologue
    .line 529
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 530
    .local v0, "certifiFrame":Landroid/widget/FrameLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 531
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iput-boolean v6, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armPassed:Z

    .line 80
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+----------------------------------------+"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "|------------ DRMLicensing --------------|"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "+----------------------------------------+"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v7}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->requestWindowFeature(I)Z

    .line 85
    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->setContentView(I)V

    .line 86
    sput-object p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->myActivity:Landroid/app/Activity;

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    const v3, 0x7f080007

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 101
    .local v0, "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCertifiYesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 105
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCertifiYesListener1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 109
    .local v1, "checkbox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$10;

    invoke-direct {v3, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$10;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 125
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mSmsYesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v3, 0x7f080010

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 128
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mSmsCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 131
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCloseYesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 134
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mCloseCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 137
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->mConfirmOkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const/16 v3, 0x599a

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setGameID(I)V

    .line 147
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setSaleCode(B)V

    .line 148
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setTrialCode(B)V

    .line 149
    const-string v3, "NONE"

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setMcid(Ljava/lang/String;)V

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AD OS_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setOsVersion(Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->isAndroidPlayer(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    const-string v3, "AD Player"

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setDeviceType(Ljava/lang/String;)V

    .line 159
    :goto_1
    const-string v3, "NONE"

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setDeviceToken(Ljava/lang/String;)V

    .line 160
    invoke-static {v6}, Lcom/gamevil/nexus2/xml/ProfileData;->setUsingNetworkEncryption(Z)V

    .line 161
    const-string v3, "7SUBF8CFC42GNY891IFF"

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setFlurryApiKey(Ljava/lang/String;)V

    .line 162
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setCarrierId(S)V

    .line 166
    invoke-static {p0}, Lcom/gamevil/nexus2/xml/NexusUtils;->checkPhonNumber(Landroid/content/Context;)Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->runArmService()V

    .line 213
    return-void

    .line 94
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "1.0.0"

    iput-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->version:Ljava/lang/String;

    goto/16 :goto_0

    .line 157
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "button":Landroid/widget/Button;
    .restart local v1    # "checkbox":Landroid/widget/CheckBox;
    :cond_0
    const-string v3, "AD Default"

    invoke-static {v3}, Lcom/gamevil/nexus2/xml/ProfileData;->setDeviceType(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 365
    const-string v1, "ALERT!"

    .line 366
    .local v1, "title":Ljava/lang/String;
    const-string v0, ""

    .line 367
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0x457

    if-ne p1, v2, :cond_0

    .line 370
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    const-string v3, "\uc57d\uad00 \ub3d9\uc758"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 372
    const-string v3, "\uac1c\uc778\uc815\ubcf4 \uc218\uc9d1 \ubc0f \uc774\uc6a9\uc548\ub0b4\uc5d0 \ub3d9\uc758\ud574 \uc8fc\uc138\uc694."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 373
    const-string v3, "OK"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$11;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$11;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 378
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 429
    :goto_0
    return-object v2

    .line 382
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 429
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 432
    const-string v3, "OK"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$12;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing$12;-><init>(Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 385
    :sswitch_0
    const-string v0, "\uc77c\uc2dc\uc801\uc778 \uc7a5\uc560\ub85c \ub77c\uc774\uc120\uc2a4 \ubc1c\uae09\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\uc7a0\uc2dc\ud6c4\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc694.(04)"

    .line 386
    goto :goto_1

    .line 389
    :sswitch_1
    const-string v0, "\uc77c\uc2dc\uc801\uc778 \uc7a5\uc560\ub85c \ub77c\uc774\uc120\uc2a4 \ubc1c\uae09\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\uc7a0\uc2dc\ud6c4\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc694.(08)"

    .line 390
    goto :goto_1

    .line 392
    :sswitch_2
    const-string v0, "\uc77c\uc2dc\uc801\uc778 \uc7a5\uc560\ub85c \ub77c\uc774\uc120\uc2a4 \ubc1c\uae09\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\uc7a0\uc2dc\ud6c4\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc694.(0E)"

    .line 393
    goto :goto_1

    .line 395
    :sswitch_3
    const-string v0, "\uc0c1\ud488 \uad6c\ub9e4\ub0b4\uc5ed \ud655\uc778\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\uc790\uc138\ud55c \uc0ac\ud56d\uc740 \uace0\uac1d\uc13c\ud130\ub85c \ubb38\uc758 \ubc14\ub78d\ub2c8\ub2e4.(09)"

    .line 396
    goto :goto_1

    .line 398
    :sswitch_4
    const-string v0, "Tstore \ubbf8\uac00\uc785\ub41c \ub2e8\ub9d0\uc785\ub2c8\ub2e4.\n\uac00\uc785 \ud6c4 \uc774\uc6a9\uc744 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.(0A)"

    .line 399
    goto :goto_1

    .line 401
    :sswitch_5
    const-string v0, "\uc77c\uc2dc\uc801\uc778 \uc7a5\uc560\ub85c \ub77c\uc774\uc120\uc2a4 \ubc1c\uae09\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4./n\uc7a0\uc2dc\ud6c4\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc694.(0C)"

    .line 402
    goto :goto_1

    .line 404
    :sswitch_6
    const-string v0, "\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc758 \ub77c\uc774\uc120\uc2a4 \uc815\ubcf4 \ud655\uc778\uc774 \ubd88\uac00\ub2a5\ud569\ub2c8\ub2e4.\n\uc790\uc138\ud55c \uc0ac\ud56d\uc740 \uace0\uac1d\uc13c\ud130\ub85c \ubb38\uc758 \ubc14\ub78d\ub2c8\ub2e4.(0D)"

    .line 405
    goto :goto_1

    .line 407
    :sswitch_7
    const-string v0, "\ud578\ub4dc\ud3f0 \ubc88\ud638\ub97c \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.\nUSIM \uc7a5\ucc29\uc5ec\ubd80 \ud655\uc778 \ubc0f USIM \uc7a0\uae08\uc774 \ub41c \uacbd\uc6b0 \ud574\uc81c\ub97c \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4. (11)"

    .line 408
    goto :goto_1

    .line 410
    :sswitch_8
    const-string v0, "\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc758 \uc815\ubcf4 \ud655\uc778\uc774 \ubd88\uac00\ub2a5\ud569\ub2c8\ub2e4.\n\uc790\uc138\ud55c \uc0ac\ud56d\uc740 \uace0\uac1d\uc13c\ud130\ub85c \ubb38\uc758 \ubc14\ub78d\ub2c8\ub2e4.(12)"

    .line 411
    goto :goto_1

    .line 413
    :sswitch_9
    const-string v0, "\ud578\ub4dc\ud3f0\uc5d0\uc11c \ub370\uc774\ud0c0\ud1b5\uc2e0(3G, WIFI)\uc774 \ub418\uace0 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n\ud578\ub4dc\ud3f0\uc758 \ub370\uc774\ud130 \ud1b5\uc2e0 \uc124\uc815\ubd80\ubd84\uc744 \ud655\uc778 \ud6c4 \uc7ac \uc2e4\ud589\uc744 \ud574 \uc8fc\uc2ed\uc2dc\uc694. (13)"

    .line 414
    goto :goto_1

    .line 416
    :sswitch_a
    const-string v0, "Tstore \uc804\uc6a9\ud504\ub85c\uadf8\ub7a8\uc774 \uc124\uce58 \ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\nTstore \uc804\uc6a9\ud504\ub85c\uadf8\ub7a8\uc744 \uc124\uce58\ud558\uc2e0 \ud6c4 \uc7ac \uc2e4\ud589\uc744 \ud574 \uc8fc\uc2ed\uc2dc\uc694. (14)"

    .line 417
    goto :goto_1

    .line 419
    :sswitch_b
    const-string v1, "IArmService bind \uc2e4\ud328"

    .line 420
    const-string v0, "IArmService \uac00 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    .line 421
    goto :goto_1

    .line 423
    :sswitch_c
    const-string v1, "SKAF ARM \uc778\uc99d \uc2e4\ud328"

    .line 424
    const-string v0, "SKAF \uc124\uce58 \uc5ec\ubd80 \ud655\uc778 \ubc14\ub78d\ub2c8\ub2e4.\n\uc790\uc138\ud55c \uc0ac\ud56d\uc740 \uace0\uac1d\uc13c\ud130\ub85c \ubb38\uc758 \ubc14\ub78d\ub2c8\ub2e4."

    goto :goto_1

    .line 382
    :sswitch_data_0
    .sparse-switch
        -0xffffffc -> :sswitch_0
        -0xffffff8 -> :sswitch_1
        -0xffffff7 -> :sswitch_3
        -0xffffff6 -> :sswitch_4
        -0xffffff4 -> :sswitch_5
        -0xffffff3 -> :sswitch_6
        -0xffffff2 -> :sswitch_2
        -0xfffffef -> :sswitch_7
        -0xfffffee -> :sswitch_8
        -0xfffffed -> :sswitch_9
        -0xfffffec -> :sswitch_a
        0x3e7 -> :sswitch_b
        0x1869f -> :sswitch_c
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 571
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 573
    const/4 v0, 0x0

    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->myActivity:Landroid/app/Activity;

    .line 574
    const-string v0, "DRMLicensing"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->armPassed:Z

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->finish()V

    .line 558
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 567
    const-string v0, "DRMLicensing"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 582
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 586
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 587
    return-void
.end method

.method public showCertificationFrame()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 535
    const-string v2, "MyPrefsFile"

    invoke-virtual {p0, v2, v4}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 536
    .local v1, "settingsLicense":Landroid/content/SharedPreferences;
    const-string v2, "profiled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+--------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|showCertificationFrame  d"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+--------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 542
    .local v0, "certifiFrame":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 548
    .end local v0    # "certifiFrame":Landroid/widget/FrameLayout;
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/DRMLicensing;->callGameActivitIntent()V

    goto :goto_0
.end method
