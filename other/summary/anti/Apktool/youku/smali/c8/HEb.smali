.class public Lc8/HEb;
.super Ljava/lang/Object;
.source "UTUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAppException(Lc8/hEb;)V
    .locals 8
    .param p0, "utEvent"    # Lc8/hEb;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v7

    new-instance v0, Lc8/tAb;

    iget-object v1, p0, Lc8/hEb;->page:Ljava/lang/String;

    iget v2, p0, Lc8/hEb;->eventId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/hEb;->arg1:Ljava/lang/String;

    iget-object v4, p0, Lc8/hEb;->arg2:Ljava/lang/String;

    iget-object v5, p0, Lc8/hEb;->arg3:Ljava/lang/String;

    iget-object v6, p0, Lc8/hEb;->args:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lc8/tAb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Lc8/TAb;->add(Lc8/tAb;)V

    .line 123
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/vEb;->offer(Lc8/xEb;)V

    goto :goto_0
.end method

.method public static sendRealDebugEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lc8/YDb;)V
    .locals 11
    .param p0, "utDimensionValue"    # Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .param p1, "event"    # Lc8/YDb;

    .prologue
    const/16 v10, 0x1a2b

    const/4 v9, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v1

    .line 88
    .local v1, "eventId":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    .line 90
    .local v3, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v6

    const-class v7, Lc8/hEb;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v5

    check-cast v5, Lc8/hEb;

    .line 91
    .local v5, "utEvent":Lc8/hEb;
    iput v10, v5, Lc8/hEb;->eventId:I

    .line 92
    iget-object v6, p1, Lc8/YDb;->module:Ljava/lang/String;

    iput-object v6, v5, Lc8/hEb;->arg1:Ljava/lang/String;

    .line 93
    iget-object v6, p1, Lc8/YDb;->monitorPoint:Ljava/lang/String;

    iput-object v6, v5, Lc8/hEb;->arg2:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 96
    iget-object v6, v5, Lc8/hEb;->args:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    iget-object v6, v5, Lc8/hEb;->args:Ljava/util/Map;

    const-string/jumbo v7, "commitDay"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v2, "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "meta"

    invoke-static {}, Lc8/TDb;->getSDKMetaData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v6, "_event_id"

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v6

    const-class v7, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    .line 103
    .local v0, "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    invoke-virtual {p1}, Lc8/YDb;->dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 104
    .local v4, "jobject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0, v4}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v6

    invoke-virtual {v6, p1}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 107
    const-string/jumbo v6, "data"

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v6, v5, Lc8/hEb;->args:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alibaba/appmonitor/event/EventType;->getAggregateEventArgsKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v6, v5, Lc8/hEb;->args:Ljava/util/Map;

    sget-object v7, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v7}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v5}, Lc8/HEb;->sendUTEventWithPlugin(Lc8/hEb;)V

    .line 112
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v6

    invoke-virtual {v6, v0}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 114
    .end local v0    # "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    .end local v2    # "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    .end local v4    # "jobject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "utEvent":Lc8/hEb;
    :cond_1
    return-void
.end method

.method public static sendUTEventWithPlugin(Lc8/hEb;)V
    .locals 7
    .param p0, "utEvent"    # Lc8/hEb;

    .prologue
    .line 127
    new-instance v0, Lc8/tAb;

    iget-object v1, p0, Lc8/hEb;->page:Ljava/lang/String;

    iget v2, p0, Lc8/hEb;->eventId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/hEb;->arg1:Ljava/lang/String;

    iget-object v4, p0, Lc8/hEb;->arg2:Ljava/lang/String;

    iget-object v5, p0, Lc8/hEb;->arg3:Ljava/lang/String;

    iget-object v6, p0, Lc8/hEb;->args:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lc8/tAb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    .local v0, "log":Lc8/tAb;
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/TAb;->add(Lc8/tAb;)V

    .line 129
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 130
    return-void
.end method

.method public static uploadEvent(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
            "Ljava/util/List",
            "<",
            "Lc8/YDb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v13, "moduleBuilder":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v16, "prointBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    .line 38
    .local v17, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 39
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_3

    .line 40
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v5

    .line 41
    .local v5, "eventId":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    .line 42
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v7

    .line 43
    .local v7, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v19

    const-class v20, Lc8/hEb;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v18

    check-cast v18, Lc8/hEb;

    .line 44
    .local v18, "utEvent":Lc8/hEb;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lc8/hEb;->eventId:I

    .line 45
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 46
    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/hEb;->args:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/hEb;->args:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string/jumbo v20, "commitDay"

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v6, "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v19, "meta"

    invoke-static {}, Lc8/TDb;->getSDKMetaData()Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v19

    const-class v20, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v2

    check-cast v2, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    .line 52
    .local v2, "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    const/4 v9, 0x0

    .line 53
    .local v9, "i":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/YDb;

    .line 54
    .local v4, "event":Lc8/YDb;
    invoke-virtual {v4}, Lc8/YDb;->dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 55
    .local v12, "jobject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v2, v12}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->add(Ljava/lang/Object;)Z

    .line 56
    if-nez v9, :cond_1

    .line 57
    iget-object v0, v4, Lc8/YDb;->module:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, v4, Lc8/YDb;->monitorPoint:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 68
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lc8/vEb;->offer(Lc8/xEb;)V

    goto :goto_1

    .line 60
    :cond_1
    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v0, v4, Lc8/YDb;->module:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v19, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, v4, Lc8/YDb;->monitorPoint:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 70
    .end local v4    # "event":Lc8/YDb;
    .end local v12    # "jobject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v19, "data"

    move-object/from16 v0, v19

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/hEb;->args:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Lcom/alibaba/appmonitor/event/EventType;->getAggregateEventArgsKey()Ljava/lang/String;

    move-result-object v20

    invoke-static {v6}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 73
    .local v14, "modules":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 74
    .local v15, "points":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/hEb;->args:Ljava/util/Map;

    move-object/from16 v19, v0

    sget-object v20, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/hEb;->args:Ljava/util/Map;

    move-object/from16 v19, v0

    sget-object v20, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-object/from16 v0, v18

    iput-object v14, v0, Lc8/hEb;->arg1:Ljava/lang/String;

    .line 77
    move-object/from16 v0, v18

    iput-object v15, v0, Lc8/hEb;->arg2:Ljava/lang/String;

    .line 78
    invoke-static/range {v18 .. v18}, Lc8/HEb;->sendUTEventWithPlugin(Lc8/hEb;)V

    .line 79
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 82
    .end local v2    # "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    .end local v5    # "eventId":Ljava/lang/Integer;
    .end local v6    # "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    .end local v9    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "modules":Ljava/lang/String;
    .end local v15    # "points":Ljava/lang/String;
    .end local v18    # "utEvent":Lc8/hEb;
    :cond_3
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/vEb;->offer(Lc8/xEb;)V

    goto/16 :goto_0

    .line 84
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;>;"
    .end local v8    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;"
    .end local v13    # "moduleBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "prointBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    :cond_4
    return-void
.end method
