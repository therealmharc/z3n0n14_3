.class public Lcom/gamevil/zenonia3/global/Zenonia3Launcher;
.super Lcom/gamevil/nexus2/NexusGLActivity;
.source "Zenonia3Launcher.java"

# interfaces
.implements Lcom/tapjoy/TapjoyNotifier;
.implements Lcom/tapjoy/TapjoyFeaturedAppNotifier;
.implements Lcom/tapjoy/TapjoySpendPointsNotifier;
.implements Lcom/tapjoy/TapjoyDisplayAdNotifier;
.implements Lcom/tapjoy/TapjoyVideoNotifier;
.implements Lcom/tapjoy/TapjoyEarnedPointsNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;,
        Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Managed;,
        Lcom/gamevil/zenonia3/global/Zenonia3Launcher$MyLicenseCheckerCallback;,
        Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Nexus2PurchaseObserver;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gamevil$zenonia3$global$Zenonia3Launcher$License_Result:[I = null

.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCJj/DV+7t23GQesWEZNc7wqKYCcibr5hgVfUipJqxJD+woy0Kco2Zy9ADiOydUODqrKRu36ajCtN1NmVRTGBdC4ZXi71JSs69T2hiLFhKRInrh3mfuhQ76IBq6T/39jfaW5M096AAYZIck7mqs3KvTaRYG7aYlz7pjrWGkqCs6cQIDAQAB"

.field private static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field private static final DIALOG_BILLING_COMPLETE:I = 0x4

.field private static final DIALOG_BILLING_IN_PROGRESS:I = 0x3

.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2

.field private static final DIALOG_CANNOT_CONNECT_ID:I = 0x1

.field private static final MAX_TIME_BLOCK:I = 0x15f90

.field private static final SALT:[B

.field private static final TAG:Ljava/lang/String; = "Nexus2Billing"

.field public static dialog:Landroid/app/ProgressDialog;


# instance fields
.field adLinearLayout:Landroid/widget/LinearLayout;

.field adView:Landroid/view/View;

.field public final b_checkPass:Z

.field displayText:Ljava/lang/String;

.field public isLicenced:Z

.field private mBillingHandler:Landroid/os/Handler;

.field private mBillingService:Lcom/gamevil/zenonia3/global/BillingService;

.field private mChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mHandler:Landroid/os/Handler;

.field private mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

.field private mNexus2PurchaseObserver:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Nexus2PurchaseObserver;

.field private mPayloadContents:Ljava/lang/String;

.field private mPurchaseDatabase:Lcom/gamevil/zenonia3/global/PurchaseDatabase;

.field final mUpdateResults:Ljava/lang/Runnable;

.field relativeLayout:Landroid/widget/RelativeLayout;

.field updateChecker:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

.field update_display_ad:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gamevil$zenonia3$global$Zenonia3Launcher$License_Result()[I
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->$SWITCH_TABLE$com$gamevil$zenonia3$global$Zenonia3Launcher$License_Result:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->values()[Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_INVALID_PACKAGE_NAME:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NETWORK_ERROR:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NON_MATCHING_UID:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NOT_LICENSED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->RESULT_NOT_MARKET_MANAGED:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->$SWITCH_TABLE$com$gamevil$zenonia3$global$Zenonia3Launcher$License_Result:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 457
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->SALT:[B

    .line 93
    return-void

    .line 457
    :array_0
    .array-data 1
        -0x2et
        0x41t
        0x1et
        -0x80t
        -0x67t
        -0x39t
        0x4at
        -0x40t
        0x33t
        0x58t
        -0x5ft
        -0x2dt
        0x4dt
        -0x75t
        -0x24t
        -0x71t
        -0xbt
        0x20t
        -0x40t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLActivity;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->b_checkPass:Z

    .line 444
    iput-boolean v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->isLicenced:Z

    .line 464
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mHandler:Landroid/os/Handler;

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mPayloadContents:Ljava/lang/String;

    .line 892
    iput-boolean v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->update_display_ad:Z

    .line 908
    new-instance v0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$1;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$1;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mUpdateResults:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V
    .locals 0

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->updateResultsInUi()V

    return-void
.end method

.method private checkLiecensedStatus()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 623
    invoke-virtual {p0, v8}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 625
    .local v3, "settingsLicense":Landroid/content/SharedPreferences;
    const-string v6, "timeLock"

    invoke-interface {v3, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 626
    .local v1, "saveTime":J
    cmp-long v6, v1, v9

    if-nez v6, :cond_0

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 629
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 630
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "timeLock"

    invoke-interface {v0, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v1

    .line 636
    .local v4, "timeGap":J
    const-wide/32 v6, 0x55d4a80

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 638
    const/4 v6, 0x1

    .line 641
    :goto_0
    return v6

    :cond_1
    const-string v6, "licensed"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_0
.end method

.method private createDialog(II)Landroid/app/Dialog;
    .locals 6
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 809
    const v3, 0x7f060014

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, "helpUrl":Ljava/lang/String;
    const-string v3, "Nexus2Billing"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 815
    .local v1, "helpUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 816
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 817
    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 818
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 819
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 820
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 821
    const v4, 0x7f060013

    new-instance v5, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$9;

    invoke-direct {v5, p0, v1}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$9;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;Landroid/net/Uri;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 827
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private displayResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$6;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$6;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method

.method private doCheck()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 468
    return-void
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 841
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 842
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 843
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 845
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p1
.end method

.method private restoreDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 791
    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 792
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "db_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 793
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 794
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/BillingService;

    invoke-virtual {v2}, Lcom/gamevil/zenonia3/global/BillingService;->restoreTransactions()Z

    .line 797
    :cond_0
    return-void
.end method

.method private updateResultsInUi()V
    .locals 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->update_display_ad:Z

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 926
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 928
    const-string v0, "EASY_APP"

    const-string v1, "## adLinearLayout.addView(adView); ##"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->update_display_ad:Z

    .line 932
    :cond_0
    return-void
.end method


# virtual methods
.method public earnedTapPoints(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 1135
    return-void
.end method

.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adView:Landroid/view/View;

    .line 1018
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1019
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    const-string v1, "EASY_APP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adLinearLayout dimensions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->update_display_ad:Z

    .line 1026
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1027
    return-void
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1032
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDisplayAd error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display Ads: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1038
    return-void
.end method

.method public getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V
    .locals 2
    .param p1, "featuredApObject"    # Lcom/tapjoy/TapjoyFeaturedAppObject;

    .prologue
    .line 966
    const-string v0, "EASY_APP"

    const-string v1, "Displaying Featured App.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showFeaturedAppFullScreenAd()V

    .line 972
    return-void
.end method

.method public getFeaturedAppResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 978
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Featured App to display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v0, "No Featured App to display."

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 984
    return-void
.end method

.method public getSpendPointsResponse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 990
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currencyName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pointTotal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 997
    return-void
.end method

.method public getSpendPointsResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1003
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spendTapPoints error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spend Tap Points: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1009
    return-void
.end method

.method public getTapjoyGpoint()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1046
    invoke-virtual {p0, v11}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1050
    .local v7, "settingsLicense":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v12, "#getTapjoyGpoint()#"

    const-string v13, "###### getTapjoyGpoint() IN #######"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v8, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://us.gamevil.com/TapJoy/android/zenonia3/award_currency4gv.php?snuid="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tapjoy/TapjoyConnect;->getDeviceID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v8, "text":Ljava/net/URL;
    const-string v12, "#getTapjoyGpoint()#"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "#"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 1066
    .local v9, "textConnection":Ljava/net/URLConnection;
    const/16 v12, 0xbb8

    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1067
    const/16 v12, 0xbb8

    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1069
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1072
    .local v3, "isText":Ljava/io/InputStream;
    const/16 v12, 0x40

    new-array v0, v12, [B

    .line 1073
    .local v0, "bText":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 1074
    .local v5, "readSize":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 1076
    .local v6, "response":Ljava/lang/String;
    const-string v12, "#getTapjoyGpoint()#"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "#"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, "gpoint":Ljava/lang/String;
    const-string v12, "error"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v10, :cond_0

    .line 1089
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1093
    .local v4, "ngp":I
    const/16 v12, 0x16fa

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v4, v13, v14}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1110
    .end local v0    # "bText":[B
    .end local v2    # "gpoint":Ljava/lang/String;
    .end local v3    # "isText":Ljava/io/InputStream;
    .end local v4    # "ngp":I
    .end local v5    # "readSize":I
    .end local v6    # "response":Ljava/lang/String;
    .end local v8    # "text":Ljava/net/URL;
    .end local v9    # "textConnection":Ljava/net/URLConnection;
    :cond_0
    :goto_0
    return v10

    .line 1100
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_1
    move v10, v11

    .line 1110
    goto :goto_0

    .line 1103
    :catch_1
    move-exception v1

    .line 1105
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1106
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1107
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 939
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currencyName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pointTotal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 947
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 954
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTapPoints error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v0, "Unable to retrieve tap points from server."

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 960
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 199
    invoke-super {p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-static {v10}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "98b23032-d4fc-4ab8-a37d-14e00679e8a1"

    const-string v7, "VsUbPiFleSYAjaucCMnx"

    invoke-static {v5, v6, v7}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    .line 215
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    const-string v6, "98b23032-d4fc-4ab8-a37d-14e00679e8a1"

    invoke-virtual {v5, v6}, Lcom/tapjoy/TapjoyConnect;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/TapjoyConnect;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 219
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/TapjoyConnect;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->version:Ljava/lang/String;

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "v"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const v6, 0x7f07001a

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 254
    .local v4, "txt":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v5, 0x7f070016

    invoke-virtual {p0, v5}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    sput-object v5, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    .line 257
    sget-object v5, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->uiViewControll:Lcom/gamevil/nexus2/ui/UIControllerView;

    invoke-static {v5}, Lcom/gamevil/nexus2/Natives;->setUIListener(Lcom/gamevil/nexus2/Natives$UIListener;)V

    .line 259
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v5}, Lcom/gamevil/nexus2/NexusGLActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/gamevil/nexus2/ui/NexusSound;->initSounds(Landroid/content/Context;I)V

    .line 265
    const v5, 0x7f050001

    invoke-static {v10, v5}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 266
    const v5, 0x7f050002

    invoke-static {v8, v5}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 267
    const v5, 0x7f050003

    invoke-static {v9, v5}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 268
    const/4 v5, 0x4

    const v6, 0x7f050004

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 269
    const/4 v5, 0x5

    const v6, 0x7f050005

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 270
    const/4 v5, 0x6

    const v6, 0x7f050006

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 271
    const/4 v5, 0x7

    const v6, 0x7f050007

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 272
    const/16 v5, 0x8

    const v6, 0x7f050008

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 273
    const/16 v5, 0x9

    const v6, 0x7f050009

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 274
    const/16 v5, 0xa

    const v6, 0x7f05000a

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 275
    const/16 v5, 0xb

    const v6, 0x7f05000b

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 276
    const/16 v5, 0xc

    const v6, 0x7f05000c

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 277
    const/16 v5, 0xd

    const v6, 0x7f05000d

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 278
    const/16 v5, 0xe

    const v6, 0x7f05000e

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 279
    const/16 v5, 0xf

    const v6, 0x7f05000f

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 282
    new-instance v5, Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    invoke-direct {v5}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;-><init>()V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->updateChecker:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    .line 285
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->getLocaleID()I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 286
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->updateChecker:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "http://www.gamevil.com/preload/ad.php?area=kr&pc=GLOBAL"

    aput-object v7, v6, v11

    const-string v7, "http://www.gamevil.com/preload/ad_time.php?area=kr"

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    :goto_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mBillingHandler:Landroid/os/Handler;

    .line 293
    new-instance v5, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Nexus2PurchaseObserver;

    iget-object v6, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mBillingHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Nexus2PurchaseObserver;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mNexus2PurchaseObserver:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Nexus2PurchaseObserver;

    .line 294
    new-instance v5, Lcom/gamevil/zenonia3/global/BillingService;

    invoke-direct {v5}, Lcom/gamevil/zenonia3/global/BillingService;-><init>()V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/BillingService;

    .line 295
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/BillingService;

    invoke-virtual {v5, p0}, Lcom/gamevil/zenonia3/global/BillingService;->setContext(Landroid/content/Context;)V

    .line 297
    new-instance v5, Lcom/gamevil/zenonia3/global/PurchaseDatabase;

    invoke-direct {v5, p0}, Lcom/gamevil/zenonia3/global/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mPurchaseDatabase:Lcom/gamevil/zenonia3/global/PurchaseDatabase;

    .line 300
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mNexus2PurchaseObserver:Lcom/gamevil/zenonia3/global/Zenonia3Launcher$Nexus2PurchaseObserver;

    invoke-static {v5}, Lcom/gamevil/zenonia3/global/ResponseHandler;->register(Lcom/gamevil/zenonia3/global/PurchaseObserver;)V

    .line 302
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/BillingService;

    invoke-virtual {v5}, Lcom/gamevil/zenonia3/global/BillingService;->checkBillingSupported()Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    :cond_0
    const v5, 0x7f070040

    invoke-virtual {p0, v5}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    .line 313
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/TapjoyConnect;->getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 321
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v5, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$MyLicenseCheckerCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$MyLicenseCheckerCallback;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;Lcom/gamevil/zenonia3/global/Zenonia3Launcher$MyLicenseCheckerCallback;)V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    .line 329
    new-instance v5, Lcom/android/vending/licensing/LicenseChecker;

    .line 331
    new-instance v6, Lcom/android/vending/licensing/ServerManagedPolicy;

    new-instance v7, Lcom/android/vending/licensing/AESObfuscator;

    sget-object v8, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->SALT:[B

    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v0}, Lcom/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, p0, v7}, Lcom/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V

    .line 332
    const-string v7, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCJj/DV+7t23GQesWEZNc7wqKYCcibr5hgVfUipJqxJD+woy0Kco2Zy9ADiOydUODqrKRu36ajCtN1NmVRTGBdC4ZXi71JSs69T2hiLFhKRInrh3mfuhQ76IBq6T/39jfaW5M096AAYZIck7mqs3KvTaRYG7aYlz7pjrWGkqCs6cQIDAQAB"

    invoke-direct {v5, p0, v6, v7}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 329
    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 338
    const-string v5, "# License #"

    const-string v6, "## no license Check ##"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 350
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 351
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x1e0

    if-gt v5, v6, :cond_1

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x140

    if-gt v5, v6, :cond_1

    .line 353
    const-string v5, "Note:\nIn-Game graphics have not been optimized for your device\'s resolution.\nSome features may appear blurry."

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 354
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v5, 0x31

    const/16 v6, 0x96

    invoke-virtual {v3, v5, v11, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 355
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 358
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void

    .line 248
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "txt":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "1.0.0"

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->version:Ljava/lang/String;

    goto/16 :goto_0

    .line 288
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "txt":Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->updateChecker:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "http://www.gamevil.com/preload/ad.php?area=en"

    aput-object v7, v6, v11

    const-string v7, "http://www.gamevil.com/preload/ad_time.php?area=en"

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 851
    packed-switch p1, :pswitch_data_0

    .line 884
    :goto_0
    return-object v1

    .line 854
    :pswitch_0
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 856
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    .line 857
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    const-string v2, "Please wait while loading..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 858
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 859
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 883
    :cond_0
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 884
    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 864
    :pswitch_1
    const v1, 0x7f060010

    const v2, 0x7f060011

    invoke-direct {p0, v1, v2}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->createDialog(II)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 866
    :pswitch_2
    const v1, 0x7f06000e

    const v2, 0x7f06000f

    invoke-direct {p0, v1, v2}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->createDialog(II)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 869
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 870
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060016

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 871
    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 872
    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 873
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 874
    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 876
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 189
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 363
    const-class v2, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "### keycode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ### event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ####"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 365
    check-cast v0, Landroid/media/AudioManager;

    .line 368
    .local v0, "audio":Landroid/media/AudioManager;
    sparse-switch p1, :sswitch_data_0

    .line 435
    invoke-super {p0, p1, p2}, Lcom/gamevil/nexus2/NexusGLActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 371
    :sswitch_0
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, v5, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 376
    :sswitch_1
    if-eqz v0, :cond_0

    .line 378
    const/4 v2, -0x1

    .line 377
    invoke-virtual {v0, v5, v2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 382
    :sswitch_2
    sget v2, Lcom/gamevil/nexus2/Natives;->language:I

    if-nez v2, :cond_1

    .line 385
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    const-string v3, "Exit"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 387
    const-string v3, "Are you sure?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 388
    const-string v3, "Yes"

    new-instance v4, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$2;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$2;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 395
    const-string v3, "No"

    new-instance v4, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$3;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$3;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 406
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    const-string v3, "\uac8c\uc784\uc885\ub8cc"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 408
    const-string v3, "\uac8c\uc784\uc744 \uc885\ub8cc\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 409
    const-string v3, "\uc608"

    new-instance v4, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$4;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$4;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 417
    const-string v3, "\uc544\ub2c8\uc624"

    new-instance v4, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$5;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$5;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onPause()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onResume()V

    .line 142
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->getTapjoyReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getTapjoyGpoint()Z

    .line 150
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onStart()V

    .line 117
    const-string v0, "LHY4KBTHWVABAFVWR7TV"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onStop()V

    .line 162
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public openTapjoyOffer()V
    .locals 1

    .prologue
    .line 903
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 905
    return-void
.end method

.method public requestPurchaceIAP()V
    .locals 3

    .prologue
    .line 801
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->showDialog(I)V

    .line 802
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->pID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPayloadContents : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mPayloadContents:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/BillingService;

    sget-object v1, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->pID:Ljava/lang/String;

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->mPayloadContents:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gamevil/zenonia3/global/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->showDialog(I)V

    .line 806
    :cond_0
    return-void
.end method

.method public saveLicensedStatus()V
    .locals 4

    .prologue
    .line 649
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 650
    .local v1, "settingsLicense":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "licensed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 653
    return-void
.end method

.method public showNotLicensedMessage(Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;)V
    .locals 7
    .param p1, "result"    # Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;

    .prologue
    .line 544
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    .local v1, "alert":Landroid/app/AlertDialog$Builder;
    const-string v4, "Unauthorized User"

    .line 546
    .local v4, "title":Ljava/lang/String;
    const-string v3, "The application will be terminated.Please contact us for further details at contact@gamevil.com."

    .line 548
    .local v3, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 549
    .local v2, "bOnlyExitButton":Z
    const-string v0, "OK"

    .line 550
    .local v0, "ExitButtonStr":Ljava/lang/String;
    invoke-static {}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher;->$SWITCH_TABLE$com$gamevil$zenonia3$global$Zenonia3Launcher$License_Result()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 577
    const-string v4, "Unauthorized User"

    .line 578
    const-string v3, "The application will be terminated.Please contact us for further details at contact@gamevil.com."

    .line 579
    const/4 v2, 0x0

    .line 580
    const-string v0, "EXIT"

    .line 585
    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 586
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 587
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 588
    if-nez v2, :cond_0

    .line 589
    const-string v5, "BUY"

    .line 590
    new-instance v6, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$7;

    invoke-direct {v6, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$7;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    .line 589
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 605
    :cond_0
    new-instance v5, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$8;

    invoke-direct {v5, p0}, Lcom/gamevil/zenonia3/global/Zenonia3Launcher$8;-><init>(Lcom/gamevil/zenonia3/global/Zenonia3Launcher;)V

    .line 604
    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 614
    return-void

    .line 553
    :pswitch_0
    const-string v4, "Invalid Package"

    .line 554
    const-string v3, "The application requested a license check for an application not installed. The application will now terminate."

    .line 555
    const/4 v2, 0x1

    .line 556
    const-string v0, "OK"

    .line 557
    goto :goto_0

    .line 559
    :pswitch_1
    const-string v4, "Non Matching UID"

    .line 560
    const-string v3, "The application requested a license check for a package whose UID does not match of the requesting application. The application will now terminate."

    .line 561
    const/4 v2, 0x1

    .line 562
    const-string v0, "OK"

    .line 563
    goto :goto_0

    .line 565
    :pswitch_2
    const-string v4, "Unrecognized Application"

    .line 566
    const-string v3, "The application was not recognized by Android Market. The application will now terminate."

    .line 567
    const/4 v2, 0x1

    .line 568
    const-string v0, "OK"

    .line 569
    goto :goto_0

    .line 571
    :pswitch_3
    const-string v4, "Network Error"

    .line 572
    const-string v3, "The application failed to reach the licensing server, possibly due to network availability problems. Check your network settings and try again."

    .line 573
    const/4 v2, 0x1

    .line 574
    const-string v0, "OK"

    .line 575
    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public videoComplete()V
    .locals 0

    .prologue
    .line 1129
    return-void
.end method

.method public videoError(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 1123
    return-void
.end method

.method public videoReady()V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method
