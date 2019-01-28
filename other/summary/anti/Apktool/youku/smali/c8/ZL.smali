.class public Lc8/ZL;
.super Ljava/lang/Object;
.source "RequestPriorityTable.java"


# static fields
.field private static extPriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x6

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sput-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "jar"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "json"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "html"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "htm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "css"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "js"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "webp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "png"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "jpg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "do"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "zip"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v1, "bin"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Lc8/eK;)I
    .locals 5
    .param p0, "request"    # Lc8/eK;

    .prologue
    const/4 v2, 0x6

    .line 44
    if-nez p0, :cond_0

    .line 45
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "url is null!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_0
    invoke-virtual {p0}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "x-pv"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    const/4 v2, 0x1

    .line 61
    :cond_1
    :goto_0
    return v2

    .line 52
    :cond_2
    invoke-virtual {p0}, Lc8/eK;->getHttpUrl()Lc8/XL;

    move-result-object v3

    invoke-virtual {v3}, Lc8/XL;->path()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/RL;->trySolveFileExtFromUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "ext":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 57
    sget-object v3, Lc8/ZL;->extPriorityMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 58
    .local v1, "priority":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
