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

.field private static final AU_CS_GET_EXCEPTION_MESSAGE:I = 0x500

.field private static final AU_CS_SMS_AGREE:I = 0x200

.field private static final AU_SC_APP_AUTH_V8:I = 0x113

.field private static final AU_SC_GET_EXCEPTION_MESSAGE:I = 0x501

.field private static final AU_SC_SMS_AGREE:I = 0x201

.field private static final CS_REGISTER_AD:I = 0x1b5c

.field public static final ENCRYPT_SERVER_GNEX_PORT:I = 0x7e3d

.field public static final ENCRYPT_SERVER_GVM_PORT:I = 0x7e37

.field public static final ENCRYPT_SERVER_KTF_AP_PORT:I = 0x7e38

.field public static final ENCRYPT_SERVER_KTF_WIPI_PORT:I = 0x7e3b

.field public static final ENCRYPT_SERVER_LGT_WIPI_PORT:I = 0x7e3c

.field public static final ENCRYPT_SERVER_MIDP_PORT:I = 0x7e39

.field public static final ENCRYPT_SERVER_SKT_NET_BATTLE_PORT:I = 0x7e3e

.field public static final ENCRYPT_SERVER_SKT_WIPI_PORT:I = 0x7e3a

.field public static final ENCRYPT_SERVER_SKVM_PORT:I = 0x7e36

.field private static final ERROR_NET:I = -0x270f

.field private static final ERROR_NET_NOT_AVAILABLE:I = -0x63

.field private static final ERROR_NET_TIMEOUT:I = -0x3e7

.field private static final POS_ACK:I = 0x2

.field private static final POS_COMMAND:I = 0x0

.field private static final SC_REGISTER_AD:I = 0x1b5d

.field public static final SERVER_AD_KR_PORT:I = 0x7d0b

.field public static final SERVER_ANDROID_PORT:I = 0x3e88

.field public static final SERVER_GNEX_PORT:I = 0x7d11

.field public static final SERVER_KTF_AP_PORT:I = 0x7d0c

.field public static final SERVER_KTF_WIPI_PORT:I = 0x7d0f

.field public static final SERVER_LGT_WIPI_PORT:I = 0x7d10

.field public static final SERVER_MIDP_PORT:I = 0x7d0d

.field public static final SERVER_SKT_NET_BATTLE_PORT:I = 0x7d12

.field public static final SERVER_SKT_WIPI_PORT:I = 0x7d0e

.field public static final SERVER_SKVM_PORT:I = 0x7d0a

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

.field public static final TYPE_AUTHENTICATION:Ljava/lang/String; = "0"

.field public static final TYPE_AUTHENTICATION_BACKGROUND:Ljava/lang/String; = "2"

.field public static final TYPE_C2DM_REGISTER_BACKGROUND:Ljava/lang/String; = "3"

.field public static final TYPE_SMS_AGREE:Ljava/lang/String; = "1"

