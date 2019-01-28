.class public abstract Lc8/pTe;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lc8/pTe;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lc8/QSe;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc8/pTe;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lc8/FSe;Ljava/lang/String;)V
.end method

.method public abstract apply(Lc8/xSe;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract connectionBecameIdle(Lc8/uSe;Lc8/gVe;)Z
.end method

.method public abstract get(Lc8/uSe;Lc8/XRe;Lc8/aVe;)Lc8/gVe;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lc8/JSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract internalCache(Lc8/QSe;)Lc8/qTe;
.end method

.method public abstract put(Lc8/uSe;Lc8/gVe;)V
.end method

.method public abstract routeDatabase(Lc8/uSe;)Lc8/yTe;
.end method
