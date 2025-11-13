.class public Lcom/gamevil/nexus2/xml/ProfileSender;
.super Landroid/os/AsyncTask;
.source "ProfileSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;,
        Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACK_AUTH_FAIL:I = -0x3

.field private static final ACK_DB_ERROR:I = -0x2

.field private static final ACK_ERROR:I = -0x1

.field private static final ACK_OK:I = 0x1

.field private static final AU_CS_APP_AUTH_V8:I = 0x112

.field private static final AU_CS_SMS_AGREE:I = 0x200

.field private static final AU_SC_APP_AUTH_V8:I = 0x113

.field private static final AU_SC_SMS_AGREE:I = 0x201

.field public static final DEVICE_TOKEN:Ljava/lang/String; = "NONE"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "AD Default"

.field private static final ERROR_NET:I = -0x270f

.field private static final ERROR_NET_NOT_AVAILABLE:I = -0x63

.field private static final ERROR_NET_TIMEOUT:I = -0x3e7

.field public static final GAME_ID:I = 0x3752

.field public static final MCID:Ljava/lang/String; = "NONE"

.field public static final OS_VERSION:Ljava/lang/String;

.field private static final POS_ACK:I = 0x2

.field private static final POS_COMMAND:I = 0x0

.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field public static final SALE_CODE:B = 0xet

.field public static final SERVER_GNEX_PORT:I = 0x7e3d

.field public static final SERVER_GVM_PORT:I = 0x7e37

.field public static final SERVER_KTF_AP_PORT:I = 0x7e38

.field public static final SERVER_KTF_WIPI_PORT:I = 0x7e3b

.field public static final SERVER_LGT_WIPI_PORT:I = 0x7d10

.field public static final SERVER_MIDP_PORT:I = 0x7e39

.field public static final SERVER_SKT_NET_BATTLE_PORT:I = 0x7e3e

.field public static final SERVER_SKT_WIPI_PORT:I = 0x7d0e

.field public static final SERVER_SKVM_PORT:I = 0x7e36

.field private static final SIZE_OF_APP_VERSION:I = 0xa

.field private static final SIZE_OF_CERTIFICATION_CODE:I = 0x28

.field private static final SIZE_OF_DEVICE_TOKEN:I = 0x40

.field private static final SIZE_OF_DEVICE_TYPE:I = 0x14

.field private static final SIZE_OF_OS_VERSION:I = 0x14

.field private static final SIZE_OF_PHONE_ESN:I = 0x10

.field private static final SIZE_OF_PHONE_MODEL:I = 0x10

.field private static final SIZE_OF_PHONE_NUMBER:I = 0x40

.field private static final SIZE_OF_SERVER_ADDR:I = 0x10

.field private static final SIZE_OF_SKT_MCID:I = 0xc

.field public static final STR_PROFILED:Ljava/lang/String; = "profiled"

.field public static final TRIAL_CODE:B = 0xbt

.field public static final TYPE_AUTHENTICATION:Ljava/lang/String; = "0"

.field public static final TYPE_AUTHENTICATION_BACKGROUND:Ljava/lang/String; = "2"

.field public static final TYPE_SMS_AGREE:Ljava/lang/String; = "1"

