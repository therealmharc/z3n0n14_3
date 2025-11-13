.class Lcom/amazon/inapp/purchasing/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/inapp/purchasing/LogHandler;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method static isErrorOn()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/inapp/purchasing/LogHandler;->isErrorOn()Z

    move-result v0

    return v0
.end method

.method static isTestOn()Z
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/inapp/purchasing/LogHandler;->isTestOn()Z

    move-result v0

    return v0
.end method

.method static isTraceOn()Z
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/inapp/purchasing/LogHandler;->isTraceOn()Z

    move-result v0

    return v0
.end method

.method static test(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTestOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/inapp/purchasing/LogHandler;->test(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/inapp/purchasing/LogHandler;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
