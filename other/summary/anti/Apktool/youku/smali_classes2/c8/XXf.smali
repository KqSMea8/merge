.class public Lc8/XXf;
.super Ljava/lang/Object;
.source "ApplyStyleConsumer.java"

# interfaces
.implements Lc8/GYf;


# static fields
.field static sInstance:Lc8/XXf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lc8/XXf;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lc8/XXf;->sInstance:Lc8/XXf;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lc8/XXf;

    invoke-direct {v0}, Lc8/XXf;-><init>()V

    sput-object v0, Lc8/XXf;->sInstance:Lc8/XXf;

    .line 33
    :cond_0
    sget-object v0, Lc8/XXf;->sInstance:Lc8/XXf;

    return-object v0
.end method


# virtual methods
.method public accept(Lc8/HYf;)V
    .locals 6
    .param p1, "dom"    # Lc8/HYf;

    .prologue
    .line 43
    invoke-virtual {p1}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v3

    .line 46
    .local v3, "style":Lc8/PYf;
    invoke-virtual {p1}, Lc8/HYf;->getDefaultStyle()Ljava/util/Map;

    move-result-object v0

    .line 47
    .local v0, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/PYf;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 56
    invoke-virtual {p1}, Lc8/HYf;->applyStyleToNode()V

    .line 58
    :cond_2
    return-void
.end method
