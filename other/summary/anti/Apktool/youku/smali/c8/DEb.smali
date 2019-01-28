.class public Lc8/DEb;
.super Lc8/zEb;
.source "AlarmConfig.java"


# annotations
.annotation runtime Lc8/fAb;
    value = "ap_alarm"
.end annotation


# instance fields
.field protected failSampling:I
    .annotation runtime Lc8/dAb;
        value = "fcp"
    .end annotation
.end field

.field protected successSampling:I
    .annotation runtime Lc8/dAb;
        value = "scp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lc8/zEb;-><init>()V

    .line 13
    iput v0, p0, Lc8/DEb;->successSampling:I

    .line 15
    iput v0, p0, Lc8/DEb;->failSampling:I

    return-void
.end method

.method private checkSelfSampling(IZ)Z
    .locals 7
    .param p1, "samplingSeed"    # I
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-eqz p2, :cond_2

    .line 45
    const-string/jumbo v2, ""

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "samplingSeed"

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, "sampling"

    aput-object v4, v3, v5

    iget v4, p0, Lc8/DEb;->successSampling:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget v2, p0, Lc8/DEb;->successSampling:I

    if-ge p1, v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v2, ""

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "samplingSeed"

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, "sampling"

    aput-object v4, v3, v5

    iget v4, p0, Lc8/DEb;->failSampling:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget v2, p0, Lc8/DEb;->failSampling:I

    if-lt p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private sampling(ILjava/util/ArrayList;Z)Z
    .locals 2
    .param p1, "samplingSeed"    # I
    .param p3, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    invoke-direct {p0, p1, p3}, Lc8/DEb;->checkSelfSampling(IZ)Z

    move-result v1

    .line 38
    :goto_0
    return v1

    .line 34
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "nextkey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/DEb;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p0, v0}, Lc8/DEb;->getNext(Ljava/lang/String;)Lc8/zEb;

    move-result-object v1

    check-cast v1, Lc8/DEb;

    invoke-direct {v1, p1, p2, p3}, Lc8/DEb;->sampling(ILjava/util/ArrayList;Z)Z

    move-result v1

    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0, p1, p3}, Lc8/DEb;->checkSelfSampling(IZ)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 6
    .param p1, "samplingSeed"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "isSuccess"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/DEb;->isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 2
    .param p1, "samplingSeed"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "isSuccess"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 19
    .local p5, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lc8/DEb;->sampling(ILjava/util/ArrayList;Z)Z

    move-result v1

    return v1
.end method

.method public setSampling(I)V
    .locals 0
    .param p1, "sampling"    # I

    .prologue
    .line 54
    iput p1, p0, Lc8/DEb;->successSampling:I

    .line 55
    iput p1, p0, Lc8/DEb;->failSampling:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlarmConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/DEb;->module:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, ", monitorPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/DEb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, ", offline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/DEb;->offline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, ", failSampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/DEb;->failSampling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, ", successSampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/DEb;->successSampling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
