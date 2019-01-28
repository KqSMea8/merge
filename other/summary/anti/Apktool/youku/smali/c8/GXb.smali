.class public Lc8/GXb;
.super Ljava/lang/Object;
.source "HashArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/util/ArrayList",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/GXb;->mHashMap:Ljava/util/HashMap;

    .line 20
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/ArrayList",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lc8/GXb;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/util/ArrayList",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<TK;TV;>;"
    iget-object v0, p0, Lc8/GXb;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lc8/GXb;->get(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 28
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .restart local v0    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Lc8/GXb;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
