.class public Lc8/GEb;
.super Lc8/zEb;
.source "StatConfig.java"


# annotations
.annotation runtime Lc8/fAb;
    value = "ap_stat"
.end annotation


# instance fields
.field public detail:I
    .annotation runtime Lc8/dAb;
        value = "detail"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lc8/zEb;-><init>()V

    return-void
.end method

.method private detail(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lc8/GEb;->isDetail()Z

    move-result v1

    .line 36
    :goto_0
    return v1

    .line 32
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "nextkey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/GEb;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {p0, v0}, Lc8/GEb;->getNext(Ljava/lang/String;)Lc8/zEb;

    move-result-object v1

    check-cast v1, Lc8/GEb;

    invoke-direct {v1, p1}, Lc8/GEb;->detail(Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lc8/GEb;->isDetail()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public isDetail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14
    iget v1, p0, Lc8/GEb;->detail:I

    if-ne v1, v0, :cond_0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDetail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-direct {p0, v0}, Lc8/GEb;->detail(Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method
