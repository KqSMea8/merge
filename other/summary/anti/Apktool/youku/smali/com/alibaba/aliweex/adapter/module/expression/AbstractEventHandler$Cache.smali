.class public Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;
.super Ljava/util/LinkedHashMap;
.source "AbstractEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Arb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
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
.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .local p0, "this":Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;, "Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache<TK;TV;>;"
    const/4 v2, 0x4

    .line 235
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 236
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;->maxSize:I

    .line 237
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .prologue
    .line 241
    .local p0, "this":Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;, "Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/aliweex/adapter/module/expression/AbstractEventHandler$Cache;->maxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
