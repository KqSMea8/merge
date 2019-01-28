.class public Lc8/Pzb;
.super Lc8/Gzb;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mzb;,
        Lc8/Nzb;,
        Lc8/Ozb;
    }
.end annotation


# static fields
.field private static s_instance:Lc8/Pzb;


# instance fields
.field private mSampleItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Nzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lc8/Pzb;->s_instance:Lc8/Pzb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/Gzb;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Pzb;->mSampleItemMap:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private _getSampleResult(ILjava/lang/String;)Lc8/Ozb;
    .locals 4
    .param p1, "aEventID"    # I
    .param p2, "aArg1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "lEventIDStr":Ljava/lang/String;
    new-instance v2, Lc8/Ozb;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc8/Ozb;-><init>(Lc8/Mzb;)V

    .line 113
    .local v2, "lResult":Lc8/Ozb;
    iget-object v3, p0, Lc8/Pzb;->mSampleItemMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lc8/Pzb;->mSampleItemMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Nzb;

    .line 115
    .local v1, "lItem":Lc8/Nzb;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/Ozb;->setIsRuleExist(Z)V

    .line 116
    invoke-virtual {v1, p2}, Lc8/Nzb;->isSampleSuccess(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lc8/Ozb;->setResult(Z)V

    .line 120
    .end local v1    # "lItem":Lc8/Nzb;
    :goto_0
    return-object v2

    .line 119
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/Ozb;->setResult(Z)V

    goto :goto_0
.end method

.method public static getInstance()Lc8/Pzb;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lc8/Pzb;->s_instance:Lc8/Pzb;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lc8/Pzb;

    invoke-direct {v0}, Lc8/Pzb;-><init>()V

    sput-object v0, Lc8/Pzb;->s_instance:Lc8/Pzb;

    .line 25
    :cond_0
    sget-object v0, Lc8/Pzb;->s_instance:Lc8/Pzb;

    return-object v0
.end method


# virtual methods
.method public getOrangeGroupnames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ut_sample"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public declared-synchronized isSampleSuccess(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lc8/Pzb;->mSampleItemMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 106
    :goto_0
    monitor-exit p0

    return v4

    .line 47
    :cond_0
    const/4 v2, -0x1

    .line 48
    .local v2, "lEventID":I
    :try_start_1
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    :try_start_2
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 56
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 57
    .local v1, "lArg1":Ljava/lang/String;
    :try_start_3
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lArg1":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 61
    .restart local v1    # "lArg1":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2, v1}, Lc8/Pzb;->_getSampleResult(ILjava/lang/String;)Lc8/Ozb;

    move-result-object v3

    .line 62
    .local v3, "lResult":Lc8/Ozb;
    invoke-virtual {v3}, Lc8/Ozb;->getResult()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 63
    goto :goto_0

    .line 51
    .end local v1    # "lArg1":Ljava/lang/String;
    .end local v3    # "lResult":Lc8/Ozb;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lEventID":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 65
    .restart local v1    # "lArg1":Ljava/lang/String;
    .restart local v2    # "lEventID":I
    .restart local v3    # "lResult":Lc8/Ozb;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Lc8/Ozb;->isRuleExist()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    .line 66
    goto :goto_0

    .line 70
    :cond_4
    rem-int/lit8 v4, v2, 0xa

    sub-int v4, v2, v4

    invoke-direct {p0, v4, v1}, Lc8/Pzb;->_getSampleResult(ILjava/lang/String;)Lc8/Ozb;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lc8/Ozb;->getResult()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    .line 72
    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v3}, Lc8/Ozb;->isRuleExist()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v6

    .line 75
    goto :goto_0

    .line 79
    :cond_6
    rem-int/lit8 v4, v2, 0x64

    sub-int v4, v2, v4

    invoke-direct {p0, v4, v1}, Lc8/Pzb;->_getSampleResult(ILjava/lang/String;)Lc8/Ozb;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lc8/Ozb;->getResult()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 81
    goto/16 :goto_0

    .line 83
    :cond_7
    invoke-virtual {v3}, Lc8/Ozb;->isRuleExist()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v6

    .line 84
    goto/16 :goto_0

    .line 88
    :cond_8
    rem-int/lit16 v4, v2, 0x3e8

    sub-int v4, v2, v4

    invoke-direct {p0, v4, v1}, Lc8/Pzb;->_getSampleResult(ILjava/lang/String;)Lc8/Ozb;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lc8/Ozb;->getResult()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    .line 90
    goto/16 :goto_0

    .line 92
    :cond_9
    invoke-virtual {v3}, Lc8/Ozb;->isRuleExist()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    .line 93
    goto/16 :goto_0

    .line 97
    :cond_a
    const/4 v4, -0x1

    invoke-direct {p0, v4, v1}, Lc8/Pzb;->_getSampleResult(ILjava/lang/String;)Lc8/Ozb;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lc8/Ozb;->getResult()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 99
    goto/16 :goto_0

    .line 101
    :cond_b
    invoke-virtual {v3}, Lc8/Ozb;->isRuleExist()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    move v4, v6

    .line 102
    goto/16 :goto_0

    :cond_c
    move v4, v6

    .line 106
    goto/16 :goto_0
.end method

.method public onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    .locals 0
    .param p1, "aGroupname"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lc8/Gzb;->onNonOrangeConfigurationArrive(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public declared-synchronized onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "aGroupname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "aConfContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lc8/Pzb;->mSampleItemMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 131
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    .local v1, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, "lKey":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, "lValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 136
    invoke-static {v3}, Lc8/Nzb;->parseJson(Ljava/lang/String;)Lc8/Nzb;

    move-result-object v2

    .line 137
    .local v2, "lUTSampleItem":Lc8/Nzb;
    if-eqz v2, :cond_0

    .line 138
    iget-object v4, p0, Lc8/Pzb;->mSampleItemMap:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "lKey":Ljava/lang/String;
    .end local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "lUTSampleItem":Lc8/Nzb;
    .end local v3    # "lValue":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 142
    .restart local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public resetSampleItemMap()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Pzb;->mSampleItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    return-void
.end method
