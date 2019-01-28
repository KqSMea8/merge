.class public Lc8/lpb;
.super Ljava/lang/Object;
.source "WXUserTrackAdapter.java"

# interfaces
.implements Lc8/HVf;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserTrack"

.field private static final TAG_PERF_TEST:Ljava/lang/String; = "Weex_Perf_Test"

.field private static initAppMonitor:Z

.field private static weexPerfLogIsOpen:Z

.field private static weexPerfLogSwitch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "false"

    sput-object v0, Lc8/lpb;->weexPerfLogSwitch:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lc8/lpb;->weexPerfLogIsOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->weex_perf_log_switch:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    sput-object v0, Lc8/lpb;->weexPerfLogSwitch:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lc8/lpb;->weexPerfLogIsOpen:Z

    .line 45
    :cond_0
    return-void
.end method

.method private initAppMonitor()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 139
    sget-boolean v8, Lc8/lpb;->initAppMonitor:Z

    if-eqz v8, :cond_0

    .line 176
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    .line 145
    .local v2, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lc8/OXf;->getDimensions()[Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "dimensions":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u7ef4\u5ea6\u96c6:"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v9, v3

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v1, v3, v8

    .line 149
    .local v1, "dimension":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 151
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string/jumbo v10, "||"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 157
    .end local v1    # "dimension":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "\u6307\u6807\u96c6:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    .line 160
    .local v5, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    invoke-static {}, Lc8/OXf;->getMeasures()[Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "measures":[Ljava/lang/String;
    array-length v8, v6

    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v4, v6, v7

    .line 163
    .local v4, "measure":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v9, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 165
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 170
    .end local v4    # "measure":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 171
    const-string/jumbo v7, "UserTrack"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_5
    const-string/jumbo v7, "weex"

    const-string/jumbo v8, "load"

    invoke-static {v7, v8, v5, v2}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 175
    const/4 v7, 0x1

    sput-boolean v7, Lc8/lpb;->initAppMonitor:Z

    goto :goto_0
.end method


# virtual methods
.method public commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "perf"    # Lc8/OXf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc8/OXf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lc8/lpb;->initAppMonitor()V

    .line 51
    const-string/jumbo v20, "load"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    if-eqz p4, :cond_9

    .line 52
    move-object/from16 v0, p4

    iget-object v0, v0, Lc8/OXf;->pageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 53
    .local v16, "pageNameUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 54
    .local v18, "scheme":Ljava/lang/String;
    const-string/jumbo v20, "spm"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 56
    .local v19, "spm":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v0, v0, Lc8/OXf;->pageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lc8/Kyb;->handleUTPageNameScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lc8/OXf;->pageName:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v9

    .line 59
    .local v9, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual/range {p4 .. p4}, Lc8/OXf;->getDimensionMap()Ljava/util/Map;

    move-result-object v8

    .line 61
    .local v8, "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "scheme"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v20, "spm"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v15

    .line 66
    .local v15, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "\u7ef4\u5ea6\u57cb\u70b9\u6570\u636e:"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v7, "builder":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_4

    .line 69
    if-eqz p5, :cond_0

    .line 71
    :try_start_1
    invoke-static/range {p5 .. p5}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 72
    .local v17, "paramsStr":Ljava/lang/String;
    const-string/jumbo v20, "customMonitorInfo"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .end local v17    # "paramsStr":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 80
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v9, v13, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 82
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v20

    if-nez v20, :cond_2

    sget-boolean v20, Lc8/lpb;->weexPerfLogIsOpen:Z

    if-eqz v20, :cond_1

    .line 83
    :cond_2
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v20, "||"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 133
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v16    # "pageNameUri":Landroid/net/Uri;
    .end local v18    # "scheme":Ljava/lang/String;
    .end local v19    # "spm":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 134
    .local v10, "e":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    return-void

    .line 91
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v8    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v15    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v16    # "pageNameUri":Landroid/net/Uri;
    .restart local v18    # "scheme":Ljava/lang/String;
    .restart local v19    # "spm":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string/jumbo v20, "\u6307\u6807\u57cb\u70b9\u6570\u636e:"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual/range {p4 .. p4}, Lc8/OXf;->getMeasureMap()Ljava/util/Map;

    move-result-object v14

    .line 94
    .local v14, "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    if-eqz v14, :cond_7

    .line 95
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 96
    .restart local v13    # "key":Ljava/lang/String;
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v15, v13, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 98
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v20

    if-nez v20, :cond_6

    sget-boolean v20, Lc8/lpb;->weexPerfLogIsOpen:Z

    if-eqz v20, :cond_5

    .line 99
    :cond_6
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v20, "||"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 106
    .end local v13    # "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v20, "weex"

    const-string/jumbo v21, "load"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9, v15}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 108
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 109
    const-string/jumbo v20, "UserTrack"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_8
    sget-boolean v20, Lc8/lpb;->weexPerfLogIsOpen:Z

    if-eqz v20, :cond_3

    .line 111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_2

    .line 114
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v14    # "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v15    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v16    # "pageNameUri":Landroid/net/Uri;
    .end local v18    # "scheme":Ljava/lang/String;
    .end local v19    # "spm":Ljava/lang/String;
    :cond_9
    const-string/jumbo v20, "domModule"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string/jumbo v20, "jsBridge"

    .line 115
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string/jumbo v20, "environment"

    .line 116
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string/jumbo v20, "streamModule"

    .line 117
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string/jumbo v20, "jsFramework"

    .line 118
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string/jumbo v20, "jsDownload"

    .line 119
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_a
    if-eqz p4, :cond_c

    .line 121
    sget-object v20, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual/range {v20 .. v20}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    iget-object v0, v0, Lc8/OXf;->errCode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 122
    const-string/jumbo v20, "weex"

    move-object/from16 v0, p4

    iget-object v0, v0, Lc8/OXf;->args:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lc8/OXf;->errCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p4 .. p4}, Lc8/OXf;->getErrMsg()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :cond_b
    const-string/jumbo v20, "weex"

    move-object/from16 v0, p4

    iget-object v0, v0, Lc8/OXf;->args:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 126
    :cond_c
    const-string/jumbo v20, "invokeModule"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 128
    const-string/jumbo v20, "arg"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 129
    .local v6, "arg":Ljava/lang/String;
    const-string/jumbo v20, "errMsg"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 130
    .local v12, "errMsg":Ljava/lang/String;
    const-string/jumbo v20, "errCode"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 131
    .local v11, "errCode":Ljava/lang/String;
    const-string/jumbo v20, "weex"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6, v11, v12}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .end local v6    # "arg":Ljava/lang/String;
    .end local v11    # "errCode":Ljava/lang/String;
    .end local v12    # "errMsg":Ljava/lang/String;
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v8    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v15    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v16    # "pageNameUri":Landroid/net/Uri;
    .restart local v18    # "scheme":Ljava/lang/String;
    .restart local v19    # "spm":Ljava/lang/String;
    :catch_1
    move-exception v20

    goto/16 :goto_0
.end method
