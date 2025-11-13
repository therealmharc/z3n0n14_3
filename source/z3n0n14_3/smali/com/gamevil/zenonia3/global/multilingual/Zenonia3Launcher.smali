.class public Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;
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
        Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;,
        Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Managed;,
        Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;,
        Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gamevil$zenonia3$global$multilingual$Zenonia3Launcher$License_Result:[I = null

.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCJj/DV+7t23GQesWEZNc7wqKYCcibr5hgVfUipJqxJD+woy0Kco2Zy9ADiOydUODqrKRu36ajCtN1NmVRTGBdC4ZXi71JSs69T2hiLFhKRInrh3mfuhQ76IBq6T/39jfaW5M096AAYZIck7mqs3KvTaRYG7aYlz7pjrWGkqCs6cQIDAQAB"

.field private static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field private static final DIALOG_BILLING_COMPLETE:I = 0x4

.field private static final DIALOG_BILLING_IN_PROGRESS:I = 0x3

.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2

.field private static final DIALOG_CANNOT_CONNECT_ID:I = 0x1

.field private static LANGUAGE_TYPE_CHI:I = 0x0

.field private static LANGUAGE_TYPE_ENG:I = 0x0

.field private static LANGUAGE_TYPE_JPN:I = 0x0

.field private static LANGUAGE_TYPE_KOR:I = 0x0

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

.field private mBillingService:Lcom/gamevil/zenonia3/global/multilingual/BillingService;

.field private mChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mHandler:Landroid/os/Handler;

.field private mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

.field private mNexus2PurchaseObserver:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;

.field private mPayloadContents:Ljava/lang/String;

.field private mPurchaseDatabase:Lcom/gamevil/zenonia3/global/multilingual/PurchaseDatabase;

.field final mUpdateResults:Ljava/lang/Runnable;

.field relativeLayout:Landroid/widget/RelativeLayout;

.field updateChecker:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

.field update_display_ad:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gamevil$zenonia3$global$multilingual$Zenonia3Launcher$License_Result()[I
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->$SWITCH_TABLE$com$gamevil$zenonia3$global$multilingual$Zenonia3Launcher$License_Result:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->values()[Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_INVALID_PACKAGE_NAME:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NETWORK_ERROR:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NON_MATCHING_UID:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NOT_LICENSED:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NOT_MARKET_MANAGED:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->$SWITCH_TABLE$com$gamevil$zenonia3$global$multilingual$Zenonia3Launcher$License_Result:[I

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
    .line 104
    const/4 v0, 0x0

    sput v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->LANGUAGE_TYPE_ENG:I

    .line 105
    const/4 v0, 0x1

    sput v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->LANGUAGE_TYPE_KOR:I

    .line 106
    const/4 v0, 0x2

    sput v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->LANGUAGE_TYPE_JPN:I

    .line 107
    const/4 v0, 0x3

    sput v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->LANGUAGE_TYPE_CHI:I

    .line 527
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->SALT:[B

    .line 96
    return-void

    .line 527
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

    .line 96
    invoke-direct {p0}, Lcom/gamevil/nexus2/NexusGLActivity;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->b_checkPass:Z

    .line 514
    iput-boolean v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->isLicenced:Z

    .line 534
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mHandler:Landroid/os/Handler;

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mPayloadContents:Ljava/lang/String;

    .line 962
    iput-boolean v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->update_display_ad:Z

    .line 980
    new-instance v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$1;

    invoke-direct {v0, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$1;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mUpdateResults:Ljava/lang/Runnable;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V
    .locals 0

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->updateResultsInUi()V

    return-void
.end method

.method private checkLiecensedStatus()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 693
    invoke-virtual {p0, v8}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 695
    .local v3, "settingsLicense":Landroid/content/SharedPreferences;
    const-string v6, "timeLock"

    invoke-interface {v3, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 696
    .local v1, "saveTime":J
    cmp-long v6, v1, v9

    if-nez v6, :cond_0

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 699
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 700
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "timeLock"

    invoke-interface {v0, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 704
    .end local v0    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v1

    .line 706
    .local v4, "timeGap":J
    const-wide/32 v6, 0x55d4a80

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 708
    const/4 v6, 0x1

    .line 711
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
    .line 879
    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "helpUrl":Ljava/lang/String;
    const-string v3, "Nexus2Billing"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 885
    .local v1, "helpUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 886
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 887
    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 888
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 889
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 890
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 891
    const v4, 0x7f07000b

    new-instance v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$13;

    invoke-direct {v5, p0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$13;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;Landroid/net/Uri;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 897
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private displayResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$10;

    invoke-direct {v1, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$10;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method private doCheck()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 538
    return-void
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 910
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 912
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 913
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 915
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p1
.end method

.method private restoreDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 861
    invoke-virtual {p0, v3}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 862
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "db_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 863
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 864
    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/multilingual/BillingService;

    invoke-virtual {v2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->restoreTransactions()Z

    .line 867
    :cond_0
    return-void
.end method

.method private updateResultsInUi()V
    .locals 2

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->update_display_ad:Z

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 998
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1000
    const-string v0, "EASY_APP"

    const-string v1, "## adLinearLayout.addView(adView); ##"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->update_display_ad:Z

    .line 1004
    :cond_0
    return-void
.end method


# virtual methods
.method public earnedTapPoints(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 1271
    return-void
.end method

.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adView:Landroid/view/View;

    .line 1092
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1093
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    const-string v1, "EASY_APP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adLinearLayout dimensions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->update_display_ad:Z

    .line 1100
    iget-object v1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    return-void
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDisplayAd error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display Ads: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1112
    return-void
.end method

.method public getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V
    .locals 2
    .param p1, "featuredApObject"    # Lcom/tapjoy/TapjoyFeaturedAppObject;

    .prologue
    .line 1038
    const-string v0, "EASY_APP"

    const-string v1, "Displaying Featured App.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showFeaturedAppFullScreenAd()V

    .line 1046
    return-void
.end method

.method public getFeaturedAppResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1052
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Featured App to display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v0, "No Featured App to display."

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1058
    return-void
.end method

.method public getSpendPointsResponse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 1064
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currencyName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pointTotal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
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

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1071
    return-void
.end method

.method public getSpendPointsResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1077
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spendTapPoints error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spend Tap Points: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1083
    return-void
.end method

.method public getTapjoyGpoint()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1191
    const/4 v7, 0x0

    .line 1192
    .local v7, "text":Ljava/net/URL;
    const/4 v3, 0x0

    .line 1200
    .local v3, "isText":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://us.gamevil.com/TapJoy/android/zn3/award_currency4gv.php?snuid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tapjoy/TapjoyConnect;->getDeviceID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    .end local v7    # "text":Ljava/net/URL;
    .local v8, "text":Ljava/net/URL;
    :try_start_1
    const-string v11, "#getTapjoyGpoint()#"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "#"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1205
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 1206
    .local v0, "bText":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 1207
    .local v5, "readSize":I
    const-string v11, "#getTapjoyGpoint()#"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "#"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    if-lez v5, :cond_4

    .line 1209
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 1210
    .local v6, "response":Ljava/lang/String;
    const-string v11, "#getTapjoyGpoint()#"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "#"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    if-eqz v6, :cond_4

    .line 1212
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, "gpoint":Ljava/lang/String;
    const-string v11, "error"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-le v11, v9, :cond_0

    .line 1219
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1222
    .local v4, "ngp":I
    const/16 v11, 0x16fa

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v4, v12, v13}, Lcom/gamevil/nexus2/Natives;->handleCletEvent(IIII)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1237
    .end local v4    # "ngp":I
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1239
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    move-object v7, v8

    .line 1246
    .end local v0    # "bText":[B
    .end local v2    # "gpoint":Ljava/lang/String;
    .end local v5    # "readSize":I
    .end local v6    # "response":Ljava/lang/String;
    .end local v8    # "text":Ljava/net/URL;
    .restart local v7    # "text":Ljava/net/URL;
    :goto_2
    return v9

    .line 1240
    .end local v7    # "text":Ljava/net/URL;
    .restart local v0    # "bText":[B
    .restart local v2    # "gpoint":Ljava/lang/String;
    .restart local v5    # "readSize":I
    .restart local v6    # "response":Ljava/lang/String;
    .restart local v8    # "text":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1241
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1232
    .end local v0    # "bText":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "gpoint":Ljava/lang/String;
    .end local v5    # "readSize":I
    .end local v6    # "response":Ljava/lang/String;
    .end local v8    # "text":Ljava/net/URL;
    .restart local v7    # "text":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 1233
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1237
    if-eqz v3, :cond_2

    .line 1239
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_4
    move v9, v10

    .line 1246
    goto :goto_2

    .line 1240
    .restart local v1    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 1241
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1234
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1235
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1237
    if-eqz v3, :cond_2

    .line 1239
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    .line 1240
    :catch_4
    move-exception v1

    .line 1241
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1236
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1237
    :goto_6
    if-eqz v3, :cond_3

    .line 1239
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1244
    :cond_3
    :goto_7
    throw v9

    .line 1240
    :catch_5
    move-exception v1

    .line 1241
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1237
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "text":Ljava/net/URL;
    .restart local v0    # "bText":[B
    .restart local v5    # "readSize":I
    .restart local v8    # "text":Ljava/net/URL;
    :cond_4
    if-eqz v3, :cond_5

    .line 1239
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move-object v7, v8

    .end local v8    # "text":Ljava/net/URL;
    .restart local v7    # "text":Ljava/net/URL;
    goto :goto_4

    .line 1240
    .end local v7    # "text":Ljava/net/URL;
    .restart local v8    # "text":Ljava/net/URL;
    :catch_6
    move-exception v1

    .line 1241
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    move-object v7, v8

    .end local v8    # "text":Ljava/net/URL;
    .restart local v7    # "text":Ljava/net/URL;
    goto :goto_4

    .line 1236
    .end local v0    # "bText":[B
    .end local v5    # "readSize":I
    .end local v7    # "text":Ljava/net/URL;
    .restart local v8    # "text":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "text":Ljava/net/URL;
    .restart local v7    # "text":Ljava/net/URL;
    goto :goto_6

    .line 1234
    .end local v7    # "text":Ljava/net/URL;
    .restart local v8    # "text":Ljava/net/URL;
    :catch_7
    move-exception v1

    move-object v7, v8

    .end local v8    # "text":Ljava/net/URL;
    .restart local v7    # "text":Ljava/net/URL;
    goto :goto_5

    .line 1232
    .end local v7    # "text":Ljava/net/URL;
    .restart local v8    # "text":Ljava/net/URL;
    :catch_8
    move-exception v1

    move-object v7, v8

    .end local v8    # "text":Ljava/net/URL;
    .restart local v7    # "text":Ljava/net/URL;
    goto :goto_3

    .line 1224
    .end local v7    # "text":Ljava/net/URL;
    .restart local v0    # "bText":[B
    .restart local v2    # "gpoint":Ljava/lang/String;
    .restart local v5    # "readSize":I
    .restart local v6    # "response":Ljava/lang/String;
    .restart local v8    # "text":Ljava/net/URL;
    :catch_9
    move-exception v10

    goto :goto_0
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 1011
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currencyName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pointTotal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
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

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1019
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1026
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTapPoints error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v0, "Unable to retrieve tap points from server."

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->displayText:Ljava/lang/String;

    .line 1032
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const-string v1, "Modified by L.D.B."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v12, 0x7f08001a

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/gamevil/nexus2/NexusGLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v5, v12}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->setVerionView(Landroid/widget/TextView;)V

    .line 211
    const-class v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### getApplicationContext : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ####"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v10}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "4f7b5748-4760-43e6-a91c-46fb90cde2c2"

    const-string v7, "7Cq3cvW6bbHNkvF7LK1C"

    invoke-static {v5, v6, v7}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    .line 227
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    const-string v6, "4f7b5748-4760-43e6-a91c-46fb90cde2c2"

    invoke-virtual {v5, v6}, Lcom/tapjoy/TapjoyConnect;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/TapjoyConnect;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 231
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/TapjoyConnect;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 254
    const/16 v5, 0x190

    sput v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->gameScreenWidth:I

    .line 255
    const/16 v5, 0xf0

    sput v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->gameScreenHeight:I

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->version:Ljava/lang/String;

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "v"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v5, v12}, Lcom/gamevil/nexus2/NexusGLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 270
    .local v4, "txt":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    sget-object v5, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual {v5}, Lcom/gamevil/nexus2/NexusGLActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/gamevil/nexus2/ui/NexusSound;->initSounds(Landroid/content/Context;I)V

    .line 282
    const v5, 0x7f060002

    invoke-static {v10, v5}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 283
    const v5, 0x7f060003

    invoke-static {v8, v5}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 284
    const v5, 0x7f060004

    invoke-static {v9, v5}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 285
    const/4 v5, 0x4

    const v6, 0x7f060005

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 286
    const/4 v5, 0x5

    const v6, 0x7f060006

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 287
    const/4 v5, 0x6

    const v6, 0x7f060007

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 288
    const/4 v5, 0x7

    const v6, 0x7f060008

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 289
    const/16 v5, 0x8

    const v6, 0x7f060009

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 290
    const/16 v5, 0x9

    const v6, 0x7f06000a

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 291
    const/16 v5, 0xa

    const v6, 0x7f06000b

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 292
    const/16 v5, 0xb

    const v6, 0x7f06000c

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 293
    const/16 v5, 0xc

    const v6, 0x7f06000d

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 294
    const/16 v5, 0xd

    const v6, 0x7f06000e

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 295
    const/16 v5, 0xe

    const v6, 0x7f06000f

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 296
    const/16 v5, 0xf

    const v6, 0x7f060010

    invoke-static {v5, v6}, Lcom/gamevil/nexus2/ui/NexusSound;->addSFXSound(II)V

    .line 298
    const v5, 0x7f080016

    invoke-virtual {p0, v5}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/gamevil/zenonia3/ui/ZenoniaUIControllerView;

    sput-object v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    .line 299
    sget-object v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->uiViewControll:Lcom/gamevil/nexus2/ui/NeoUIControllerView;

    invoke-static {v5}, Lcom/gamevil/nexus2/Natives;->setUIListener(Lcom/gamevil/nexus2/Natives$UIListener;)V

    .line 300
    new-instance v5, Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    invoke-direct {v5, p0}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->updateChecker:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    .line 302
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<<<getPackageName<<<<--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<<<Natives.getLocaleID()<<<<<<<<<--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gamevil/nexus2/Natives;->getLocaleID()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->updateChecker:Lcom/gamevil/nexus2/xml/NexusXmlChecker;

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "http://appad.gamevil.com/preload/ad.php?area=en"

    aput-object v7, v6, v11

    const-string v7, "http://appad.gamevil.com/preload/ad_time.php?area=en"

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/gamevil/nexus2/xml/NexusXmlChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mBillingHandler:Landroid/os/Handler;

    .line 319
    new-instance v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;

    iget-object v6, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mBillingHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mNexus2PurchaseObserver:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;

    .line 320
    new-instance v5, Lcom/gamevil/zenonia3/global/multilingual/BillingService;

    invoke-direct {v5}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;-><init>()V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/multilingual/BillingService;

    .line 321
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/multilingual/BillingService;

    invoke-virtual {v5, p0}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->setContext(Landroid/content/Context;)V

    .line 323
    new-instance v5, Lcom/gamevil/zenonia3/global/multilingual/PurchaseDatabase;

    invoke-direct {v5, p0}, Lcom/gamevil/zenonia3/global/multilingual/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mPurchaseDatabase:Lcom/gamevil/zenonia3/global/multilingual/PurchaseDatabase;

    .line 326
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mNexus2PurchaseObserver:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$Nexus2PurchaseObserver;

    invoke-static {v5}, Lcom/gamevil/zenonia3/global/multilingual/ResponseHandler;->register(Lcom/gamevil/zenonia3/global/multilingual/PurchaseObserver;)V

    .line 328
    iget-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/multilingual/BillingService;

    invoke-virtual {v5}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->checkBillingSupported()Z

    move-result v5

    if-nez v5, :cond_0

    .line 330
    invoke-virtual {p0, v10}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showDialog(I)V

    .line 334
    :cond_0
    const v5, 0x7f080058

    invoke-virtual {p0, v5}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->adLinearLayout:Landroid/widget/LinearLayout;

    .line 341
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/TapjoyConnect;->getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 350
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;)V

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    .line 358
    new-instance v5, Lcom/android/vending/licensing/LicenseChecker;

    .line 360
    new-instance v6, Lcom/android/vending/licensing/ServerManagedPolicy;

    new-instance v7, Lcom/android/vending/licensing/AESObfuscator;

    sget-object v8, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->SALT:[B

    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v0}, Lcom/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, p0, v7}, Lcom/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V

    .line 361
    const-string v7, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCJj/DV+7t23GQesWEZNc7wqKYCcibr5hgVfUipJqxJD+woy0Kco2Zy9ADiOydUODqrKRu36ajCtN1NmVRTGBdC4ZXi71JSs69T2hiLFhKRInrh3mfuhQ76IBq6T/39jfaW5M096AAYZIck7mqs3KvTaRYG7aYlz7pjrWGkqCs6cQIDAQAB"

    invoke-direct {v5, p0, v6, v7}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 358
    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 367
    const-string v5, "# License #"

    const-string v6, "## no license Check ##"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 380
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x1e0

    if-gt v5, v6, :cond_1

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x140

    if-gt v5, v6, :cond_1

    .line 382
    const-string v5, "Note:\nIn-Game graphics have not been optimized for your device\'s resolution.\nSome features may appear blurry."

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 383
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v5, 0x31

    const/16 v6, 0x96

    invoke-virtual {v3, v5, v11, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 384
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 387
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void

    .line 264
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "txt":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "1.0.0"

    iput-object v5, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->version:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 921
    packed-switch p1, :pswitch_data_0

    .line 954
    :goto_0
    return-object v1

    .line 924
    :pswitch_0
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 926
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    .line 927
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    const-string v2, "Please wait while loading..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 928
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 929
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 953
    :cond_0
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 954
    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->dialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 934
    :pswitch_1
    const v1, 0x7f070008

    const v2, 0x7f070009

    invoke-direct {p0, v1, v2}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->createDialog(II)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 936
    :pswitch_2
    const v1, 0x7f070006

    const v2, 0x7f070007

    invoke-direct {p0, v1, v2}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->createDialog(II)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 939
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 940
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07000e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 941
    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 942
    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 943
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 944
    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 946
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 921
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
    .line 170
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 190
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 392
    const-class v2, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

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

    .line 395
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    check-cast v0, Landroid/media/AudioManager;

    .line 397
    .local v0, "audio":Landroid/media/AudioManager;
    sparse-switch p1, :sswitch_data_0

    .line 505
    invoke-super {p0, p1, p2}, Lcom/gamevil/nexus2/NexusGLActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 400
    :sswitch_0
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, v6, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 405
    :sswitch_1
    if-eqz v0, :cond_0

    .line 407
    const/4 v2, -0x1

    .line 406
    invoke-virtual {v0, v6, v2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 411
    :sswitch_2
    sget-object v2, Lcom/gamevil/nexus2/NexusGLRenderer;->m_renderer:Lcom/gamevil/nexus2/NexusGLRenderer;

    const/4 v3, 0x2

    const/4 v4, -0x8

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/gamevil/nexus2/NexusGLRenderer;->setTouchEvent(IIII)V

    .line 414
    sget v2, Lcom/gamevil/nexus2/Natives;->language:I

    sget v3, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->LANGUAGE_TYPE_KOR:I

    if-ne v2, v3, :cond_1

    .line 416
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    const-string v3, "\uac8c\uc784\uc885\ub8cc"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 418
    const-string v3, "\uac8c\uc784\uc744 \uc885\ub8cc\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 419
    const-string v3, "\uc608"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$2;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$2;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 427
    const-string v3, "\uc544\ub2c8\uc624"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$3;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$3;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 436
    :cond_1
    sget v2, Lcom/gamevil/nexus2/Natives;->language:I

    sget v3, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->LANGUAGE_TYPE_JPN:I

    if-ne v2, v3, :cond_2

    .line 438
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    const-string v3, "\u30b2\u30fc\u30e0\u7d42\u4e86"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 440
    const-string v3, "\u30b2\u30fc\u30e0\u3092\u7d42\u4e86\u3057\u307e\u3059\u304b\uff1f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 441
    const-string v3, "\u306f\u3044"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$4;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$4;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 449
    const-string v3, "\u3044\u3044\u3048"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$5;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$5;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 456
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 458
    :cond_2
    sget v2, Lcom/gamevil/nexus2/Natives;->language:I

    sget v3, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->LANGUAGE_TYPE_CHI:I

    if-ne v2, v3, :cond_3

    .line 460
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    const-string v3, "\u6e38\u620f\u7ed3\u675f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 462
    const-string v3, "\u4f60\u613f\u610f\u7ed3\u675f\u8fd9\u573a\u6e38\u620f\u5417 "

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 463
    const-string v3, "\u662f"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$6;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$6;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 471
    const-string v3, "\u4e0d"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$7;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$7;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 482
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    const-string v3, "Exit"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 484
    const-string v3, "Are you sure?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 485
    const-string v3, "Yes"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$8;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$8;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 492
    const-string v3, "No"

    new-instance v4, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$9;

    invoke-direct {v4, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$9;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 498
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 397
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
    .line 134
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->glSurfaceview:Lcom/gamevil/nexus2/NexusGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamevil/nexus2/NexusGLSurfaceView;->onPause()V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onResume()V

    .line 143
    invoke-static {}, Lcom/gamevil/nexus2/Natives;->getTapjoyReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getTapjoyGpoint()Z

    .line 151
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onStart()V

    .line 124
    const-string v0, "7SUBF8CFC42GNY891IFF"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/gamevil/nexus2/NexusGLActivity;->onStop()V

    .line 163
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public openTapjoyOffer()V
    .locals 1

    .prologue
    .line 974
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 977
    return-void
.end method

.method public requestPurchaceIAP()V
    .locals 3

    .prologue
    .line 871
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showDialog(I)V

    .line 872
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->pID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPayloadContents : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mPayloadContents:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mBillingService:Lcom/gamevil/zenonia3/global/multilingual/BillingService;

    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->pID:Ljava/lang/String;

    iget-object v2, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->mPayloadContents:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gamevil/zenonia3/global/multilingual/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showDialog(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public saveLicensedStatus()V
    .locals 4

    .prologue
    .line 719
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 720
    .local v1, "settingsLicense":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 721
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "licensed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 723
    return-void
.end method

.method public showNotLicensedMessage(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;)V
    .locals 7
    .param p1, "result"    # Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    .prologue
    .line 614
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 615
    .local v1, "alert":Landroid/app/AlertDialog$Builder;
    const-string v4, "Unauthorized User"

    .line 616
    .local v4, "title":Ljava/lang/String;
    const-string v3, "The application will be terminated.Please contact us for further details at contact@gamevil.com."

    .line 618
    .local v3, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 619
    .local v2, "bOnlyExitButton":Z
    const-string v0, "OK"

    .line 620
    .local v0, "ExitButtonStr":Ljava/lang/String;
    invoke-static {}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->$SWITCH_TABLE$com$gamevil$zenonia3$global$multilingual$Zenonia3Launcher$License_Result()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 647
    const-string v4, "Unauthorized User"

    .line 648
    const-string v3, "The application will be terminated.Please contact us for further details at contact@gamevil.com."

    .line 649
    const/4 v2, 0x0

    .line 650
    const-string v0, "EXIT"

    .line 655
    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 656
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 657
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 658
    if-nez v2, :cond_0

    .line 659
    const-string v5, "BUY"

    .line 660
    new-instance v6, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$11;

    invoke-direct {v6, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$11;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    .line 659
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    :cond_0
    new-instance v5, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$12;

    invoke-direct {v5, p0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$12;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    .line 674
    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 683
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 684
    return-void

    .line 623
    :pswitch_0
    const-string v4, "Invalid Package"

    .line 624
    const-string v3, "The application requested a license check for an application not installed. The application will now terminate."

    .line 625
    const/4 v2, 0x1

    .line 626
    const-string v0, "OK"

    .line 627
    goto :goto_0

    .line 629
    :pswitch_1
    const-string v4, "Non Matching UID"

    .line 630
    const-string v3, "The application requested a license check for a package whose UID does not match of the requesting application. The application will now terminate."

    .line 631
    const/4 v2, 0x1

    .line 632
    const-string v0, "OK"

    .line 633
    goto :goto_0

    .line 635
    :pswitch_2
    const-string v4, "Unrecognized Application"

    .line 636
    const-string v3, "The application was not recognized by Android Market. The application will now terminate."

    .line 637
    const/4 v2, 0x1

    .line 638
    const-string v0, "OK"

    .line 639
    goto :goto_0

    .line 641
    :pswitch_3
    const-string v4, "Network Error"

    .line 642
    const-string v3, "The application failed to reach the licensing server, possibly due to network availability problems. Check your network settings and try again."

    .line 643
    const/4 v2, 0x1

    .line 644
    const-string v0, "OK"

    .line 645
    goto :goto_0

    .line 620
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
    .line 1265
    return-void
.end method

.method public videoError(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 1259
    return-void
.end method

.method public videoReady()V
    .locals 0

    .prologue
    .line 1253
    return-void
.end method
