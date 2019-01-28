.class public Lanet/channel/strategy/utils/SerialLruCache;
.super Ljava/util/LinkedHashMap;
.source "SerialLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c1d15c012bf5f6eL


# instance fields
.field private cacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "cacheSize"    # I

    .prologue
    .line 19
    .local p0, "this":Lanet/channel/strategy/utils/SerialLruCache;, "Lanet/channel/strategy/utils/SerialLruCache<TK;TV;>;"
    add-int/lit8 v0, p1, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 20
    iput p1, p0, Lanet/channel/strategy/utils/SerialLruCache;->cacheSize:I

    .line 21
    return-void
.end method


# virtual methods
.method protected entryRemoved(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lanet/channel/strategy/utils/SerialLruCache;, "Lanet/channel/strategy/utils/SerialLruCache<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lanet/channel/strategy/utils/SerialLruCache;, "Lanet/channel/strategy/utils/SerialLruCache<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lanet/channel/strategy/utils/SerialLruCache;->size()I

    move-result v0

    iget v1, p0, Lanet/channel/strategy/utils/SerialLruCache;->cacheSize:I

    if-le v0, v1, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lanet/channel/strategy/utils/SerialLruCache;->entryRemoved(Ljava/util/Map$Entry;)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