.field private static buffer:[B


# instance fields
.field private C2dmServerIP:Ljava/lang/String;

.field private C2dmServerPort:I

.field private ServerIP:Ljava/lang/String;

.field private ServerPort:I

.field private accept_terms:B

.field private ack_value:I

.field private dataInputStream:Ljava/io/DataInputStream;

.field private dataOutputStream:Ljava/io/DataOutputStream;

.field deviceId:Ljava/lang/String;

.field private device_os_version:Ljava/lang/String;

.field private device_token:Ljava/lang/String;

.field private device_type:Ljava/lang/String;

.field errorCode:I

.field private exceptoinMessage:Ljava/lang/String;

.field private force_kill:B

.field private gid:I

.field private inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

.field private isSms:I

.field locale:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field macAddress:Ljava/lang/String;

.field private outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

.field private phoneModel:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private profileState:I

.field registrationId:Ljava/lang/String;

.field private saleCode:B

.field private sktMCID:Ljava/lang/String;

.field private socketConnection:Ljava/net/Socket;

.field private totalFileMem:I

.field private totalMem:I

.field private trial_code:B

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    const-string v0, "218.146.3.18"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    .line 98
    const-string v0, "218.146.3.185"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->C2dmServerIP:Ljava/lang/String;

    .line 102
    const v0, 0x82a4

    iput v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->C2dmServerPort:I

    .line 152
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    .line 153
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    .line 154
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    .line 155
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    .line 156
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    .line 157
    iput-byte v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    .line 158
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    .line 159
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    .line 160
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    .line 161
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    .line 162
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    .line 163
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    .line 164
    iput-byte v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    .line 169
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->deviceId:Ljava/lang/String;

    .line 170
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->macAddress:Ljava/lang/String;

    .line 171
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    .line 172
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->locale:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$2(Lcom/gamevil/nexus2/xml/ProfileSender;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isNetAvailable()I
    .locals 5

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "_reachable":Z
    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 581
    .local v1, "conn_manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 582
    .local v2, "network_info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    const/4 v0, 0x1

    .line 587
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
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1436
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    const-string v5, "MyPrefsFile"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1439
    .local v1, "settingsLicense":Landroid/content/SharedPreferences;
    const-string v4, "profilVersion"

    const-string v5, "0.0.0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "_profiledVersion":Ljava/lang/String;
    const-string v4, "profiled"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private readC2dmPacket()Z
    .locals 9

    .prologue
    .line 1513
    const/4 v5, 0x0

    .line 1516
    .local v5, "result":Z
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-eqz v6, :cond_3

    .line 1517
    const/4 v4, 0x0

    .line 1518
    .local v4, "len":I
    const/4 v6, 0x4

    new-array v3, v6, [B

    .line 1520
    .local v3, "inputData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-lt v2, v6, :cond_1

    .line 1524
    iget-object v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v3, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    .line 1525
    new-instance v6, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    invoke-direct {v6, p0, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;[B)V

    iput-object v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    .line 1527
    iget-object v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readShort(I)S

    move-result v0

    .line 1529
    .local v0, "command":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "========================="

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1530
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "|C2DM readC2dmPacket() "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1531
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "|C2DM command = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1534
    const/16 v6, 0x1b5d

    if-ne v0, v6, :cond_0

    .line 1536
    iget-object v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readShort(I)S

    move-result v6

    iput v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    .line 1537
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "|C2DM ack_value = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1538
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "========================="

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1539
    iget v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v6, :cond_2

    .line 1542
    const/4 v5, 0x1

    goto :goto_0

    .line 1521
    .end local v0    # "command":I
    :cond_1
    const/4 v6, 0x0

    aput-byte v6, v3, v2

    .line 1520
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1546
    .restart local v0    # "command":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1552
    .end local v0    # "command":I
    .end local v2    # "i":I
    .end local v3    # "inputData":[B
    .end local v4    # "len":I
    :cond_3
    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1556
    :catch_0
    move-exception v1

    .line 1557
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1558
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "readPacket() : Exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1559
    const/16 v6, -0x270f

    iput v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 1564
    return v5
.end method

.method private readPacket()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 1075
    const/4 v10, 0x0

    .line 1081
    .local v10, "result":Z
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-eqz v11, :cond_6

    .line 1083
    const/4 v5, 0x0

    .line 1084
    .local v5, "len":I
    const/16 v11, 0x400

    new-array v9, v11, [B

    .line 1087
    .local v9, "readTemp":[B
    const/4 v0, 0x2

    .line 1089
    .local v0, "HEADER_LENGTH":I
    const/4 v8, 0x0

    .line 1090
    .local v8, "length":I
    add-int/lit8 v5, v5, 0x2

    .line 1110
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v11, v9, v12, v13}, Ljava/io/DataInputStream;->read([BII)I

    .line 1112
    const/4 v11, 0x0

    aget-byte v6, v9, v11

    .line 1113
    .local v6, "len1":I
    const/4 v11, 0x1

    aget-byte v7, v9, v11

    .line 1114
    .local v7, "len2":I
    and-int/lit16 v11, v6, 0xff

    shl-int/lit8 v11, v11, 0x0

    and-int/lit16 v12, v7, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int v8, v11, v12

    .line 1116
    sub-int v11, v8, v0

    new-array v4, v11, [B

    .line 1118
    .local v4, "inputData":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v4

    if-lt v3, v11, :cond_1

    .line 1122
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    const/4 v12, 0x0

    sub-int v13, v8, v0

    invoke-virtual {v11, v4, v12, v13}, Ljava/io/DataInputStream;->read([BII)I

    .line 1123
    new-instance v11, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    invoke-direct {v11, p0, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;[B)V

    iput-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    .line 1125
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readShort(I)S

    move-result v1

    .line 1128
    .local v1, "command":I
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1129
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "|readPacket() "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1130
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "|command = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1131
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1133
    const/16 v11, 0x113

    if-ne v1, v11, :cond_3

    .line 1138
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readByte(I)B

    move-result v11

    iput v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    .line 1140
    iget v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v11, :cond_2

    .line 1145
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readByte(I)B

    move-result v11

    iput v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->isSms:I

    .line 1149
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1150
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "| AU_SC_APP_AUTH_V8 "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1151
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "| isSms = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->isSms:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1152
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1153
    const/4 v10, 0x1

    .line 1219
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

    .line 1119
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

    .line 1118
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1157
    .restart local v1    # "command":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 1161
    :cond_3
    const/16 v11, 0x201

    if-ne v1, v11, :cond_4

    .line 1163
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1164
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "|AU_SC_SMS_AGREE "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1165
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "|ack_value = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1166
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1167
    const/4 v10, 0x1

    goto :goto_2

    .line 1169
    :cond_4
    const/16 v11, 0x501

    if-ne v1, v11, :cond_0

    .line 1174
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readByte(I)B

    move-result v11

    iput v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    .line 1176
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1177
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "| AU_SC_GET_EXCEPTION_MESSAGE 500 "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1178
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "| ack_value = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1180
    iget v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-ne v11, v14, :cond_5

    .line 1186
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readByte(I)B

    move-result v11

    iput-byte v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->force_kill:B

    .line 1187
    iget-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->inputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;

    const/4 v12, 0x0

    const/16 v13, 0x1f8

    invoke-virtual {v11, v12, v13}, Lcom/gamevil/nexus2/xml/ProfileSender$GVInputPacket;->readString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->exceptoinMessage:Ljava/lang/String;

    .line 1191
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "| AU_SC_GET_EXCEPTION_MESSAGE "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1192
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "| force_kill = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v13, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->force_kill:B

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1193
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "| exceptoinMessage = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->exceptoinMessage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1194
    const/4 v10, 0x1

    .line 1200
    :goto_3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "========================="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1211
    .end local v0    # "HEADER_LENGTH":I
    .end local v1    # "command":I
    .end local v3    # "i":I
    .end local v4    # "inputData":[B
    .end local v5    # "len":I
    .end local v6    # "len1":I
    .end local v7    # "len2":I
    .end local v8    # "length":I
    .end local v9    # "readTemp":[B
    :catch_0
    move-exception v2

    .line 1212
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1213
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "readPacket() : Exception "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1214
    const/16 v11, -0x270f

    iput v11, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 1215
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto/16 :goto_2

    .line 1198
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "HEADER_LENGTH":I
    .restart local v1    # "command":I
    .restart local v3    # "i":I
    .restart local v4    # "inputData":[B
    .restart local v5    # "len":I
    .restart local v6    # "len1":I
    .restart local v7    # "len2":I
    .restart local v8    # "length":I
    .restart local v9    # "readTemp":[B
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 1207
    .end local v0    # "HEADER_LENGTH":I
    .end local v1    # "command":I
    .end local v3    # "i":I
    .end local v4    # "inputData":[B
    .end local v5    # "len":I
    .end local v6    # "len1":I
    .end local v7    # "len2":I
    .end local v8    # "length":I
    .end local v9    # "readTemp":[B
    :cond_6
    const-wide/16 v11, 0xc8

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private saveProfileStatus()V
    .locals 5

    .prologue
    .line 1257
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1258
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "| ProfileSender\tsaveProfileStatus()\t "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1259
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1260
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1261
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1262
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "profiled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1263
    const-string v2, "profilVersion"

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1266
    return-void
.end method

.method public static stringXor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;

    .prologue
    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1665
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1666
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/lit16 v2, v2, 0x81

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public c2DmFlush()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1494
    const/4 v2, 0x0

    .line 1495
    .local v2, "totalLength":I
    check-cast v1, [B

    .line 1497
    .local v1, "outputData":[B
    :try_start_0
    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->toByteArray()[B

    move-result-object v3

    sput-object v3, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 1498
    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-virtual {v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->reset()V

    .line 1500
    sget-object v3, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v2, v3

    .line 1501
    new-array v1, v2, [B

    .line 1502
    sget-object v3, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1504
    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1505
    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1506
    const/4 v3, 0x0

    sput-object v3, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 1507
    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :goto_0
    return-void

    .line 1508
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public closeTCPConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1229
    :try_start_0
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 1233
    :cond_0
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 1235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 1237
    :cond_1
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 1238
    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :cond_2
    const/4 v1, 0x1

    .line 1250
    :goto_0
    return v1

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1245
    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 1246
    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 1247
    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 1248
    const/16 v1, -0x270f

    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 1249
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    .line 1250
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
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/16 v5, -0x63

    const/4 v4, 0x0

    .line 310
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|Start doInBackground() "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showLoadingDialog()V

    .line 316
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->isNetAvailable()I

    move-result v0

    .line 318
    .local v0, "netType":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|isNetAvailable "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|netType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    aget-object v1, p1, v4

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 325
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideCertifiDialog()V

    .line 326
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->isProfileSaved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    if-ltz v0, :cond_6

    .line 341
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->openTCPConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iput v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 344
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutProfile()Z

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 392
    :cond_1
    :goto_0
    aget-object v1, p1, v4

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideLoadingDialog()V

    .line 395
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideCertifiDialog()V

    .line 396
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->isProfileSaved()Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    if-ltz v0, :cond_a

    .line 411
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->openTCPConnectionBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    const/4 v1, 0x2

    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 414
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutProfileBackground()Z

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 427
    :cond_3
    :goto_1
    aget-object v1, p1, v4

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|C2DM ProfielSender TYPE_C2DM_REGISTER_BACKGROUND "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    if-ltz v0, :cond_b

    .line 434
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->openTCPConnectionForC2DM()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutRegistration()Z

    .line 438
    :cond_4
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 447
    :cond_5
    :goto_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|End doInBackground() "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    const/4 v1, 0x0

    return-object v1

    .line 351
    :cond_6
    iput v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 352
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto :goto_0

    .line 356
    :cond_7
    aget-object v1, p1, v4

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "|SMS Agree "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideSmsDialog()V

    .line 365
    if-ltz v0, :cond_9

    .line 377
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->openTCPConnection()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 379
    const/4 v1, 0x1

    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 380
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutSmsAgree()Z

    .line 382
    :cond_8
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    goto/16 :goto_0

    .line 387
    :cond_9
    iput v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 388
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto/16 :goto_0

    .line 421
    :cond_a
    iput v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 422
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    goto/16 :goto_1

    .line 442
    :cond_b
    iput v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    goto :goto_2
.end method

.method public flush()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1002
    const/4 v7, 0x0

    .line 1003
    .local v7, "totalLength":I
    check-cast v5, [B

    .line 1005
    .local v5, "outputData":[B
    :try_start_0
    iget-object v8, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-virtual {v8}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->toByteArray()[B

    move-result-object v8

    sput-object v8, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 1006
    iget-object v8, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-virtual {v8}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->reset()V

    .line 1007
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->isUsingNetworkEncryption()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1014
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Base64] buffer :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    sget-object v8, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v6, v8

    .line 1017
    .local v6, "testLength":I
    add-int/lit8 v8, v6, -0x2

    new-array v1, v8, [B

    .line 1020
    .local v1, "bodyData":[B
    sget-object v8, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    const/4 v9, 0x2

    const/4 v10, 0x0

    sget-object v11, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    invoke-static {v8, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    invoke-static {v1}, Lcom/gamevil/nexus2/xml/Base64Nexus2;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, "enStr":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Base64] Encoded :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1028
    .local v4, "enStrBodyData":[B
    array-length v2, v4

    .line 1030
    .local v2, "enBodyLength":I
    add-int/lit8 v7, v2, 0x4

    .line 1031
    new-array v5, v7, [B

    .line 1034
    const/4 v8, 0x0

    ushr-int/lit8 v9, v7, 0x0

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 1035
    const/4 v8, 0x1

    ushr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 1037
    const/4 v8, 0x2

    sget-object v9, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    .line 1038
    const/4 v8, 0x3

    sget-object v9, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    .line 1040
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v4, v8, v5, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1041
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Base64] output Data :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1058
    .end local v1    # "bodyData":[B
    .end local v2    # "enBodyLength":I
    .end local v3    # "enStr":Ljava/lang/String;
    .end local v4    # "enStrBodyData":[B
    .end local v6    # "testLength":I
    :goto_0
    iget-object v8, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1059
    iget-object v8, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 1061
    const/4 v8, 0x0

    sput-object v8, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 1062
    const/4 v8, 0x0

    move-object v0, v8

    check-cast v0, [B

    move-object v5, v0

    .line 1065
    :goto_1
    return-void

    .line 1046
    :cond_0
    sget-object v8, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v8, v8

    add-int/lit8 v7, v8, 0x2

    .line 1047
    new-array v5, v7, [B

    .line 1049
    const/4 v8, 0x0

    ushr-int/lit8 v9, v7, 0x0

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 1050
    const/4 v8, 0x1

    ushr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 1052
    sget-object v8, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    const/4 v9, 0x0

    const/4 v10, 0x2

    sget-object v11, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    array-length v11, v11

    invoke-static {v8, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1063
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public hideCertifiDialog()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$4;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$4;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1311
    return-void
.end method

.method public hideCloseDialog()V
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$6;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$6;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1335
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$2;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$2;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1286
    return-void
.end method

.method public hideSmsDialog()V
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$8;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$8;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1359
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
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[ProfileData][DEBUG] onPostExecute ###################"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "profileState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ack_value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->hideLoadingDialog()V

    .line 461
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    if-nez v0, :cond_2

    .line 463
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v0, :cond_0

    .line 465
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->isSms:I

    if-nez v0, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showSmsDialog()V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showThankyou()V

    goto :goto_0

    .line 475
    :cond_2
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showThankyou()V

    goto :goto_0

    .line 481
    :cond_3
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 484
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "| onPostExecute\t\tprofileState==3 "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| ack_value\t\t "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| force_kill\t "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->force_kill:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v0, :cond_5

    .line 493
    iget-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->force_kill:B

    if-nez v0, :cond_4

    .line 494
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->exceptoinMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->handleExceptionPassMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_4
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->exceptoinMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->handleExceptionMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_5
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v1, "\uc778\uc99d \uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\ub2e4\uc74c\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud558\uc138\uc694."

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->handleExceptionErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_6
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 548
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "| onPostExecute\t\tprofileState==4 "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| ack_value\t\t "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 553
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| force_kill\t "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->force_kill:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 554
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    iget v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    if-lez v0, :cond_8

    .line 557
    iget-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->force_kill:B

    if-nez v0, :cond_7

    .line 558
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->exceptoinMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->handleExceptionPassMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_7
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    iget-object v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->exceptoinMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->handleExceptionMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :cond_8
    sget-object v0, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    const-string v1, "\uc778\uc99d \uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\ub2e4\uc74c\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud558\uc138\uc694."

    invoke-virtual {v0, v1}, Lcom/gamevil/nexus2/NexusGLActivity;->handleExceptionErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 454
    return-void
.end method

.method public openTCPConnection()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 629
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_0

    .line 664
    :goto_0
    return v2

    .line 633
    :cond_0
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "|openTCPConnection "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 635
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|ServerIP = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 636
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|ServerPort = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 640
    .local v1, "serverAddr":Ljava/net/InetAddress;
    new-instance v4, Ljava/net/Socket;

    iget v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    invoke-direct {v4, v1, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 641
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    const v5, 0xc350

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 642
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_1

    .line 643
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[ProfileData][DEBUG] openTCPConnection Connected"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 646
    .end local v1    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 648
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 649
    const/16 v2, -0x3e7

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 650
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    move v2, v3

    .line 652
    goto :goto_0

    .line 653
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 655
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 656
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 657
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    move v2, v3

    .line 659
    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "serverAddr":Ljava/net/InetAddress;
    :cond_1
    move v2, v3

    .line 664
    goto/16 :goto_0
.end method

.method public openTCPConnectionBackground()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 876
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_0

    .line 905
    :goto_0
    return v2

    .line 880
    :cond_0
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 881
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "|openTCPConnection "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 882
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|ServerIP = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 883
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|ServerPort = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 884
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "========================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 886
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerIP:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 887
    .local v1, "serverAddr":Ljava/net/InetAddress;
    new-instance v4, Ljava/net/Socket;

    iget v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    invoke-direct {v4, v1, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 888
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    const v5, 0xc350

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 889
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_1

    .line 890
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[ProfileData][DEBUG] openTCPConnection Connected"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 893
    .end local v1    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 895
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    move v2, v3

    .line 896
    goto :goto_0

    .line 897
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 899
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    move v2, v3

    .line 900
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "serverAddr":Ljava/net/InetAddress;
    :cond_1
    move v2, v3

    .line 905
    goto :goto_0
.end method

.method public openTCPConnectionForC2DM()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1460
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "|C2DM [ProfileData][DEBUG] openTCPConnectionForC2DM"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1461
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_0

    .line 1490
    :goto_0
    return v2

    .line 1466
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->C2dmServerIP:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1467
    .local v1, "serverAddr":Ljava/net/InetAddress;
    new-instance v4, Ljava/net/Socket;

    iget v5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->C2dmServerPort:I

    invoke-direct {v4, v1, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    .line 1468
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    const v5, 0xc350

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1469
    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    if-eqz v4, :cond_1

    .line 1470
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "|C2DM [ProfileData][DEBUG] openTCPConnectionForC2DM Connected"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1473
    .end local v1    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 1475
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 1476
    const/16 v2, -0x3e7

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 1478
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "|C2DM [ProfileData][DEBUG] SocketTimeout openTCPConnectionForC2DM Failed"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 1479
    goto :goto_0

    .line 1480
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1482
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->closeTCPConnection()Z

    .line 1483
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 1485
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "|C2DM [ProfileData][DEBUG] Exception openTCPConnectionForC2DM Failed"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 1486
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "serverAddr":Ljava/net/InetAddress;
    :cond_1
    move v2, v3

    .line 1490
    goto :goto_0
.end method

.method public sendPutExceptinMessage()Z
    .locals 5

    .prologue
    .line 799
    const/4 v1, 0x0

    .line 800
    .local v1, "result":Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[ProfileData][DEBUG] sendPutExceptinMessage ##############"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 802
    :try_start_0
    new-instance v2, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 809
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->initCommand(I)V

    .line 810
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 811
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 812
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 813
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|\tSend AU_CS_GET_EXCEPTION_MESSAGE\t "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 814
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|\texcept_ack\t "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 815
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "+-------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->flush()V

    .line 820
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-nez v2, :cond_0

    .line 821
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 824
    :cond_0
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readPacket()Z

    move-result v2

    if-nez v2, :cond_1

    .line 830
    const/4 v2, -0x1

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :cond_1
    const/4 v1, 0x1

    move v2, v1

    .line 840
    :goto_0
    return v2

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 837
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 838
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendPutProfile()Z
    .locals 5

    .prologue
    .line 669
    const/4 v1, 0x0

    .line 672
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 674
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    if-nez v2, :cond_0

    .line 675
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->initCommand(I)V

    .line 680
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 681
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 682
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 683
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 684
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 685
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 686
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 687
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 688
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 689
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 690
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 691
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 692
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 693
    :cond_1
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 698
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 699
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|sendPutProfile "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 700
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|phoneNumber = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 701
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|phoneModel = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 703
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|GID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 704
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|saleCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|trial_code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|totalMem = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 707
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|totalFileMem = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 708
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|sktMCID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 709
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|device_os_version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 710
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|device_type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 711
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|device_token = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|accept_terms = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 713
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 719
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->flush()V

    .line 721
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-nez v2, :cond_2

    .line 722
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 725
    :cond_2
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readPacket()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 726
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->saveProfileStatus()V

    .line 727
    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 753
    :goto_1
    return v2

    .line 732
    :cond_3
    iget v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    const/16 v3, -0x32

    if-gt v2, v3, :cond_4

    .line 734
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "| AU_SC_APP_AUTH_V8 exception -50"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 736
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 737
    const/4 v2, 0x3

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 739
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutExceptinMessage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 749
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 750
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    .line 751
    const/4 v2, 0x0

    goto :goto_1

    .line 743
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v2, -0x1

    :try_start_1
    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 744
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendPutProfileBackground()Z
    .locals 5

    .prologue
    .line 910
    const/4 v1, 0x0

    .line 913
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 920
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->initCommand(I)V

    .line 921
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 922
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 923
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 924
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 925
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 926
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 927
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 928
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 929
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 930
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 931
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 932
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 933
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 934
    :cond_0
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-byte v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 939
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 940
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|sendPutProfile background"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 941
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|phoneNumber = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|phoneModel = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 943
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 944
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|GID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 945
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|saleCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 946
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|trial_code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 947
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|totalMem = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 948
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|totalFileMem = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|sktMCID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 950
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|device_os_version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 951
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|device_type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 952
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|device_token = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|accept_terms = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 954
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 956
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 960
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->flush()V

    .line 962
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-nez v2, :cond_1

    .line 963
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readPacket()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 967
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->saveProfileStatus()V

    .line 968
    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 994
    :goto_1
    return v2

    .line 973
    :cond_2
    iget v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ack_value:I

    const/16 v3, -0x32

    if-gt v2, v3, :cond_3

    .line 975
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "| AU_SC_APP_AUTH_V8 2 exception -50"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 977
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "========================="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    const/4 v2, 0x4

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->profileState:I

    .line 980
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->sendPutExceptinMessage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 990
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 992
    const/4 v2, 0x0

    goto :goto_1

    .line 984
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, -0x1

    :try_start_1
    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendPutRegistration()Z
    .locals 22

    .prologue
    .line 1569
    const/4 v15, 0x0

    .line 1570
    .local v15, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    move/from16 v19, v15

    .line 1659
    :goto_0
    return v19

    .line 1572
    :cond_0
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "+-------------------------------"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1573
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "|C2DM ProfielSender sendPutRegistration\t\t "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1574
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "|C2DM _regiId "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1575
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "+-------------------------------"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1578
    :try_start_0
    new-instance v19, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1580
    new-instance v19, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/ProfileSender;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 1583
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/gamevil/nexus2/xml/ProfileSender;->stringXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1585
    .local v18, "xorPhon":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/gamevil/nexus2/xml/ProfileSender;->stringXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1587
    const/4 v7, 0x6

    .line 1588
    .local v7, "headerSize":I
    const/4 v13, 0x2

    .line 1589
    .local v13, "packetVersionSize":I
    const/4 v6, 0x4

    .line 1590
    .local v6, "gidSize":I
    const/16 v16, 0x4

    .line 1591
    .local v16, "saleCodeSize":I
    const/4 v3, 0x2

    .line 1593
    .local v3, "carrierSize":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v11, v0

    .line 1594
    .local v11, "numberSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->deviceId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v4, v0

    .line 1595
    .local v4, "deviceIdSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->macAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v9, v0

    .line 1596
    .local v9, "macAddSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v10, v0

    .line 1597
    .local v10, "modelSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v12, v0

    .line 1598
    .local v12, "osVersionSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v2, v0

    .line 1599
    .local v2, "appVersionSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->locale:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v8, v0

    .line 1600
    .local v8, "localSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v14, v0

    .line 1602
    .local v14, "registrationIdSize":I
    add-int/lit8 v19, v11, 0x10

    add-int v19, v19, v4

    add-int v19, v19, v9

    add-int v19, v19, v10

    add-int v19, v19, v12

    add-int v19, v19, v2

    add-int v19, v19, v8

    add-int v19, v19, v14

    add-int v19, v19, v3

    add-int/lit8 v17, v19, 0x10

    .line 1609
    .local v17, "totalPacketSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->reset()V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeShort(S)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeByte(B)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    const/16 v20, 0x1b5c

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeShort(S)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeShort(S)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->deviceId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->macAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->locale:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString2(Ljava/lang/String;I)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getCarrierId()S

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeShort(S)V

    .line 1628
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "+-------------------------------"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1629
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "|C2DM ProfielSender sendPutRegistration\t\t "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1630
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "|C2DM locale "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->locale:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1631
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "+-------------------------------"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1632
    const/16 v19, 0x0

    sput-object v19, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->c2DmFlush()V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1636
    new-instance v19, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 1639
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readC2dmPacket()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1641
    sget-object v19, Lcom/gamevil/nexus2/NexusGLActivity;->myActivity:Lcom/gamevil/nexus2/NexusGLActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/gamevil/nexus2/NexusGLActivity;->reportC2dmRegistrationIdUploadComplet()V

    .line 1642
    const/4 v15, 0x1

    :goto_1
    move/from16 v19, v15

    .line 1659
    goto/16 :goto_0

    .line 1647
    :cond_3
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "+-------------------------------"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1648
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "|C2DM\tsendPutRegistration Failed\t "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1649
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "+-------------------------------"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1653
    .end local v2    # "appVersionSize":I
    .end local v3    # "carrierSize":I
    .end local v4    # "deviceIdSize":I
    .end local v6    # "gidSize":I
    .end local v7    # "headerSize":I
    .end local v8    # "localSize":I
    .end local v9    # "macAddSize":I
    .end local v10    # "modelSize":I
    .end local v11    # "numberSize":I
    .end local v12    # "osVersionSize":I
    .end local v13    # "packetVersionSize":I
    .end local v14    # "registrationIdSize":I
    .end local v16    # "saleCodeSize":I
    .end local v17    # "totalPacketSize":I
    .end local v18    # "xorPhon":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1654
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1655
    const/16 v19, -0x270f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 1657
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method public sendPutSmsAgree()Z
    .locals 5

    .prologue
    .line 758
    const/4 v1, 0x0

    .line 761
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    invoke-direct {v2, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    .line 768
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->initCommand(I)V

    .line 769
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeString(Ljava/lang/String;I)V

    .line 770
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->outputPacket:Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;

    iget v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    invoke-virtual {v2, v3}, Lcom/gamevil/nexus2/xml/ProfileSender$GVOutputPacket;->writeInt(I)V

    .line 771
    const/4 v2, 0x0

    sput-object v2, Lcom/gamevil/nexus2/xml/ProfileSender;->buffer:[B

    .line 775
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->flush()V

    .line 777
    iget-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    if-nez v2, :cond_0

    .line 778
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->socketConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->dataInputStream:Ljava/io/DataInputStream;

    .line 781
    :cond_0
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->readPacket()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    invoke-direct {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->saveProfileStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_1
    const/4 v1, 0x1

    move v2, v1

    .line 794
    :goto_0
    return v2

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 790
    const/16 v2, -0x270f

    iput v2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->errorCode:I

    .line 791
    invoke-virtual {p0}, Lcom/gamevil/nexus2/xml/ProfileSender;->showNetError1()V

    .line 792
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAdditionalC2dmInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_regiId"    # Ljava/lang/String;
    .param p2, "_deviceId"    # Ljava/lang/String;
    .param p3, "_macAdd"    # Ljava/lang/String;
    .param p4, "_locale"    # Ljava/lang/String;

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "none"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->deviceId:Ljava/lang/String;

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->macAddress:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "none"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->macAddress:Ljava/lang/String;

    .line 1450
    :cond_2
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->locale:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "none"

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->locale:Ljava/lang/String;

    .line 1452
    :cond_3
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->registrationId:Ljava/lang/String;

    .line 1453
    iput-object p2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->deviceId:Ljava/lang/String;

    .line 1454
    iput-object p3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->macAddress:Ljava/lang/String;

    .line 1455
    iput-object p4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->locale:Ljava/lang/String;

    .line 1456
    return-void
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

    .line 257
    iput-object p1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mContext:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneNumber:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->phoneModel:Ljava/lang/String;

    .line 260
    iput-object p4, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->version:Ljava/lang/String;

    .line 261
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getGameID()I

    move-result v0

    iput v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->gid:I

    .line 262
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getSaleCode()B

    move-result v0

    iput-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->saleCode:B

    .line 263
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getTrialCode()B

    move-result v0

    iput-byte v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->trial_code:B

    .line 264
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalMem:I

    .line 265
    iput v1, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->totalFileMem:I

    .line 266
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getMcid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->sktMCID:Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_os_version:Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_type:Ljava/lang/String;

    .line 269
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->device_token:Ljava/lang/String;

    .line 270
    iput-byte p5, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->accept_terms:B

    .line 278
    invoke-static {}, Lcom/gamevil/nexus2/xml/ProfileData;->isUsingNetworkEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/16 v0, 0x7e3a

    iput v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    const/16 v0, 0x7d0b

    iput v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->ServerPort:I

    goto :goto_0
.end method

.method public showAuthExecptionMessage()V
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$11;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$11;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1415
    return-void
.end method

.method public showCertifiDialog()V
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$3;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$3;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1298
    return-void
.end method

.method public showCloseDialog()V
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$5;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$5;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1323
    return-void
.end method

.method public showConfirmDialog()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$9;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$9;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    return-void
.end method

.method public showLoadingDialog()V
    .locals 2

    .prologue
    .line 1269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "showLoadingDialog1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$1;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$1;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1276
    return-void
.end method

.method public showNetError1()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$10;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$10;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1405
    return-void
.end method

.method public showSmsDialog()V
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$7;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$7;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1347
    return-void
.end method

.method public showThankyou()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/gamevil/nexus2/xml/ProfileSender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gamevil/nexus2/xml/ProfileSender$12;

    invoke-direct {v1, p0}, Lcom/gamevil/nexus2/xml/ProfileSender$12;-><init>(Lcom/gamevil/nexus2/xml/ProfileSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1430
    return-void
.end method
