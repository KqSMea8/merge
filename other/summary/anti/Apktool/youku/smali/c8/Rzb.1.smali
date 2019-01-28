.class public Lc8/Rzb;
.super Lc8/Gzb;
.source "UTStreamConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Qzb;
    }
.end annotation


# static fields
.field private static s_instance:Lc8/Rzb;


# instance fields
.field private mStreamItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Qzb;",
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

    sput-object v0, Lc8/Rzb;->s_instance:Lc8/Rzb;

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

    iput-object v0, p0, Lc8/Rzb;->mStreamItemMap:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private _getStreamName(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aEventID"    # I
    .param p2, "aArg1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "lEventIDStr":Ljava/lang/String;
    iget-object v2, p0, Lc8/Rzb;->mStreamItemMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lc8/Rzb;->mStreamItemMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qzb;

    .line 81
    .local v1, "lItem":Lc8/Qzb;
    invoke-virtual {v1, p2}, Lc8/Qzb;->getStmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .end local v1    # "lItem":Lc8/Qzb;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lc8/Rzb;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lc8/Rzb;->s_instance:Lc8/Rzb;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lc8/Rzb;

    invoke-direct {v0}, Lc8/Rzb;-><init>()V

    sput-object v0, Lc8/Rzb;->s_instance:Lc8/Rzb;

    .line 25
    :cond_0
    sget-object v0, Lc8/Rzb;->s_instance:Lc8/Rzb;

    return-object v0
.end method


# virtual methods
.method public getOrangeGroupnames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ut_stream"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public declared-synchronized getStreamName(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v2, -0x1

    .line 45
    .local v2, "lEventID":I
    :try_start_0
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    :try_start_1
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 53
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 54
    .local v1, "lArg1":Ljava/lang/String;
    :try_start_2
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lArg1":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 58
    .restart local v1    # "lArg1":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2, v1}, Lc8/Rzb;->_getStreamName(ILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 59
    .local v3, "lResult":Ljava/lang/String;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 73
    :goto_1
    monitor-exit p0

    return-object v4

    .line 48
    .end local v1    # "lArg1":Ljava/lang/String;
    .end local v3    # "lResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 61
    .restart local v1    # "lArg1":Ljava/lang/String;
    .restart local v3    # "lResult":Ljava/lang/String;
    :cond_2
    :try_start_4
    rem-int/lit8 v4, v2, 0xa

    sub-int v4, v2, v4

    invoke-direct {p0, v4, v1}, Lc8/Rzb;->_getStreamName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_1

    .line 64
    :cond_3
    rem-int/lit8 v4, v2, 0x64

    sub-int v4, v2, v4

    invoke-direct {p0, v4, v1}, Lc8/Rzb;->_getStreamName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_4

    move-object v4, v3

    goto :goto_1

    .line 67
    :cond_4
    rem-int/lit16 v4, v2, 0x3e8

    sub-int v4, v2, v4

    invoke-direct {p0, v4, v1}, Lc8/Rzb;->_getStreamName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_5

    move-object v4, v3

    goto :goto_1

    .line 70
    :cond_5
    const/4 v4, -0x1

    invoke-direct {p0, v4, v1}, Lc8/Rzb;->_getStreamName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_6

    move-object v4, v3

    goto :goto_1

    .line 73
    :cond_6
    const-string/jumbo v4, "stm_d"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    .locals 0
    .param p1, "aGroupname"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lc8/Gzb;->onNonOrangeConfigurationArrive(Ljava/lang/String;)V

    .line 89
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
    .line 93
    .local p2, "aConfContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lc8/Rzb;->mStreamItemMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 94
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 95
    .local v1, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "lKey":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "lValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 99
    invoke-static {v3}, Lc8/Qzb;->parseJson(Ljava/lang/String;)Lc8/Qzb;

    move-result-object v2

    .line 100
    .local v2, "lUTSampleItem":Lc8/Qzb;
    if-eqz v2, :cond_0

    .line 101
    iget-object v4, p0, Lc8/Rzb;->mStreamItemMap:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "lKey":Ljava/lang/String;
    .end local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "lUTSampleItem":Lc8/Qzb;
    .end local v3    # "lValue":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 105
    .restart local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public resetStreamItemMap()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Rzb;->mStreamItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    return-void
.end method
