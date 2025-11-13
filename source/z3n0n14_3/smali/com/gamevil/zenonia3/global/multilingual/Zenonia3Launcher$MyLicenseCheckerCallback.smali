.class Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "Zenonia3Launcher.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$android$vending$licensing$LicenseCheckerCallback$ApplicationErrorCode:[I


# instance fields
.field final synthetic this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;


# direct methods
.method static synthetic $SWITCH_TABLE$com$android$vending$licensing$LicenseCheckerCallback$ApplicationErrorCode()[I
    .locals 3

    .prologue
    .line 547
    sget-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->$SWITCH_TABLE$com$android$vending$licensing$LicenseCheckerCallback$ApplicationErrorCode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->values()[Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->CHECK_IN_PROGRESS:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-virtual {v1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PACKAGE_NAME:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-virtual {v1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PUBLIC_KEY:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-virtual {v1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->MISSING_PERMISSION:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-virtual {v1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NETWORK_ERROR:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-virtual {v1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NON_MATCHING_UID:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-virtual {v1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NOT_MARKET_MANAGED:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    invoke-virtual {v1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->$SWITCH_TABLE$com$android$vending$licensing$LicenseCheckerCallback$ApplicationErrorCode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;-><init>(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->isLicenced:Z

    .line 560
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->saveLicensedStatus()V

    goto :goto_0
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-static {}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->$SWITCH_TABLE$com$android$vending$licensing$LicenseCheckerCallback$ApplicationErrorCode()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 603
    :pswitch_0
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NOT_LICENSED:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showNotLicensedMessage(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;)V

    goto :goto_0

    .line 591
    :pswitch_1
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_INVALID_PACKAGE_NAME:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showNotLicensedMessage(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;)V

    goto :goto_0

    .line 594
    :pswitch_2
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NON_MATCHING_UID:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showNotLicensedMessage(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;)V

    goto :goto_0

    .line 597
    :pswitch_3
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NOT_MARKET_MANAGED:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showNotLicensedMessage(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;)V

    goto :goto_0

    .line 600
    :pswitch_4
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NETWORK_ERROR:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showNotLicensedMessage(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;)V

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public dontAllow()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    invoke-virtual {v0}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$MyLicenseCheckerCallback;->this$0:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;

    sget-object v1, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;->RESULT_NOT_LICENSED:Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;

    invoke-virtual {v0, v1}, Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher;->showNotLicensedMessage(Lcom/gamevil/zenonia3/global/multilingual/Zenonia3Launcher$License_Result;)V

    goto :goto_0
.end method
