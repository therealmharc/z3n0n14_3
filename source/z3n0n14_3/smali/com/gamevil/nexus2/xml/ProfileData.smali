.class public Lcom/gamevil/nexus2/xml/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"


# static fields
.field public static final CARRIER_ANDROID_GLOBAL:S = 0x7s

.field public static final CARRIER_ANDROID_KR:S = 0x5s

.field public static final CARRIER_IOS_GLOBAL:S = 0x6s

.field public static final CARRIER_IOS_KR:S = 0x4s

.field public static final CARRIER_KT:S = 0x2s

.field public static final CARRIER_LGU:S = 0x3s

.field public static final CARRIER_SKT:S = 0x1s

.field public static final SALE_CODE_ANDROID_FREE:B = 0xet

.field public static final SALE_CODE_ANDROID_PLUS:B = 0xat

.field private static carrierId:S

.field private static deviceToken:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static flurryApiKey:Ljava/lang/String;

.field private static gameID:I

.field private static isProfileSent:Z

.field private static isUsingBase64:Z

.field private static ktAID:Ljava/lang/String;

.field private static ktCID:Ljava/lang/String;

.field private static lguARMID:Ljava/lang/String;

.field private static lguAppID:Ljava/lang/String;

.field private static mcid:Ljava/lang/String;

.field private static osVersion:Ljava/lang/String;

.field private static saleCode:B

.field private static sktAID:Ljava/lang/String;

.field private static trialCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    sput v0, Lcom/gamevil/nexus2/xml/ProfileData;->gameID:I

    .line 49
    sput-byte v0, Lcom/gamevil/nexus2/xml/ProfileData;->saleCode:B

    .line 50
    sput-byte v0, Lcom/gamevil/nexus2/xml/ProfileData;->trialCode:B

    .line 51
    const-string v0, "NONE"

    sput-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->mcid:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AD OS_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->osVersion:Ljava/lang/String;

    .line 53
    const-string v0, "AD Default"

    sput-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->deviceType:Ljava/lang/String;

    .line 54
    const-string v0, "NONE"

    sput-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->deviceToken:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarrierId()S
    .locals 1

    .prologue
    .line 198
    sget-short v0, Lcom/gamevil/nexus2/xml/ProfileData;->carrierId:S

    return v0
.end method

.method public static getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public static getFlurryApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->flurryApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getGameID()I
    .locals 3

    .prologue
    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|get gameID\t\t "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gamevil/nexus2/xml/ProfileData;->gameID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget v0, Lcom/gamevil/nexus2/xml/ProfileData;->gameID:I

    return v0
.end method

.method public static getKtAID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->ktAID:Ljava/lang/String;

    return-object v0
.end method

.method public static getKtCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->ktCID:Ljava/lang/String;

    return-object v0
.end method

.method public static getLguARMID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->lguARMID:Ljava/lang/String;

    return-object v0
.end method

.method public static getLguAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->lguAppID:Ljava/lang/String;

    return-object v0
.end method

.method public static getMcid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->mcid:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getSaleCode()B
    .locals 1

    .prologue
    .line 119
    sget-byte v0, Lcom/gamevil/nexus2/xml/ProfileData;->saleCode:B

    return v0
.end method

.method public static getSktAID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileData;->sktAID:Ljava/lang/String;

    return-object v0
.end method

.method public static getTrialCode()B
    .locals 1

    .prologue
    .line 125
    sget-byte v0, Lcom/gamevil/nexus2/xml/ProfileData;->trialCode:B

    return v0
.end method

.method public static isProfileSent()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/gamevil/nexus2/xml/ProfileData;->isProfileSent:Z

    return v0
.end method

.method public static isTermsAccepted(Landroid/content/Context;)I
    .locals 3
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v2, "MyPrefsFile"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "accept_terms"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isUsingNetworkEncryption()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/gamevil/nexus2/xml/ProfileData;->isUsingBase64:Z

    return v0
.end method

.method public static setAcceptTerms(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "_context"    # Landroid/content/Context;
    .param p1, "_accepted"    # Z

    .prologue
    .line 91
    const-string v2, "MyPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "accept_terms"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public static setCarrierId(S)V
    .locals 0
    .param p0, "_carrierId"    # S

    .prologue
    .line 202
    sput-short p0, Lcom/gamevil/nexus2/xml/ProfileData;->carrierId:S

    .line 203
    return-void
.end method

.method public static setDeviceToken(Ljava/lang/String;)V
    .locals 0
    .param p0, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 152
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->deviceToken:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public static setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p0, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 146
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->deviceType:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static setFlurryApiKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "_apiKey"    # Ljava/lang/String;

    .prologue
    .line 190
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->flurryApiKey:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public static setGameID(I)V
    .locals 3
    .param p0, "gameID"    # I

    .prologue
    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|set gameID\t\t "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sput p0, Lcom/gamevil/nexus2/xml/ProfileData;->gameID:I

    .line 117
    return-void
.end method

.method public static setKtAID(Ljava/lang/String;)V
    .locals 0
    .param p0, "_ktAID"    # Ljava/lang/String;

    .prologue
    .line 173
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->ktAID:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public static setKtCID(Ljava/lang/String;)V
    .locals 0
    .param p0, "_ktCID"    # Ljava/lang/String;

    .prologue
    .line 167
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->ktCID:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static setLguARMID(Ljava/lang/String;)V
    .locals 0
    .param p0, "_lguARMID"    # Ljava/lang/String;

    .prologue
    .line 179
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->lguARMID:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public static setLguAppID(Ljava/lang/String;)V
    .locals 0
    .param p0, "_lguAppID"    # Ljava/lang/String;

    .prologue
    .line 185
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->lguAppID:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public static setMcid(Ljava/lang/String;)V
    .locals 0
    .param p0, "mcid"    # Ljava/lang/String;

    .prologue
    .line 134
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->mcid:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 140
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->osVersion:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static setProfileSent(Z)V
    .locals 0
    .param p0, "_isProfileSent"    # Z

    .prologue
    .line 76
    sput-boolean p0, Lcom/gamevil/nexus2/xml/ProfileData;->isProfileSent:Z

    .line 77
    return-void
.end method

.method public static setSaleCode(B)V
    .locals 0
    .param p0, "saleCode"    # B

    .prologue
    .line 122
    sput-byte p0, Lcom/gamevil/nexus2/xml/ProfileData;->saleCode:B

    .line 123
    return-void
.end method

.method public static setSktAID(Ljava/lang/String;)V
    .locals 0
    .param p0, "_sktAID"    # Ljava/lang/String;

    .prologue
    .line 161
    sput-object p0, Lcom/gamevil/nexus2/xml/ProfileData;->sktAID:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public static setTrialCode(B)V
    .locals 0
    .param p0, "trialCode"    # B

    .prologue
    .line 128
    sput-byte p0, Lcom/gamevil/nexus2/xml/ProfileData;->trialCode:B

    .line 129
    return-void
.end method

.method public static setUsingNetworkEncryption(Z)V
    .locals 0
    .param p0, "_useEncryption"    # Z

    .prologue
    .line 81
    sput-boolean p0, Lcom/gamevil/nexus2/xml/ProfileData;->isUsingBase64:Z

    .line 82
    return-void
.end method
