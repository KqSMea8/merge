.class public Lc8/kEb;
.super Ljava/lang/Object;
.source "MetricRepo.java"


# static fields
.field private static final INIT_SIZE:I = 0x3

.field private static instance:Lc8/kEb;


# instance fields
.field public metrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/jEb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/kEb;->metrics:Ljava/util/List;

    .line 32
    return-void
.end method

.method public static getRepo()Lc8/kEb;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lc8/kEb;->instance:Lc8/kEb;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lc8/kEb;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc8/kEb;-><init>(I)V

    sput-object v0, Lc8/kEb;->instance:Lc8/kEb;

    .line 23
    :cond_0
    sget-object v0, Lc8/kEb;->instance:Lc8/kEb;

    return-object v0
.end method

.method public static getRepo(I)Lc8/kEb;
    .locals 1
    .param p0, "capacity"    # I

    .prologue
    .line 27
    new-instance v0, Lc8/kEb;

    invoke-direct {v0, p0}, Lc8/kEb;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public add(Lc8/jEb;)V
    .locals 1
    .param p1, "metric"    # Lc8/jEb;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    iget-object v0, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lc8/kEb;->metrics:Ljava/util/List;

    if-nez v3, :cond_2

    .line 50
    :cond_0
    const/4 v2, 0x0

    .line 66
    :cond_1
    :goto_0
    return-object v2

    .line 52
    :cond_2
    iget-object v3, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 54
    iget-object v3, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/jEb;

    .line 55
    .local v2, "metric":Lc8/jEb;
    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {v2}, Lc8/jEb;->getModule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lc8/jEb;->getMonitorPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v2    # "metric":Lc8/jEb;
    :cond_4
    invoke-static {}, Lc8/tEb;->getInstance()Lc8/tEb;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lc8/tEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v2

    .line 63
    .restart local v2    # "metric":Lc8/jEb;
    if-eqz v2, :cond_1

    .line 64
    iget-object v3, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Lc8/jEb;)Z
    .locals 1
    .param p1, "metric"    # Lc8/jEb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/kEb;->metrics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
