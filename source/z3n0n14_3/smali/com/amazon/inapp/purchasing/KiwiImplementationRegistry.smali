.class final Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;
.super Ljava/lang/Object;
.source "KiwiImplementationRegistry.java"

# interfaces
.implements Lcom/amazon/inapp/purchasing/ImplementationRegistry;


# static fields
.field private static final classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;->classMap:Ljava/util/Map;

    .line 16
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/RequestHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/ResponseHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/KiwiResponseHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/LogHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/KiwiLogHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImplementation(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;->classMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
