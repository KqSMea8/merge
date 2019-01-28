.class public Lc8/cNp;
.super Ljava/lang/Object;
.source "UnitDuplexFilter.java"

# interfaces
.implements Lc8/JMp;
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.UnitDuplexFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 4
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 65
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/oOp;->isGlobalUnitSwitchOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string/jumbo v1, "mtopsdk.UnitDuplexFilter"

    iget-object v2, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v3, "unitSwitchOpen is false"

    invoke-static {v1, v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    const-string/jumbo v1, "CONTINUE"

    .line 77
    :goto_0
    return-object v1

    .line 73
    :cond_1
    iget-object v1, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v1

    iget-object v0, v1, Lc8/kOp;->unitService:Lc8/cPp;

    .line 74
    .local v0, "unitService":Lc8/cPp;
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0, p1}, Lc8/cPp;->updateAndStoreUnitInfo(Lc8/IMp;)V

    .line 77
    :cond_2
    const-string/jumbo v1, "CONTINUE"

    goto :goto_0
.end method

.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 8
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 32
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v5

    invoke-virtual {v5}, Lc8/oOp;->isGlobalUnitSwitchOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 33
    const-string/jumbo v5, "mtopsdk.UnitDuplexFilter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v7, "unitSwitchOpen is false"

    invoke-static {v5, v6, v7}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v5, "CONTINUE"

    .line 59
    :goto_0
    return-object v5

    .line 37
    :cond_0
    iget-object v5, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v5}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    .line 38
    .local v0, "mtopConfig":Lc8/kOp;
    iget-object v2, v0, Lc8/kOp;->unitService:Lc8/cPp;

    .line 39
    .local v2, "unitService":Lc8/cPp;
    if-eqz v2, :cond_2

    .line 41
    iget-object v5, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v3, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    .line 42
    .local v3, "userId":Ljava/lang/String;
    invoke-static {v3}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    iget-object v5, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v5}, Lc8/AOp;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 46
    :cond_1
    iget-object v5, v0, Lc8/kOp;->utdid:Ljava/lang/String;

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    invoke-interface {v2, v3, v5, v6}, Lc8/cPp;->getUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "unitPrefix":Ljava/lang/String;
    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 50
    new-instance v4, Lmtopsdk/mtop/unit/UserUnit;

    sget-object v5, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    const-string/jumbo v6, ""

    invoke-direct {v4, v3, v5, v6}, Lmtopsdk/mtop/unit/UserUnit;-><init>(Ljava/lang/String;Lmtopsdk/mtop/unit/UserUnit$UnitType;Ljava/lang/String;)V

    .line 54
    .local v4, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :goto_1
    iget-object v5, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v4, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    .line 59
    .end local v1    # "unitPrefix":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :cond_2
    const-string/jumbo v5, "CONTINUE"

    goto :goto_0

    .line 52
    .restart local v1    # "unitPrefix":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    :cond_3
    new-instance v4, Lmtopsdk/mtop/unit/UserUnit;

    sget-object v5, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-direct {v4, v3, v5, v1}, Lmtopsdk/mtop/unit/UserUnit;-><init>(Ljava/lang/String;Lmtopsdk/mtop/unit/UserUnit$UnitType;Ljava/lang/String;)V

    .restart local v4    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "mtopsdk.UnitDuplexFilter"

    return-object v0
.end method
