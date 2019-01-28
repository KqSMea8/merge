.class public Lc8/Hnb;
.super Ljava/lang/Object;
.source "ALPCacheManager.java"


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/Hnb;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultVal"    # Ljava/lang/Object;

    .prologue
    .line 25
    if-nez p0, :cond_1

    .line 26
    const-string/jumbo v0, "ALPCacheManager"

    const-string/jumbo v1, "getData"

    const-string/jumbo v2, "key is null"

    invoke-static {v0, v1, v2}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .end local p1    # "defaultVal":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultVal":Ljava/lang/Object;
    :cond_1
    sget-object v0, Lc8/Hnb;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Hnb;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public static putData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 18
    :cond_0
    const-string/jumbo v0, "ALPCacheManager"

    const-string/jumbo v1, "putData"

    const-string/jumbo v2, "key/val is null"

    invoke-static {v0, v1, v2}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_1
    sget-object v0, Lc8/Hnb;->cache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static removeData(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string/jumbo v0, "ALPCacheManager"

    const-string/jumbo v1, "removeData"

    const-string/jumbo v2, "key is null"

    invoke-static {v0, v1, v2}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    sget-object v0, Lc8/Hnb;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