.field private static buffer:[B


# instance fields
.field public GID:I

.field private ServerIP:Ljava/lang/String;

.field private ServerPort:I

.field public accept_terms:B

.field private ack_value:I

.field private dataInputStream:Ljava/io/DataInputStream;

.field private dataOutputStream:Ljava/io/DataOutputStream;

.field public device_os_version:Ljava/lang/String;

.field public device_token:Ljava/lang/String;

.field public device_type:Ljava/lang/String;

.field errorCode:I

.field private inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

.field private isSms:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

.field public phoneModel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field private profileState:I

.field public saleCode:B

.field public sktMCID:Ljava/lang/String;

.field private socketConnection:Ljava/net/Socket;

.field public totalFileMem:I

.field public totalMem:I

.field public trial_code:B

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AD OS_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamevil/nexus2/xml/ProfileSender;->OS_VERSION:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 152
    const-string v0, "218.145.70.36"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    .line 162
    const/16 v0, 0x7d0e

    iput v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    .line 168
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    .line 169
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    .line 170
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    .line 171
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->GID:I

    .line 172
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    .line 173
    iput-byte v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    .line 174
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    .line 175
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    .line 176
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    .line 177
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    .line 178
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    .line 179
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    .line 180
    iput-byte v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$2(Lcom/gamevil/nexus2/xml/ProfileSender;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isNetAvailable()I
    .locals 5

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "_reachable":Z
    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 443
    .local v1, "conn_manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 444
    .local v2, "network_info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 449
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private isProfileSaved()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1171
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    const-string v2, "MyPrefsFile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1173
    .local v0, "settingsLicense":Landroid/content/SharedPreferences;
    const-string v1, "profiled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private readPacket()Z
    .locals 14

    .prologue
    .line 866
    const/4 v10, 0x0

    .line 872
    .local v10, "result":Z
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-eqz v11, :cond_4

    .line 874
    const/4 v5, 0x0

    .line 875
    .local v5, "len":I
    const/16 v11, 0x400

    new-array v9, v11, [B

    .line 878
    .local v9, "readTemp":[B
    const/4 v0, 0x2

    .line 880
    .local v0, "HEADER_LENGTH":I
    const/4 v8, 0x0

    .line 881
    .local v8, "length":I
    add-int/lit8 v5, v5, 0x2

    .line 902
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v11, v9, v12, v13}, Ljava/io/DataInputStream;->read([BII)I

    .line 904
    const/4 v11, 0x0

    aget-byte v6, v9, v11

    .line 905
    .local v6, "len1":I
    const/4 v11, 0x1

    aget-byte v7, v9, v11

    .line 906
    .local v7, "len2":I
    and-int/lit16 v11, v6, 0xff

    shl-int/lit8 v11, v11, 0x0

    and-int/lit16 v12, v7, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int v8, v11, v12

    .line 908
    sub-int v11, v8, v0

    new-array v4, v11, [B

    .line 910
    .local v4, "inputData":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v4

    if-lt v3, v11, :cond_1

    .line 914
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    const/4 v12, 0x0

    sub-int v13, v8, v0

    invoke-virtual {v11, v4, v12, v13}, Ljava/io/DataInputStream;->read([BII)I

    .line 915
    new-instance v11, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    invoke-direct {v11, p0, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;[B)V

    iput-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    .line 917
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readShort(I)S

    move-result v1

    .line 918
    .local v1, "command":I
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readByte(I)B

    move-result v11

    iput v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    .line 919
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readByte(I)B

    move-result v11

    iput v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->isSms:I

    .line 930
    const/16 v11, 0x113

    if-ne v1, v11, :cond_3

    .line 932
    iget v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v11, :cond_2

    .line 939
    const/4 v10, 0x1

    .line 971
    .end local v0    # "HEADER_LENGTH":I
    .end local v1    # "command":I
    .end local v3    # "i":I
    .end local v4    # "inputData":[B
    .end local v5    # "len":I
    .end local v6    # "len1":I
    .end local v7    # "len2":I
    .end local v8    # "length":I
    .end local v9    # "readTemp":[B
    :cond_0
    :goto_2
    return v10

    .line 911
    .restart local v0    # "HEADER_LENGTH":I
    .restart local v3    # "i":I
    .restart local v4    # "inputData":[B
    .restart local v5    # "len":I
    .restart local v6    # "len1":I
    .restart local v7    # "len2":I
    .restart local v8    # "length":I
    .restart local v9    # "readTemp":[B
    :cond_1
    const/4 v11, 0x0

    aput-byte v11, v4, v3

    .line 910
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 943
    .restart local v1    # "command":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 947
    :cond_3
    const/16 v11, 0x201

    if-ne v1, v11, :cond_0

    .line 953
    const/4 v10, 0x1

    goto :goto_2

    .line 959
    .end local v0    # "HEADER_LENGTH":I
    .end local v1    # "command":I
    .end local v3    # "i":I
    .end local v4    # "inputData":[B
    .end local v5    # "len":I
    .end local v6    # "len1":I
    .end local v7    # "len2":I
    .end local v8    # "length":I
    .end local v9    # "readTemp":[B
    :cond_4
    const-wide/16 v11, 0xc8

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 963
    :catch_0
    move-exception v2

    .line 964
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 966
    const/16 v11, -0x270f

    iput v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 967
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto :goto_2
.end method

.method private saveProfileStatus()V
    .locals 5

    .prologue
    .line 1009
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1010
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1011
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "profiled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1012
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1014
    return-void
.end method


# virtual methods
.method public closeTCPConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 983
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    .line 986
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 987
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 989
    :cond_1
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 991
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :cond_2
    const/4 v1, 0x1

    .line 1002
    :goto_0
    return v1

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 997
    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 998
    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 999
    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 1000
    const/16 v1, -0x270f

    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 1001
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    .line 1002
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/ProfileSender;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/16 v4, -0x63

    const/4 v3, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showLoadingDialog()V

    .line 291
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->isNetAvailable()I

    move-result v0

    .line 298
    .local v0, "netType":I
    aget-object v1, p1, v3

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideCertifiDialog()V

    .line 301
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->isProfileSaved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    if-ltz v0, :cond_4

    .line 316
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->openTCPConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iput v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 319
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutProfile()Z

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 367
    :cond_1
    :goto_0
    aget-object v1, p1, v3

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideLoadingDialog()V

    .line 370
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideCertifiDialog()V

    .line 371
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->isProfileSaved()Z

    move-result v1

    if-nez v1, :cond_3

    .line 373
    if-ltz v0, :cond_8

    .line 386
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->openTCPConnectionBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    const/4 v1, 0x2

    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 389
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutProfileBackground()Z

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 405
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 326
    :cond_4
    iput v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 327
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto :goto_0

    .line 331
    :cond_5
    aget-object v1, p1, v3

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideSmsDialog()V

    .line 340
    if-ltz v0, :cond_7

    .line 352
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->openTCPConnection()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    const/4 v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 355
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutSmsAgree()Z

    .line 357
    :cond_6
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    goto :goto_0

    .line 362
    :cond_7
    iput v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 363
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto :goto_0

    .line 396
    :cond_8
    iput v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 397
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto :goto_1
.end method

.method public flush()V
    .locals 6

    .prologue
    .line 795
    :try_start_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->toByteArray()[B

    move-result-object v2

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 796
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-virtual {v2}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->reset()V

    .line 835
    sget-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v2, v2

    add-int/lit8 v1, v2, 0x2

    .line 836
    .local v1, "totalLength":I
    new-array v0, v1, [B

    .line 838
    .local v0, "outputData":[B
    const/4 v2, 0x0

    ushr-int/lit8 v3, v1, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 839
    const/4 v2, 0x1

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 841
    sget-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    sget-object v5, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v5, v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 850
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 852
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 853
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v0    # "outputData":[B
    .end local v1    # "totalLength":I
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hideCertifiDialog()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$4;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$4;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1058
    return-void
.end method

.method public hideCloseDialog()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$6;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$6;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1082
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$2;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$2;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1033
    return-void
.end method

.method public hideSmsDialog()V
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$8;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$8;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1106
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamevil/nexus2/xml/ProfileSender;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideLoadingDialog()V

    .line 414
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    if-nez v0, :cond_2

    .line 416
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v0, :cond_0

    .line 418
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->isSms:I

    if-nez v0, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showSmsDialog()V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showThankyou()V

    goto :goto_0

    .line 429
    :cond_2
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 431
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showThankyou()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 409
    return-void
.end method

.method public openTCPConnection()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 491
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v2

    .line 501
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 502
    .local v1, "serverAddr":Ljava/net/InetAddress;
    new-instance v4, Ljava/net/Socket;

    iget v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    invoke-direct {v4, v1, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 503
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    const v5, 0xc350

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 504
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    move v2, v3

    .line 526
    goto :goto_0

    .line 508
    .end local v1    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 510
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 511
    const/16 v2, -0x3e7

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 512
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    move v2, v3

    .line 514
    goto :goto_0

    .line 515
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 518
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 519
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    move v2, v3

    .line 521
    goto :goto_0
.end method

.method public openTCPConnectionBackground()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 680
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v2

    .line 690
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 691
    .local v1, "serverAddr":Ljava/net/InetAddress;
    new-instance v4, Ljava/net/Socket;

    iget v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    invoke-direct {v4, v1, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 692
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    const v5, 0xc350

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 693
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    move v2, v3

    .line 709
    goto :goto_0

    .line 697
    .end local v1    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 699
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    move v2, v3

    .line 700
    goto :goto_0

    .line 701
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 703
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    move v2, v3

    .line 704
    goto :goto_0
.end method

.method public sendPutProfile()Z
    .locals 5

    .prologue
    .line 531
    const/4 v1, 0x0

    .line 534
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 541
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->initCommand(I)V

    .line 542
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 543
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 544
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 545
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->GID:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 546
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 547
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 548
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 549
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 550
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 551
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 552
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 553
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 555
    :cond_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 577
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 581
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->flush()V

    .line 587
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readPacket()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->saveProfileStatus()V

    .line 589
    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 603
    :goto_1
    return v2

    .line 594
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 595
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 600
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    .line 601
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendPutProfileBackground()Z
    .locals 5

    .prologue
    .line 714
    const/4 v1, 0x0

    .line 717
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 724
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->initCommand(I)V

    .line 725
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 726
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 727
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 728
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->GID:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 729
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 730
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 731
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 732
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 733
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 734
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 735
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 736
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 760
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 764
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->flush()V

    .line 770
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readPacket()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->saveProfileStatus()V

    .line 772
    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 786
    :goto_1
    return v2

    .line 777
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 778
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 782
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 783
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    .line 784
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendPutSmsAgree()Z
    .locals 5

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 611
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 618
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->initCommand(I)V

    .line 619
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 620
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->GID:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 621
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 625
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->flush()V

    .line 631
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readPacket()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->saveProfileStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 644
    :goto_0
    return v2

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 640
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 641
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    .line 642
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setProfileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_phoneNum"    # Ljava/lang/String;
    .param p3, "_model"    # Ljava/lang/String;
    .param p4, "_version"    # Ljava/lang/String;
    .param p5, "_accept_terms"    # B

    .prologue
    const/4 v1, 0x0

    .line 258
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    .line 259
    iput-object p2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    .line 261
    iput-object p4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    .line 262
    const/16 v0, 0x3752

    iput v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->GID:I

    .line 263
    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    .line 264
    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    .line 265
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    .line 266
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    .line 267
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/gamevil/nexus2/xml/ProfileSender;->OS_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    .line 269
    const-string v0, "AD Default"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    .line 270
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    .line 271
    iput-byte p5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    .line 280
    return-void
.end method

.method public showCertifiDialog()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$3;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$3;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1045
    return-void
.end method

.method public showCloseDialog()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$5;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$5;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1070
    return-void
.end method

.method public showConfirmDialog()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$9;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$9;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1120
    return-void
.end method

.method public showLoadingDialog()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$1;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$1;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1023
    return-void
.end method

.method public showNetError1()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$10;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$10;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1152
    return-void
.end method

.method public showSmsDialog()V
    .locals 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$7;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$7;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1094
    return-void
.end method

.method public showThankyou()V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$11;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$11;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1165
    return-void
.end method
