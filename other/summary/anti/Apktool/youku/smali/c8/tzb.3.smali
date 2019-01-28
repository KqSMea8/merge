.class public Lc8/tzb;
.super Ljava/lang/Object;
.source "LogProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/NBb;->d()V

    .line 19
    if-eqz p0, :cond_7

    .line 20
    sget-object v6, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    .local v1, "eventId":Ljava/lang/String;
    const-string/jumbo v6, "_priority"

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 22
    const-string/jumbo v6, "2201"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 23
    const-string/jumbo v6, "_priority"

    const-string/jumbo v7, "4"

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    const-string/jumbo v6, "2202"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    const-string/jumbo v6, "_priority"

    const-string/jumbo v7, "6"

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    const-string/jumbo v4, "3"

    .line 30
    .local v4, "priority":Ljava/lang/String;
    const-string/jumbo v6, "_priority"

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 31
    const-string/jumbo v6, "_priority"

    invoke-interface {p0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "priority":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 33
    .restart local v4    # "priority":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/oAb;->getInstance()Lc8/oAb;

    move-result-object v6

    invoke-virtual {v6, v1}, Lc8/oAb;->getConfigLogLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "configPriority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 36
    move-object v4, v0

    .line 38
    :cond_3
    const/4 v2, 0x0

    .line 39
    .local v2, "lNeedSync":Z
    const-string/jumbo v6, "_sls"

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 40
    const/4 v2, 0x1

    .line 41
    const-string/jumbo v6, "_sls"

    invoke-interface {p0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_4
    const/4 v5, 0x0

    .line 45
    .local v5, "topicId":I
    invoke-static {}, Lc8/Lzb;->getInstance()Lc8/Lzb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/Lzb;->isRealtimeLogSampled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 46
    invoke-static {}, Lc8/Lzb;->getInstance()Lc8/Lzb;

    move-result-object v6

    invoke-virtual {v6, p0}, Lc8/Lzb;->getTopicId(Ljava/util/Map;)I

    move-result v5

    .line 49
    :cond_5
    new-instance v3, Lc8/tAb;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v1, p0}, Lc8/tAb;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    .local v3, "log":Lc8/tAb;
    if-lez v5, :cond_6

    .line 51
    const-string/jumbo v6, ""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "topicId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v3, v5}, Lc8/tAb;->setTopicId(I)V

    .line 53
    invoke-static {}, Lc8/fBb;->getInstance()Lc8/fBb;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/fBb;->addLog(Lc8/tAb;)V

    .line 56
    :cond_6
    if-eqz v2, :cond_8

    .line 57
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/TAb;->addLogAndSave(Lc8/tAb;)V

    .line 62
    .end local v0    # "configPriority":Ljava/lang/String;
    .end local v1    # "eventId":Ljava/lang/String;
    .end local v2    # "lNeedSync":Z
    .end local v3    # "log":Lc8/tAb;
    .end local v4    # "priority":Ljava/lang/String;
    .end local v5    # "topicId":I
    :cond_7
    :goto_0
    return-void

    .line 59
    .restart local v0    # "configPriority":Ljava/lang/String;
    .restart local v1    # "eventId":Ljava/lang/String;
    .restart local v2    # "lNeedSync":Z
    .restart local v3    # "log":Lc8/tAb;
    .restart local v4    # "priority":Ljava/lang/String;
    .restart local v5    # "topicId":I
    :cond_8
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/TAb;->add(Lc8/tAb;)V

    goto :goto_0
.end method
