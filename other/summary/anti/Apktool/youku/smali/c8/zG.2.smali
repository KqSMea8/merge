.class public Lc8/zG;
.super Ljava/lang/Object;
.source "WVPackageAppWebViewClientFilter.java"

# interfaces
.implements Lc8/pH;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lc8/zG;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/zG;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 16
    .param p1, "id"    # I
    .param p2, "ctx"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance v2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    .line 122
    :goto_0
    return-object v2

    .line 42
    :cond_0
    const/16 v2, 0x1772

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 43
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->startUpdateAppsTask()V

    .line 122
    :cond_1
    :goto_1
    new-instance v2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    goto :goto_0

    .line 44
    :cond_2
    const/16 v2, 0x3ec

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->packageAppStatus:I

    if-eqz v2, :cond_1

    .line 45
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 47
    .local v3, "monitorUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    const-string/jumbo v4, "https"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    const-string/jumbo v4, "https"

    const-string/jumbo v5, "http"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 51
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v2}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v2}, Lc8/vG;->getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v11

    .line 58
    .local v11, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    const/4 v13, 0x0

    .line 59
    .local v13, "res":Lc8/II;
    if-eqz v11, :cond_4

    .line 60
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v2, v11}, Lc8/vG;->getWrapResourceResponse(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Lc8/II;

    move-result-object v13

    .line 62
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    if-eqz v13, :cond_7

    .line 64
    const-string/jumbo v8, "0"

    .line 66
    .local v8, "seq":Ljava/lang/String;
    :try_start_0
    iget-wide v4, v11, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 70
    :goto_2
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 71
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v2}, Lc8/dI;->isHtml(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v11, :cond_6

    .line 72
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    const/16 v4, 0xc8

    const/4 v5, 0x3

    iget-object v6, v11, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v7, v11, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lc8/cG;->didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lc8/bG;)V

    .line 79
    :cond_5
    :goto_3
    new-instance v2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v13}, Landroid/taobao/windvane/service/WVEventResult;-><init>(ZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 75
    :cond_6
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    const/16 v4, 0xc8

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lc8/cG;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Lc8/bG;)V

    goto :goto_3

    .line 85
    .end local v8    # "seq":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc8/WG;->isZcacheUrl(Ljava/lang/String;)Lc8/VG;

    move-result-object v12

    .line 87
    .local v12, "filedata":Lc8/VG;
    if-eqz v12, :cond_8

    .line 88
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v2, v12}, Lc8/vG;->getWrapResourceResponse(Ljava/lang/String;Lc8/VG;)Lc8/II;

    move-result-object v13

    .line 90
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    if-eqz v13, :cond_b

    .line 92
    const-string/jumbo v8, "0"

    .line 94
    .restart local v8    # "seq":Ljava/lang/String;
    :try_start_1
    iget-wide v4, v12, Lc8/VG;->seq:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 97
    :goto_4
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 98
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v2}, Lc8/dI;->isHtml(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 99
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    const/16 v4, 0xc8

    const/4 v5, 0x4

    iget-object v6, v12, Lc8/VG;->v:Ljava/lang/String;

    iget-object v7, v12, Lc8/VG;->appName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lc8/cG;->didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lc8/bG;)V

    .line 106
    :cond_9
    :goto_5
    new-instance v2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v13}, Landroid/taobao/windvane/service/WVEventResult;-><init>(ZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 102
    :cond_a
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    const/16 v4, 0xc8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lc8/cG;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Lc8/bG;)V

    goto :goto_5

    .line 109
    .end local v8    # "seq":Ljava/lang/String;
    :cond_b
    :try_start_2
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v2}, Lc8/vG;->makeComboRes(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v15

    .line 110
    .local v15, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v15, :cond_c

    .line 111
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_d

    .line 112
    new-instance v14, Lc8/II;

    invoke-virtual {v15}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v15}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v14, v2, v4, v5, v6}, Lc8/II;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    .end local v13    # "res":Lc8/II;
    .local v14, "res":Lc8/II;
    move-object v13, v14

    .line 116
    .end local v14    # "res":Lc8/II;
    .restart local v13    # "res":Lc8/II;
    :goto_6
    new-instance v2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v13}, Landroid/taobao/windvane/service/WVEventResult;-><init>(ZLjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v15    # "response":Landroid/webkit/WebResourceResponse;
    :catch_0
    move-exception v2

    .line 120
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/zG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " request online"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 114
    .restart local v15    # "response":Landroid/webkit/WebResourceResponse;
    :cond_d
    :try_start_3
    new-instance v14, Lc8/II;

    invoke-virtual {v15}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v14, v2, v4, v5, v6}, Lc8/II;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v13    # "res":Lc8/II;
    .restart local v14    # "res":Lc8/II;
    move-object v13, v14

    .end local v14    # "res":Lc8/II;
    .restart local v13    # "res":Lc8/II;
    goto :goto_6

    .end local v15    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v8    # "seq":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .end local v12    # "filedata":Lc8/VG;
    :catch_2
    move-exception v2

    goto/16 :goto_2
.end method
