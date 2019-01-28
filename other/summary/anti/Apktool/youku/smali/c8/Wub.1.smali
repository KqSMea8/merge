.class public Lc8/Wub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefetchEntry"
.end annotation


# instance fields
.field ignoreParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastModified:J

.field maxAge:J

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p2, "ignoreParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Lc8/Wub;->url:Ljava/lang/String;

    .line 554
    iput-object p2, p0, Lc8/Wub;->ignoreParams:Ljava/util/List;

    .line 555
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    if-ne p0, p1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v1

    .line 564
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 566
    check-cast v0, Lc8/Wub;

    .line 568
    .local v0, "entry":Lc8/Wub;
    iget-object v3, p0, Lc8/Wub;->url:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lc8/Wub;->url:Ljava/lang/String;

    iget-object v4, v0, Lc8/Wub;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lc8/Wub;->url:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 569
    :cond_6
    iget-object v3, p0, Lc8/Wub;->ignoreParams:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v1, p0, Lc8/Wub;->ignoreParams:Ljava/util/List;

    iget-object v2, v0, Lc8/Wub;->ignoreParams:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lc8/Wub;->ignoreParams:Ljava/util/List;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v2, p0, Lc8/Wub;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Wub;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 576
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lc8/Wub;->ignoreParams:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lc8/Wub;->ignoreParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 577
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 575
    goto :goto_0
.end method

.method isFresh()Z
    .locals 4

    .prologue
    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/Wub;->lastModified:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc8/Wub;->maxAge:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
