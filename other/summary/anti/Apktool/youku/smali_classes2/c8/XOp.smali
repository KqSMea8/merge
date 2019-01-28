.class public Lc8/XOp;
.super Lc8/VOp;
.source "OpenNetworkConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.OpenNetworkConverter"

.field private static final headerConversionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 22
    sput-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-act"

    const-string/jumbo v2, "accessToken"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-wuat"

    const-string/jumbo v2, "wua"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-sid"

    const-string/jumbo v2, "sid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-t"

    const-string/jumbo v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-appkey"

    const-string/jumbo v2, "appKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-ttid"

    const-string/jumbo v2, "ttid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-utdid"

    const-string/jumbo v2, "utdid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-sign"

    const-string/jumbo v2, "sign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-pv"

    const-string/jumbo v2, "pv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-uid"

    const-string/jumbo v2, "uid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-features"

    const-string/jumbo v2, "x-features"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "x-app-ver"

    const-string/jumbo v2, "x-app-ver"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    const-string/jumbo v1, "user-agent"

    const-string/jumbo v2, "user-agent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/VOp;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHeaderConversionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lc8/XOp;->headerConversionMap:Ljava/util/Map;

    return-object v0
.end method
