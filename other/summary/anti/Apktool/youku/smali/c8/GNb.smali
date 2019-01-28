.class public Lc8/GNb;
.super Ljava/lang/Object;
.source "KaleidoscopeCache.java"


# instance fields
.field private kaleidoscopeViewHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/SNb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/GNb;->kaleidoscopeViewHashMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lc8/SNb;
    .locals 1
    .param p1, "typeCode"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/GNb;->kaleidoscopeViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SNb;

    return-object v0
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "typeCode"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/GNb;->kaleidoscopeViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Lc8/SNb;)V
    .locals 1
    .param p1, "typeCode"    # Ljava/lang/String;
    .param p2, "kaleidoView"    # Lc8/SNb;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/GNb;->kaleidoscopeViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public remove(Ljava/lang/String;)Lc8/SNb;
    .locals 1
    .param p1, "typeCode"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/GNb;->kaleidoscopeViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SNb;

    return-object v0
.end method
