.class public Lcom/feelingk/iap/net/IAPNet;
.super Ljava/lang/Object;
.source "IAPNet.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IAPNet"

.field private static connect:Z

.field private static connectBP:Z

.field private static inputStream:Ljava/io/InputStream;

.field private static inputStreamBP:Ljava/io/InputStream;

.field private static isInit:Z

.field private static isWifi:Z

.field private static outputStream:Ljava/io/OutputStream;

.field private static outputStreamBP:Ljava/io/OutputStream;

.field private static socketBP:Ljava/net/Socket;

.field private static socketGateway:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    .line 42
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 43
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 44
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 46
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 47
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 48
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    .line 50
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 51
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 52
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static iapClose(Z)I
    .locals 4
    .param p0, "isResRelease"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 164
    const-string v0, "IAPNet"

    const-string v1, "[ DEBUG ] Socket Close!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :try_start_0
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 174
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 183
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    :cond_2
    :goto_2
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 189
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    .line 190
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 192
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 193
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 196
    return v2

    .line 185
    :catch_0
    move-exception v0

    goto :goto_2

    .line 177
    :catch_1
    move-exception v0

    goto :goto_1

    .line 169
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected static iapCloseBP(Z)I
    .locals 3
    .param p0, "isResRelease"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 598
    :try_start_0
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 606
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 607
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 613
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 614
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    :cond_2
    :goto_2
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 620
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    .line 621
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 623
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 624
    return v2

    .line 616
    :catch_0
    move-exception v0

    goto :goto_2

    .line 609
    :catch_1
    move-exception v0

    goto :goto_1

    .line 601
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected static iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/feelingk/iap/net/InitConfirm;
    .locals 16
    .param p0, "info"    # Lcom/feelingk/iap/net/ServerInfo;
    .param p1, "telecom"    # I
    .param p2, "mcid"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "bpServerIP"    # Ljava/lang/String;
    .param p5, "bpServerPort"    # I
    .param p6, "pID"    # Ljava/lang/String;
    .param p7, "pTID"    # Ljava/lang/String;
    .param p8, "pEncJumin"    # Ljava/lang/String;
    .param p9, "useBpServer"    # Z

    .prologue
    .line 69
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 70
    .local v0, "initConfirm":Lcom/feelingk/iap/net/InitConfirm;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ DEBUG ] Server connect - Start : iapConnect Wifi= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    if-eqz v1, :cond_1

    .line 73
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    if-eqz v1, :cond_4

    .line 79
    new-instance v13, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v2

    invoke-direct {v13, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v13, "socketAddress":Ljava/net/SocketAddress;
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v14

    .line 81
    .local v14, "sslcontext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v15, v1, [Lcom/feelingk/iap/net/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/feelingk/iap/net/TrustManager;

    invoke-direct {v2}, Lcom/feelingk/iap/net/TrustManager;-><init>()V

    aput-object v2, v15, v1

    .line 83
    .local v15, "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v14, v1, v15, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 85
    invoke-virtual {v14}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    .line 87
    .local v10, "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 88
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 89
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v13, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 91
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 92
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    .end local v10    # "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    .end local v13    # "socketAddress":Ljava/net/SocketAddress;
    .end local v14    # "sslcontext":Ljavax/net/ssl/SSLContext;
    .end local v15    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 130
    const-string v1, "IAPNet"

    const-string v2, "[ DEBUG ] Server connect - Complete!!!"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 133
    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    .line 137
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 138
    :cond_2
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_3

    .line 139
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    .line 141
    :cond_3
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_4
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 96
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 97
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 99
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 100
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 103
    :catch_0
    move-exception v11

    .line 104
    .local v11, "e":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 105
    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 106
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v11}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 110
    .end local v11    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v11

    .line 111
    .local v11, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 112
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnect() DUMP :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 114
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 118
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 119
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnect() DUMP :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 122
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 123
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetDumpMessage(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 146
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v12

    .line 147
    .local v12, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_6

    .line 148
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 149
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_6
    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto/16 :goto_0
.end method

.method protected static iapConnectBP(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/feelingk/iap/net/InitConfirm;
    .locals 11
    .param p0, "info"    # Lcom/feelingk/iap/net/ServerInfo;
    .param p1, "telecom"    # I
    .param p2, "mcid"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "bpServerIP"    # Ljava/lang/String;
    .param p5, "bpServerPort"    # I

    .prologue
    .line 531
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 533
    .local v0, "init":Lcom/feelingk/iap/net/InitConfirm;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ DEBUG ] iapConnectBP - Start! isWifi= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    if-eqz v1, :cond_0

    .line 535
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 588
    :goto_0
    return-object v0

    .line 540
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 542
    .local v7, "context":Ljavax/net/ssl/SSLContext;
    const/4 v10, 0x0

    check-cast v10, [Lcom/feelingk/iap/net/TrustManager;

    .line 543
    .local v10, "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x1

    new-array v10, v1, [Lcom/feelingk/iap/net/TrustManager;

    .end local v10    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Lcom/feelingk/iap/net/TrustManager;

    invoke-direct {v2}, Lcom/feelingk/iap/net/TrustManager;-><init>()V

    aput-object v2, v10, v1

    .line 544
    .restart local v10    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v1, v10, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 545
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 546
    .local v6, "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 551
    .end local v6    # "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    .end local v7    # "context":Ljavax/net/ssl/SSLContext;
    .end local v10    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    :goto_1
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 553
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 554
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    const/4 v1, 0x1

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 567
    const-string v1, "IAPNet"

    const-string v2, "[ DEBUG ] iapConnectBP - Connection Complete!"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/feelingk/iap/net/IAPNet;->iapSendInitBP(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;[BI)V

    .line 571
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    .line 573
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 556
    :catch_0
    move-exception v8

    .line 557
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnectBP() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 559
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 560
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 580
    .local v9, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    :cond_3
    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto/16 :goto_0
.end method

.method protected static iapReAuth(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/InitConfirm;
    .locals 11
    .param p0, "pTelecom"    # I
    .param p1, "applicationID"    # Ljava/lang/String;
    .param p2, "pJuminNumber"    # Ljava/lang/String;
    .param p3, "MDN"    # Ljava/lang/String;
    .param p4, "bpServerIP"    # Ljava/lang/String;
    .param p5, "bpServerPort"    # I
    .param p6, "pID"    # Ljava/lang/String;
    .param p7, "pTID"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 375
    .local v0, "initConfirm":Lcom/feelingk/iap/net/InitConfirm;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 378
    const/4 v9, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 380
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    :goto_0
    return-object v0

    .line 384
    :cond_0
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v10

    .line 385
    .local v10, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {v0, v10}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto :goto_0
.end method

.method private static declared-synchronized iapReceive(Lcom/feelingk/iap/net/Confirm;)[B
    .locals 15
    .param p0, "confirm"    # Lcom/feelingk/iap/net/Confirm;

    .prologue
    const/16 v14, 0xc

    const/4 v13, -0x1

    const/4 v8, 0x0

    .line 436
    const-class v9, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v9

    :try_start_0
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapReceive() Header Start ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v12, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-boolean v10, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    if-nez v10, :cond_0

    .line 438
    const/4 v10, -0x6

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v8

    .line 515
    :goto_0
    monitor-exit v9

    return-object v7

    .line 442
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    check-cast v4, [B

    .line 443
    .local v4, "header":[B
    const/4 v0, 0x0

    check-cast v0, [B

    .line 444
    .local v0, "data":[B
    const/4 v7, 0x0

    check-cast v7, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    .local v7, "returnData":[B
    const/4 v6, 0x0

    .line 446
    .local v6, "receivedBytes":I
    const/4 v5, 0x0

    .line 447
    .local v5, "reads":I
    const/4 v1, 0x0

    .line 451
    .local v1, "data_len":I
    const/16 v10, 0xc

    :try_start_2
    new-array v4, v10, [B

    .line 453
    :goto_1
    if-lt v6, v14, :cond_3

    .line 467
    :cond_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-direct {v10, v4, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "datalength":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 476
    new-array v0, v1, [B

    .line 477
    const/4 v6, 0x0

    .line 480
    :goto_2
    if-lt v6, v1, :cond_6

    .line 488
    :cond_2
    const/16 v10, 0x17

    add-int/lit8 v11, v1, -0x1

    aget-byte v11, v0, v11

    if-eq v10, v11, :cond_7

    .line 489
    const-string v10, "IAPNet"

    const-string v11, "[ DEBUG ] IAP_ERR_INVALIDPARITY ="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v10, -0x8

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 491
    goto :goto_0

    .line 454
    .end local v2    # "datalength":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    array-length v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v10, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 456
    if-eq v5, v13, :cond_4

    .line 457
    add-int/2addr v6, v5

    goto :goto_1

    .line 458
    :cond_4
    if-ne v5, v13, :cond_1

    .line 460
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 461
    goto :goto_0

    .line 472
    .restart local v2    # "datalength":Ljava/lang/String;
    :cond_5
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 473
    goto :goto_0

    .line 481
    :cond_6
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    array-length v11, v0

    sub-int/2addr v11, v6

    invoke-virtual {v10, v0, v6, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 482
    if-eq v5, v13, :cond_2

    .line 483
    add-int/2addr v6, v5

    goto :goto_2

    .line 494
    .end local v2    # "datalength":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 495
    .local v3, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceive() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/16 v10, -0xd

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 497
    goto/16 :goto_0

    .line 499
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 500
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceive() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 503
    goto/16 :goto_0

    .line 506
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "datalength":Ljava/lang/String;
    :cond_7
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    new-array v7, v8, [B

    .line 507
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    const/4 v8, 0x0

    array-length v10, v4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    invoke-static {v0, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    if-eqz p0, :cond_8

    .line 511
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    .line 512
    :cond_8
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    invoke-static {v7, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 514
    const-string v8, "IAPNet"

    const-string v10, "[ DEBUG ] iapReceive() Success!!  "

    invoke-static {v8, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 436
    .end local v0    # "data":[B
    .end local v1    # "data_len":I
    .end local v2    # "datalength":Ljava/lang/String;
    .end local v4    # "header":[B
    .end local v5    # "reads":I
    .end local v6    # "receivedBytes":I
    .end local v7    # "returnData":[B
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static declared-synchronized iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B
    .locals 14
    .param p0, "c"    # Lcom/feelingk/iap/net/Confirm;

    .prologue
    const/16 v12, 0xc

    const/4 v13, -0x1

    const/4 v8, 0x0

    .line 821
    const-class v9, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v9

    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [B

    .line 822
    .local v4, "header":[B
    const/4 v0, 0x0

    check-cast v0, [B

    .line 823
    .local v0, "data":[B
    const/4 v7, 0x0

    check-cast v7, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    .local v7, "returnData":[B
    const/4 v6, 0x0

    .line 825
    .local v6, "receivedBytes":I
    const/4 v5, 0x0

    .line 826
    .local v5, "reads":I
    const/4 v1, 0x0

    .line 829
    .local v1, "data_len":I
    const/16 v10, 0xc

    :try_start_1
    new-array v4, v10, [B

    .line 831
    :goto_0
    if-lt v6, v12, :cond_3

    .line 843
    :cond_0
    const-string v10, "IAPNet"

    const-string v11, "[ DEBUG ] iapReceiveBP() Header Receive Complete!"

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-direct {v10, v4, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "datalength":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 847
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 852
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapReceiveBP() Data Length: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    new-array v0, v1, [B

    .line 855
    const/4 v6, 0x0

    .line 856
    :goto_1
    if-lt v6, v1, :cond_6

    .line 867
    :cond_1
    add-int/lit8 v10, v1, -0x1

    aget-byte v8, v0, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :try_start_2
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    new-array v7, v8, [B

    .line 878
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    const/4 v8, 0x0

    array-length v10, v4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    invoke-static {v0, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    if-eqz p0, :cond_2

    .line 882
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    .line 884
    :cond_2
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    invoke-static {v7, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v7

    .line 885
    .end local v2    # "datalength":Ljava/lang/String;
    :goto_2
    monitor-exit v9

    return-object v8

    .line 832
    :cond_3
    :try_start_3
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v10, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 834
    if-eq v5, v13, :cond_4

    .line 835
    add-int/2addr v6, v5

    goto :goto_0

    .line 836
    :cond_4
    if-ne v5, v13, :cond_0

    .line 838
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 871
    :catch_0
    move-exception v3

    .line 872
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceiveBP() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 821
    .end local v0    # "data":[B
    .end local v1    # "data_len":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "header":[B
    .end local v5    # "reads":I
    .end local v6    # "receivedBytes":I
    .end local v7    # "returnData":[B
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 849
    .restart local v0    # "data":[B
    .restart local v1    # "data_len":I
    .restart local v2    # "datalength":Ljava/lang/String;
    .restart local v4    # "header":[B
    .restart local v5    # "reads":I
    .restart local v6    # "receivedBytes":I
    .restart local v7    # "returnData":[B
    :cond_5
    const/4 v10, -0x5

    :try_start_5
    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    goto :goto_2

    .line 857
    :cond_6
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v0

    sub-int/2addr v11, v6

    invoke-virtual {v10, v0, v6, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    .line 859
    if-eq v5, v13, :cond_1

    .line 860
    add-int/2addr v6, v5

    goto :goto_1
.end method

.method protected static iapSendAutoPurchaseDismiss(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 12
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1667
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1669
    .local v3, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendItemMembership()"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const/16 v6, 0xc

    .line 1674
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xa

    .line 1675
    add-int/lit8 v6, v6, 0x1

    .line 1677
    new-array v5, v6, [B

    .line 1678
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1681
    const/4 v4, 0x0

    .line 1683
    .local v4, "offset":I
    const-string v9, "JP"

    .line 1684
    const/16 v10, 0xb

    .line 1683
    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1687
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1688
    add-int/lit8 v4, v4, 0xc

    .line 1690
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1691
    .local v0, "byte_pID":[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1693
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 1696
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 1697
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 1698
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1700
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1713
    :goto_1
    return-object v3

    .line 1679
    .end local v0    # "byte_pID":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v2

    .line 1678
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1705
    .restart local v0    # "byte_pID":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 1706
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 1708
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1712
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendData([B)[B
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 897
    new-instance v0, Lcom/feelingk/iap/net/DataPacket;

    invoke-direct {v0}, Lcom/feelingk/iap/net/DataPacket;-><init>()V

    .line 900
    .local v0, "datapacket":Lcom/feelingk/iap/net/DataPacket;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendData!!!!() Start ~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    array-length v8, p0

    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v4, v8, 0x1

    .line 902
    .local v4, "packet_len":I
    new-array v3, v4, [B

    .line 904
    .local v3, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 907
    const-string v8, "DP"

    array-length v9, p0

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 908
    .local v1, "header":[B
    array-length v8, v1

    invoke-static {v1, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    const/16 v8, 0xc

    array-length v9, p0

    invoke-static {p0, v10, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    add-int/lit8 v8, v4, -0x1

    const/16 v9, 0x17

    aput-byte v9, v3, v8

    .line 918
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v6

    .line 919
    .local v6, "ret":B
    if-eqz v6, :cond_2

    .line 931
    :cond_0
    :goto_1
    return-object v7

    .line 905
    .end local v1    # "header":[B
    .end local v6    # "ret":B
    :cond_1
    aput-byte v10, v3, v2

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    .restart local v1    # "header":[B
    .restart local v6    # "ret":B
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v5

    .line 924
    .local v5, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getResultCode()B

    move-result v8

    if-nez v8, :cond_0

    .line 928
    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/DataPacket;->parse([B)V

    .line 929
    const-string v7, "IAPNet"

    const-string v8, "[ DEBUG ] iapSendData() End~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getData()[B

    move-result-object v7

    goto :goto_1
.end method

.method protected static iapSendDataBP([B)[B
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 773
    new-instance v0, Lcom/feelingk/iap/net/DataPacket;

    invoke-direct {v0}, Lcom/feelingk/iap/net/DataPacket;-><init>()V

    .line 776
    .local v0, "dp":Lcom/feelingk/iap/net/DataPacket;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendDataBP()"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    array-length v8, p0

    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v4, v8, 0x1

    .line 778
    .local v4, "packet_len":I
    new-array v3, v4, [B

    .line 780
    .local v3, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 783
    const-string v8, "DP"

    array-length v9, p0

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 784
    .local v1, "header":[B
    array-length v8, v1

    invoke-static {v1, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    const/16 v8, 0xc

    array-length v9, p0

    invoke-static {p0, v10, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    add-int/lit8 v8, v4, -0x1

    const/16 v9, 0x17

    aput-byte v9, v3, v8

    .line 794
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapWriteBP([B)B

    move-result v6

    .line 795
    .local v6, "ret":B
    if-eqz v6, :cond_2

    .line 808
    :cond_0
    :goto_1
    return-object v7

    .line 781
    .end local v1    # "header":[B
    .end local v6    # "ret":B
    :cond_1
    aput-byte v10, v3, v2

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    .restart local v1    # "header":[B
    .restart local v6    # "ret":B
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v5

    .line 801
    .local v5, "recv":[B
    array-length v8, v5

    invoke-static {v5, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 802
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getResultCode()B

    move-result v8

    if-nez v8, :cond_0

    .line 807
    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/DataPacket;->parse([B)V

    .line 808
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getData()[B

    move-result-object v7

    goto :goto_1
.end method

.method protected static iapSendDataMembership(ILjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 17
    .param p0, "pTelecom"    # I
    .param p1, "pMdn"    # Ljava/lang/String;

    .prologue
    .line 1546
    new-instance v8, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v8}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1547
    .local v8, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1550
    .local v7, "modelName":Ljava/lang/String;
    const-string v14, "IAPNet"

    const-string v15, "[ DEBUG ] iapSendItemMembership()"

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/16 v11, 0xc

    .line 1555
    .local v11, "packet_len":I
    add-int/lit8 v11, v11, 0x2

    .line 1556
    add-int/lit8 v11, v11, 0xb

    .line 1557
    add-int/lit8 v11, v11, 0x1

    .line 1560
    const/4 v14, 0x2

    move/from16 v0, p0

    if-eq v0, v14, :cond_0

    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_1

    .line 1563
    :cond_0
    if-eqz v7, :cond_1

    .line 1564
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0x40

    if-le v14, v15, :cond_5

    .line 1565
    add-int/lit8 v11, v11, 0x40

    .line 1572
    :cond_1
    :goto_0
    add-int/lit8 v11, v11, 0x1

    .line 1575
    new-array v10, v11, [B

    .line 1576
    .local v10, "packetBytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v11, :cond_6

    .line 1579
    const/4 v9, 0x0

    .line 1581
    .local v9, "offset":I
    const-string v14, "SP"

    .line 1582
    add-int/lit8 v15, v11, -0xc

    .line 1581
    invoke-static {v14, v15}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v5

    .line 1585
    .local v5, "header":[B
    const/4 v14, 0x0

    array-length v15, v5

    invoke-static {v5, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1586
    add-int/lit8 v9, v9, 0xc

    .line 1590
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_7

    .line 1591
    const-string v4, "11"

    .line 1592
    .local v4, "currTelecom":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1593
    .local v3, "byte_pTelecom":[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1605
    .end local v3    # "byte_pTelecom":[B
    .end local v4    # "currTelecom":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x2

    .line 1608
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1609
    .local v1, "byte_pMdn":[B
    const/4 v14, 0x0

    array-length v15, v1

    invoke-static {v1, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1610
    add-int/lit8 v9, v9, 0xb

    .line 1614
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_9

    .line 1617
    const/4 v14, 0x0

    aput-byte v14, v10, v9

    .line 1618
    const-string v14, "IAPNet"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[ DEBUG ] byte_modelLength = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x19

    aget-byte v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 1626
    const/4 v14, 0x2

    move/from16 v0, p0

    if-eq v0, v14, :cond_3

    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_4

    .line 1627
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1628
    .local v2, "byte_pModelName":[B
    const/4 v14, 0x0

    array-length v15, v2

    invoke-static {v2, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1629
    array-length v14, v2

    add-int/lit8 v9, v14, 0x1a

    .line 1633
    .end local v2    # "byte_pModelName":[B
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 1635
    add-int/lit8 v14, v11, -0x1

    const/16 v15, 0x17

    aput-byte v15, v10, v14

    .line 1637
    invoke-static {v10}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v13

    .line 1638
    .local v13, "ret":B
    if-eqz v13, :cond_a

    .line 1639
    invoke-virtual {v8, v13}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1641
    const-string v14, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v8, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1654
    :goto_4
    return-object v8

    .line 1567
    .end local v1    # "byte_pMdn":[B
    .end local v5    # "header":[B
    .end local v6    # "i":I
    .end local v9    # "offset":I
    .end local v10    # "packetBytes":[B
    .end local v13    # "ret":B
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v11, v14, 0x1a

    goto/16 :goto_0

    .line 1577
    .restart local v6    # "i":I
    .restart local v10    # "packetBytes":[B
    :cond_6
    const/4 v14, 0x0

    aput-byte v14, v10, v6

    .line 1576
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1595
    .restart local v5    # "header":[B
    .restart local v9    # "offset":I
    :cond_7
    const/4 v14, 0x2

    move/from16 v0, p0

    if-ne v0, v14, :cond_8

    .line 1596
    const-string v4, "12"

    .line 1597
    .restart local v4    # "currTelecom":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1598
    .restart local v3    # "byte_pTelecom":[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 1600
    .end local v3    # "byte_pTelecom":[B
    .end local v4    # "currTelecom":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_2

    .line 1601
    const-string v4, "13"

    .line 1602
    .restart local v4    # "currTelecom":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1603
    .restart local v3    # "byte_pTelecom":[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 1621
    .end local v3    # "byte_pTelecom":[B
    .end local v4    # "currTelecom":Ljava/lang/String;
    .restart local v1    # "byte_pMdn":[B
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    goto :goto_3

    .line 1646
    .restart local v13    # "ret":B
    :cond_a
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v12

    .line 1647
    .local v12, "recv":[B
    invoke-virtual {v8}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v14

    if-eqz v14, :cond_b

    .line 1649
    const-string v14, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v8, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 1653
    :cond_b
    invoke-virtual {v8, v12}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_4
.end method

.method protected static iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 23
    .param p0, "initConfirm"    # Lcom/feelingk/iap/net/InitConfirm;
    .param p1, "pTelecom"    # I
    .param p2, "applicationID"    # Ljava/lang/String;
    .param p3, "encJuminNumber"    # Ljava/lang/String;
    .param p4, "MIN"    # Ljava/lang/String;
    .param p5, "bpServerIP"    # Ljava/lang/String;
    .param p6, "bpServerPort"    # I
    .param p7, "pID"    # Ljava/lang/String;
    .param p8, "pTID"    # Ljava/lang/String;
    .param p9, "useBpServer"    # Z

    .prologue
    .line 218
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "iapSendInit  Start() isInit="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v21, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "iapSendInit  Start() useBpServer ="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v20, "IAPNet"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v19, "iapSendInit  Start() encJuminNumberCheck ="

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-boolean v19, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    if-eqz v19, :cond_1

    .line 222
    const/16 v19, -0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 363
    :goto_1
    return-void

    .line 220
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 226
    :cond_1
    if-eqz p5, :cond_b

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 227
    .local v11, "ipBytes":[B
    :goto_2
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 231
    .local v16, "portBytes":[B
    const/16 v15, 0xc

    .line 233
    .local v15, "packet_len":I
    if-eqz p8, :cond_c

    .line 234
    const-string v18, "QP"

    .line 235
    .local v18, "sHeaderPacket":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x64

    .line 240
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 241
    add-int/lit8 v15, v15, 0x8

    .line 242
    add-int/lit8 v15, v15, 0x1

    .line 243
    add-int/lit8 v15, v15, 0xa

    .line 244
    add-int/lit8 v15, v15, 0xb

    .line 245
    add-int/lit8 v15, v15, 0x1

    .line 247
    if-eqz v11, :cond_2

    .line 248
    array-length v0, v11

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 249
    :cond_2
    add-int/lit8 v15, v15, 0x7

    .line 250
    add-int/lit8 v15, v15, 0xa

    .line 253
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 254
    :cond_3
    add-int/lit8 v15, v15, 0x2

    .line 256
    if-eqz p9, :cond_d

    .line 257
    add-int/lit8 v15, v15, 0x1

    .line 258
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 267
    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 269
    new-array v14, v15, [B

    .line 271
    .local v14, "packetBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-lt v10, v15, :cond_e

    .line 274
    const/4 v12, 0x0

    .line 276
    .local v12, "offset":I
    add-int/lit8 v19, v15, -0xc

    invoke-static/range {v18 .. v19}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v9

    .line 279
    .local v9, "header":[B
    const/16 v19, 0x0

    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v9, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    add-int/lit8 v12, v12, 0xc

    .line 282
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    const/16 v19, 0x47

    aput-byte v19, v14, v12

    .line 285
    const-string v19, "IAP11.11.28"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    add-int/lit8 v12, v13, 0x8

    .line 289
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x41

    aput-byte v19, v14, v12

    .line 291
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xa

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    add-int/lit8 v12, v13, 0xa

    .line 294
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xb

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    add-int/lit8 v12, v12, 0xb

    .line 297
    if-eqz v11, :cond_5

    .line 298
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 299
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 301
    if-eqz v11, :cond_6

    .line 303
    const/16 v19, 0x0

    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v11, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    array-length v0, v11

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x2c

    .line 306
    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    :cond_6
    add-int/lit8 v12, v12, 0x7

    .line 312
    if-eqz p7, :cond_7

    .line 313
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 314
    .local v3, "byte_pID":[B
    array-length v0, v3

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_7

    .line 315
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    .end local v3    # "byte_pID":[B
    :cond_7
    add-int/lit8 v12, v12, 0xa

    .line 320
    if-eqz p8, :cond_8

    .line 321
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 322
    .local v6, "byte_pTID":[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    add-int/lit8 v12, v12, 0x64

    .line 327
    .end local v6    # "byte_pTID":[B
    :cond_8
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 329
    :cond_9
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const-string v8, "12"

    .line 330
    .local v8, "currTelecom":Ljava/lang/String;
    :goto_6
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 331
    .local v7, "byte_pTelecom":[B
    const/16 v19, 0x0

    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    add-int/lit8 v12, v12, 0x2

    .line 334
    if-eqz p9, :cond_10

    .line 336
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 337
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 338
    .local v5, "byte_pSendBPData":[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    array-length v0, v5

    move/from16 v19, v0

    add-int v12, v13, v19

    .line 351
    .end local v5    # "byte_pSendBPData":[B
    .end local v7    # "byte_pTelecom":[B
    .end local v8    # "currTelecom":Ljava/lang/String;
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_a
    :goto_7
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 353
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 354
    .local v17, "ret":B
    if-eqz v17, :cond_11

    .line 355
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 356
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    .end local v9    # "header":[B
    .end local v10    # "i":I
    .end local v11    # "ipBytes":[B
    .end local v12    # "offset":I
    .end local v14    # "packetBytes":[B
    .end local v15    # "packet_len":I
    .end local v16    # "portBytes":[B
    .end local v17    # "ret":B
    .end local v18    # "sHeaderPacket":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 238
    .restart local v11    # "ipBytes":[B
    .restart local v15    # "packet_len":I
    .restart local v16    # "portBytes":[B
    :cond_c
    const-string v18, "IP"

    .restart local v18    # "sHeaderPacket":Ljava/lang/String;
    goto/16 :goto_3

    .line 262
    :cond_d
    add-int/lit8 v15, v15, 0x1

    .line 263
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    goto/16 :goto_4

    .line 272
    .restart local v10    # "i":I
    .restart local v14    # "packetBytes":[B
    :cond_e
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 271
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 329
    .restart local v9    # "header":[B
    .restart local v12    # "offset":I
    :cond_f
    const-string v8, "13"

    goto :goto_6

    .line 343
    .restart local v7    # "byte_pTelecom":[B
    .restart local v8    # "currTelecom":Ljava/lang/String;
    :cond_10
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 344
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 345
    .local v4, "byte_pJumin":[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v13, v19

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_7

    .line 360
    .end local v4    # "byte_pJumin":[B
    .end local v7    # "byte_pTelecom":[B
    .end local v8    # "currTelecom":Ljava/lang/String;
    .restart local v17    # "ret":B
    :cond_11
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 361
    const/16 v19, 0x1

    sput-boolean v19, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    goto/16 :goto_1
.end method

.method protected static iapSendInitBP(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 16
    .param p0, "init"    # Lcom/feelingk/iap/net/InitConfirm;
    .param p1, "pTelecom"    # I
    .param p2, "applicationID"    # Ljava/lang/String;
    .param p3, "MIN"    # Ljava/lang/String;
    .param p4, "ip"    # [B
    .param p5, "port"    # I

    .prologue
    .line 639
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 642
    .local v10, "portBytes":[B
    const-string v12, "IAPNet"

    const-string v13, "[ DEBUG ] iapSendInitBP()  __ Start"

    invoke-static {v12, v13}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/16 v9, 0xc

    .line 645
    .local v9, "packet_len":I
    add-int/lit8 v9, v9, 0x1

    .line 646
    add-int/lit8 v9, v9, 0x8

    .line 647
    add-int/lit8 v9, v9, 0x1

    .line 648
    add-int/lit8 v9, v9, 0xa

    .line 649
    add-int/lit8 v9, v9, 0xb

    .line 650
    add-int/lit8 v9, v9, 0x1

    .line 651
    if-eqz p4, :cond_0

    .line 652
    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v9, v12, 0x2c

    .line 653
    :cond_0
    add-int/lit8 v9, v9, 0x7

    .line 654
    add-int/lit8 v9, v9, 0xa

    .line 656
    const/4 v12, 0x2

    move/from16 v0, p1

    if-eq v0, v12, :cond_1

    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 657
    :cond_1
    add-int/lit8 v9, v9, 0x2

    .line 659
    add-int/lit8 v9, v9, 0x1

    .line 660
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v9, v12

    .line 663
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 665
    new-array v8, v9, [B

    .line 667
    .local v8, "packetBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v9, :cond_7

    .line 670
    const/4 v6, 0x0

    .line 672
    .local v6, "offset":I
    const-string v12, "IP"

    add-int/lit8 v13, v9, -0xc

    invoke-static {v12, v13}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v4

    .line 675
    .local v4, "header":[B
    const/4 v12, 0x0

    array-length v13, v4

    invoke-static {v4, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    add-int/lit8 v6, v6, 0xc

    .line 678
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    const/16 v12, 0x47

    aput-byte v12, v8, v6

    .line 681
    const-string v12, "IAP11.11.28"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static {v12, v13, v8, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    add-int/lit8 v6, v7, 0x8

    .line 685
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/16 v12, 0x41

    aput-byte v12, v8, v6

    .line 688
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v13, v8, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    add-int/lit8 v6, v7, 0xa

    .line 691
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0xb

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v13, v8, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    add-int/lit8 v6, v6, 0xb

    .line 694
    if-eqz p4, :cond_3

    .line 695
    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v8, v6

    .line 696
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 698
    if-eqz p4, :cond_4

    .line 700
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v6, v12, 0x2c

    .line 703
    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    :cond_4
    add-int/lit8 v6, v6, 0x7

    .line 707
    add-int/lit8 v6, v6, 0xa

    .line 711
    const/4 v12, 0x2

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 713
    :cond_5
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    const-string v3, "12"

    .line 714
    .local v3, "currTelecom":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 715
    .local v2, "byte_pTelecom":[B
    const/4 v12, 0x0

    array-length v13, v2

    invoke-static {v2, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    add-int/lit8 v6, v6, 0x2

    .line 718
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v8, v6

    .line 719
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 720
    .local v1, "byte_pSendBPData":[B
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    array-length v12, v1

    add-int v6, v7, v12

    .line 725
    .end local v1    # "byte_pSendBPData":[B
    .end local v2    # "byte_pTelecom":[B
    .end local v3    # "currTelecom":Ljava/lang/String;
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :cond_6
    add-int/lit8 v12, v9, -0x1

    const/16 v13, 0x17

    aput-byte v13, v8, v12

    .line 727
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapWriteBP([B)B

    move-result v11

    .line 728
    .local v11, "ret":B
    if-eqz v11, :cond_9

    .line 729
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 730
    const-string v12, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 737
    :goto_2
    return-void

    .line 668
    .end local v4    # "header":[B
    .end local v6    # "offset":I
    .end local v11    # "ret":B
    :cond_7
    const/4 v12, 0x0

    aput-byte v12, v8, v5

    .line 667
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 713
    .restart local v4    # "header":[B
    .restart local v6    # "offset":I
    :cond_8
    const-string v3, "13"

    goto :goto_1

    .line 734
    .restart local v11    # "ret":B
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    goto :goto_2
.end method

.method protected static iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 12
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1095
    new-instance v3, Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;-><init>()V

    .line 1097
    .local v3, "itemInfoConfirm":Lcom/feelingk/iap/net/ItemInfoConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendItemInfoQuery()"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const/16 v6, 0xc

    .line 1100
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xa

    .line 1101
    add-int/lit8 v6, v6, 0x1

    .line 1103
    new-array v5, v6, [B

    .line 1104
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1106
    const/4 v4, 0x0

    .line 1108
    .local v4, "offset":I
    const-string v9, "GP"

    const/16 v10, 0xb

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1111
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    add-int/lit8 v4, v4, 0xc

    .line 1114
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1115
    .local v0, "byte_pID":[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1117
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 1119
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 1120
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 1121
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setResultCode(B)V

    .line 1122
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1134
    :goto_1
    return-object v3

    .line 1105
    .end local v0    # "byte_pID":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v2

    .line 1104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    .restart local v0    # "byte_pID":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 1128
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 1129
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1133
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/ItemInfoConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 14
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "bTCash"    # Ljava/lang/Boolean;
    .param p3, "TID"    # Ljava/lang/String;
    .param p4, "BPInfo"    # Ljava/lang/String;
    .param p5, "bUseBPProtocol"    # Ljava/lang/Boolean;

    .prologue
    .line 1153
    new-instance v5, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v5}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1155
    .local v5, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v11, "IAPNet"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[ DEBUG ] iapSendItemPurchase() bUseBPProtocol = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  START !!!!!!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const/16 v8, 0xc

    .line 1158
    .local v8, "packet_len":I
    add-int/lit8 v8, v8, 0xa

    .line 1160
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1162
    const-string v3, "BP"

    .line 1183
    .local v3, "headerParam":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v8, v8, 0x1

    .line 1185
    new-array v7, v8, [B

    .line 1186
    .local v7, "packetBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v8, :cond_8

    .line 1188
    const/4 v6, 0x0

    .line 1190
    .local v6, "offset":I
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1191
    .local v2, "header":[B
    const-string v12, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "[ DEBUG ] iapSendItemPurchase()  bTCash="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "// PName="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p1, :cond_9

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    add-int/lit8 v11, v8, -0xc

    invoke-static {v3, v11}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1200
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    add-int/lit8 v6, v6, 0xc

    .line 1203
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1204
    .local v1, "byte_pID":[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1205
    add-int/lit8 v6, v6, 0xa

    .line 1228
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1230
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1231
    const/16 v11, 0x59

    aput-byte v11, v7, v6

    .line 1235
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 1237
    if-eqz p1, :cond_1

    .line 1238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1241
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 1243
    if-eqz p1, :cond_2

    .line 1244
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1245
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v6, v11, 0x18

    .line 1249
    :cond_2
    if-eqz p3, :cond_3

    .line 1250
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1251
    add-int/lit8 v6, v6, 0x64

    .line 1255
    :cond_3
    if-eqz p4, :cond_4

    .line 1256
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1257
    add-int/lit8 v6, v6, 0x1

    .line 1258
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    .line 1264
    :cond_4
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 1266
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 1267
    .local v10, "ret":B
    if-eqz v10, :cond_b

    .line 1268
    invoke-virtual {v5, v10}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1269
    const-string v11, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1281
    :goto_4
    return-object v5

    .line 1165
    .end local v1    # "byte_pID":[B
    .end local v2    # "header":[B
    .end local v3    # "headerParam":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .end local v7    # "packetBytes":[B
    .end local v10    # "ret":B
    :cond_5
    const-string v3, "HP"

    .line 1167
    .restart local v3    # "headerParam":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 1168
    add-int/lit8 v8, v8, 0x1

    .line 1169
    if-eqz p1, :cond_6

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v8, v11, 0x18

    .line 1172
    :cond_6
    if-eqz p3, :cond_7

    .line 1173
    const-string v3, "OP"

    .line 1174
    add-int/lit8 v8, v8, 0x64

    .line 1175
    add-int/lit8 v8, v8, 0x1

    .line 1178
    :cond_7
    if-eqz p4, :cond_0

    .line 1179
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v8, v11

    goto/16 :goto_0

    .line 1187
    .restart local v4    # "i":I
    .restart local v7    # "packetBytes":[B
    :cond_8
    const/4 v11, 0x0

    aput-byte v11, v7, v4

    .line 1186
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1191
    .restart local v2    # "header":[B
    .restart local v6    # "offset":I
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1233
    .restart local v1    # "byte_pID":[B
    :cond_a
    const/16 v11, 0x4e

    aput-byte v11, v7, v6

    goto/16 :goto_3

    .line 1274
    .restart local v10    # "ret":B
    :cond_b
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 1275
    .local v9, "recv":[B
    invoke-virtual {v5}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_c

    .line 1276
    const-string v11, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 1280
    :cond_c
    invoke-virtual {v5, v9}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_4
.end method

.method protected static iapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 22
    .param p0, "mdn"    # Ljava/lang/String;
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pCarrier"    # I
    .param p4, "TID"    # Ljava/lang/String;
    .param p5, "BPInfo"    # Ljava/lang/String;
    .param p6, "bUseTCash"    # Z
    .param p7, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 1302
    const/16 v18, 0x0

    .line 1304
    .local v18, "useXPProtocol":Z
    const-string v9, "KP"

    .line 1305
    .local v9, "headerParam":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1306
    .local v7, "carrierStr":Ljava/lang/String;
    const/16 v15, 0xc

    .line 1307
    .local v15, "packet_len":I
    new-instance v11, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v11}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1309
    .local v11, "itemPurchaseDanalCfm":Lcom/feelingk/iap/net/MsgConfirm;
    add-int/lit8 v15, v15, 0x1

    .line 1310
    if-eqz p2, :cond_0

    .line 1311
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v15, v19, 0xd

    .line 1313
    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 1314
    :cond_1
    const-string v9, "XP"

    .line 1315
    const/16 v18, 0x1

    .line 1316
    add-int/lit8 v15, v15, 0x64

    .line 1317
    add-int/lit8 v15, v15, 0x1

    .line 1318
    if-eqz p5, :cond_2

    .line 1319
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 1322
    :cond_2
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[ DEBUG ] iapSendItemPurchaseByDanal() STart!! "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    add-int/lit8 v15, v15, 0xa

    .line 1324
    add-int/lit8 v15, v15, 0x2

    .line 1325
    add-int/lit8 v15, v15, 0xb

    .line 1326
    add-int/lit8 v15, v15, 0x1

    .line 1327
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 1328
    add-int/lit8 v15, v15, 0x1

    .line 1329
    add-int/lit8 v15, v15, 0x1

    .line 1332
    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1333
    const-string v7, "12"

    .line 1342
    :goto_0
    new-array v14, v15, [B

    .line 1343
    .local v14, "packetBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v15, :cond_a

    .line 1345
    const/4 v12, 0x0

    .line 1346
    .local v12, "offset":I
    const/4 v8, 0x0

    check-cast v8, [B

    .line 1348
    .local v8, "header":[B
    add-int/lit8 v19, v15, -0xc

    move/from16 v0, v19

    invoke-static {v9, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v8

    .line 1351
    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1352
    add-int/lit8 v12, v12, 0xc

    .line 1355
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1356
    .local v4, "byte_pID":[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    add-int/lit8 v12, v12, 0xa

    .line 1360
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1361
    .local v3, "byte_pCarrier":[B
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1362
    add-int/lit8 v12, v12, 0x2

    .line 1365
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1366
    .local v6, "byte_pMdn":[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1367
    add-int/lit8 v12, v12, 0xb

    .line 1370
    if-eqz p4, :cond_3

    .line 1371
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1372
    add-int/lit8 v12, v12, 0x64

    .line 1376
    :cond_3
    if-eqz p2, :cond_4

    .line 1377
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1378
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 1380
    if-eqz p2, :cond_5

    .line 1381
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1382
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 1385
    :cond_5
    if-eqz v18, :cond_7

    .line 1387
    if-eqz p5, :cond_6

    .line 1388
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1390
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 1392
    if-eqz p5, :cond_7

    .line 1393
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 1399
    :cond_7
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1400
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1401
    .local v5, "byte_pJumin":[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1402
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v13, v19

    .line 1404
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Jumin="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  // Value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    if-eqz p6, :cond_b

    .line 1409
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x59

    aput-byte v19, v14, v12

    move v12, v13

    .line 1413
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :goto_2
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 1416
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 1417
    .local v17, "ret":B
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1418
    if-eqz v17, :cond_c

    .line 1419
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1420
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1433
    :goto_3
    return-object v11

    .line 1335
    .end local v3    # "byte_pCarrier":[B
    .end local v4    # "byte_pID":[B
    .end local v5    # "byte_pJumin":[B
    .end local v6    # "byte_pMdn":[B
    .end local v8    # "header":[B
    .end local v10    # "i":I
    .end local v12    # "offset":I
    .end local v14    # "packetBytes":[B
    .end local v17    # "ret":B
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1336
    const-string v7, "13"

    goto/16 :goto_0

    .line 1339
    :cond_9
    const-string v7, "11"

    goto/16 :goto_0

    .line 1344
    .restart local v10    # "i":I
    .restart local v14    # "packetBytes":[B
    :cond_a
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 1343
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1411
    .restart local v3    # "byte_pCarrier":[B
    .restart local v4    # "byte_pID":[B
    .restart local v5    # "byte_pJumin":[B
    .restart local v6    # "byte_pMdn":[B
    .restart local v8    # "header":[B
    .restart local v12    # "offset":I
    :cond_b
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x4e

    aput-byte v19, v14, v12

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_2

    .line 1425
    .restart local v17    # "ret":B
    :cond_c
    invoke-static {v11}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v16

    .line 1426
    .local v16, "recv":[B
    invoke-virtual {v11}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v19

    if-eqz v19, :cond_d

    .line 1427
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 1431
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 1432
    const-string v19, "IAPNet"

    const-string v20, "[ DEBUG ] iapSendItemPurchaseByDanal()  End !!!!!!!!"

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected static iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 13
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pTID"    # Ljava/lang/String;
    .param p3, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 977
    const-string v2, "LP"

    .line 978
    .local v2, "headerParam":Ljava/lang/String;
    new-instance v4, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v4}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 980
    .local v4, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapSendItemQuery() PID="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const/16 v7, 0xc

    .line 983
    .local v7, "packet_len":I
    add-int/lit8 v7, v7, 0xa

    .line 984
    add-int/lit8 v7, v7, 0x1

    .line 985
    if-eqz p1, :cond_0

    .line 988
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v7, v10, 0x17

    .line 989
    const-string v2, "EP"

    .line 992
    :cond_0
    if-eqz p2, :cond_1

    .line 993
    add-int/lit8 v7, v7, 0x64

    .line 994
    const-string v2, "NP"

    .line 995
    add-int/lit8 v7, v7, 0x1

    .line 998
    :cond_1
    if-eqz p3, :cond_2

    .line 999
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v7, v10

    .line 1002
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1005
    new-array v6, v7, [B

    .line 1006
    .local v6, "packetBytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_7

    .line 1008
    const/4 v5, 0x0

    .line 1010
    .local v5, "offset":I
    const/4 v1, 0x0

    check-cast v1, [B

    .line 1012
    .local v1, "header":[B
    add-int/lit8 v10, v7, -0xc

    invoke-static {v2, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1022
    const/16 v10, 0xc

    invoke-static {v1, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1025
    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v6, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1027
    add-int/lit8 v5, v5, 0xc

    .line 1029
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1030
    .local v0, "byte_pID":[B
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v10, v6, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1032
    add-int/lit8 v5, v5, 0xa

    .line 1043
    if-eqz p1, :cond_3

    .line 1044
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v5

    .line 1045
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 1047
    if-eqz p1, :cond_4

    .line 1048
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v10, v11, v6, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v5, v10, 0x17

    .line 1054
    :cond_4
    if-eqz p2, :cond_5

    .line 1055
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v10, v11, v6, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1056
    add-int/lit8 v5, v5, 0x64

    .line 1057
    add-int/lit8 v5, v5, 0x1

    .line 1060
    :cond_5
    if-eqz p3, :cond_6

    .line 1061
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v5

    .line 1062
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v10, v11, v6, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v5, v10

    .line 1067
    :cond_6
    add-int/lit8 v10, v7, -0x1

    const/16 v11, 0x17

    aput-byte v11, v6, v10

    .line 1069
    invoke-static {v6}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v9

    .line 1070
    .local v9, "ret":B
    if-eqz v9, :cond_8

    .line 1071
    invoke-virtual {v4, v9}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1072
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v4, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1085
    :goto_1
    return-object v4

    .line 1007
    .end local v0    # "byte_pID":[B
    .end local v1    # "header":[B
    .end local v5    # "offset":I
    .end local v9    # "ret":B
    :cond_7
    const/4 v10, 0x0

    aput-byte v10, v6, v3

    .line 1006
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1077
    .restart local v0    # "byte_pID":[B
    .restart local v1    # "header":[B
    .restart local v5    # "offset":I
    .restart local v9    # "ret":B
    :cond_8
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v8

    .line 1078
    .local v8, "recv":[B
    invoke-virtual {v4}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v10

    if-eqz v10, :cond_9

    .line 1079
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v4, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1084
    :cond_9
    invoke-virtual {v4, v8}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendItemUse(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 12
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1496
    new-instance v3, Lcom/feelingk/iap/net/ItemUseConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/ItemUseConfirm;-><init>()V

    .line 1499
    .local v3, "itemUseConfirmMsg":Lcom/feelingk/iap/net/ItemUseConfirm;
    const/16 v6, 0xc

    .line 1500
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xa

    .line 1501
    add-int/lit8 v6, v6, 0x1

    .line 1503
    new-array v5, v6, [B

    .line 1504
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1506
    const/4 v4, 0x0

    .line 1508
    .local v4, "offset":I
    const-string v9, "MP"

    const/16 v10, 0xb

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1511
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1512
    add-int/lit8 v4, v4, 0xc

    .line 1514
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1515
    .local v0, "byte_pID":[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1517
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 1519
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 1520
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 1521
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/ItemUseConfirm;->setResultCode(B)V

    .line 1522
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemUseConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1535
    :goto_1
    return-object v3

    .line 1505
    .end local v0    # "byte_pID":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v2

    .line 1504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1527
    .restart local v0    # "byte_pID":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 1528
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemUseConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 1529
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemUseConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1534
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/ItemUseConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendItemWholeAuth()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1451
    new-instance v2, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    invoke-direct {v2}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;-><init>()V

    .line 1453
    .local v2, "itemWholeAutchConfirm":Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendItemWholeAuth()"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const/16 v5, 0xc

    .line 1456
    .local v5, "packet_len":I
    add-int/lit8 v5, v5, 0x1

    .line 1458
    new-array v4, v5, [B

    .line 1459
    .local v4, "packetBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 1461
    const/4 v3, 0x0

    .line 1463
    .local v3, "offset":I
    const-string v8, "AP"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1466
    .local v0, "header":[B
    array-length v8, v0

    invoke-static {v0, v10, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1468
    const/16 v8, 0xc

    const/16 v9, 0x17

    aput-byte v9, v4, v8

    .line 1470
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v7

    .line 1471
    .local v7, "ret":B
    if-eqz v7, :cond_1

    .line 1472
    invoke-virtual {v2, v7}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->setResultCode(B)V

    .line 1473
    const-string v8, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v2, v8}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1486
    :goto_1
    return-object v2

    .line 1460
    .end local v0    # "header":[B
    .end local v3    # "offset":I
    .end local v7    # "ret":B
    :cond_0
    aput-byte v10, v4, v1

    .line 1459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    .restart local v0    # "header":[B
    .restart local v3    # "offset":I
    .restart local v7    # "ret":B
    :cond_1
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v6

    .line 1479
    .local v6, "recv":[B
    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->getResultCode()B

    move-result v8

    if-eqz v8, :cond_2

    .line 1480
    const-string v8, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v2, v8}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1485
    :cond_2
    invoke-virtual {v2, v6}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static declared-synchronized iapWrite([B)B
    .locals 6
    .param p0, "sendBuf"    # [B

    .prologue
    const/4 v1, 0x0

    .line 403
    const-class v2, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v2

    :try_start_0
    const-string v3, "IAPNet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ DEBUG ] iapWrite connect("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->connect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 405
    const/4 v1, -0x2

    .line 424
    :goto_0
    monitor-exit v2

    return v1

    .line 408
    :cond_0
    :try_start_1
    array-length v3, p0

    invoke-static {p0, v3}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-virtual {v3, p0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 411
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    :try_start_3
    const-string v3, "IAPNet"

    const-string v4, "[ DEBUG ] iapWrite End  "

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_4
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ Exception ] iapWrite() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 416
    const/16 v1, -0xc

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ Exception ] iapWrite() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 420
    const/4 v1, -0x4

    goto :goto_0
.end method

.method protected static declared-synchronized iapWriteBP([B)B
    .locals 6
    .param p0, "sendBuf"    # [B

    .prologue
    const/4 v1, 0x0

    .line 747
    const-class v2, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 748
    const/4 v1, -0x2

    .line 761
    :goto_0
    monitor-exit v2

    return v1

    .line 752
    :cond_0
    :try_start_1
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-virtual {v3, p0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 753
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ DEBUG ] iapWriteBP() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 758
    const/4 v1, -0x4

    goto :goto_0

    .line 747
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static isConnect()Z
    .locals 1

    .prologue
    .line 939
    sget-boolean v0, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    return v0
.end method

.method protected static isWifi()Z
    .locals 1

    .prologue
    .line 946
    sget-boolean v0, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    return v0
.end method

.method protected static setWifi(Z)V
    .locals 0
    .param p0, "isWifi"    # Z

    .prologue
    .line 954
    sput-boolean p0, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    .line 955
    return-void
.end method
