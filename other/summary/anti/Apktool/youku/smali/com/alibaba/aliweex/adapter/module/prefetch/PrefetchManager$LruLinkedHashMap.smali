.class public Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "PrefetchManager.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LruLinkedHashMap"
.end annotation

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


# instance fields
.field maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;, "Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 641
    iput p1, p0, Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;->maxSize:I

    .line 642
    return-void
.end method


# virtual methods
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
    .line 646
    .local p0, "this":Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;, "Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;->maxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
