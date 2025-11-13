.class public Lcom/amazon/inapp/purchasing/KiwiLogHandler;
.super Ljava/lang/Object;
.source "KiwiLogHandler.java"

# interfaces
.implements Lcom/amazon/inapp/purchasing/LogHandler;


# static fields
.field private static volatile LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "In App Purchasing SDK - Production Mode"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    invoke-static {p1, p2}, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public isErrorOn()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public isTestOn()Z
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/amazon/android/framework/util/KiwiLogger;->isTestEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceOn()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public test(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    invoke-static {p1, p2}, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    invoke-static {p1, p2}, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    .line 30
    return-void
.end method
