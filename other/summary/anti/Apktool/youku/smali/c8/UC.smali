.class public Lc8/UC;
.super Ljava/lang/Object;
.source "AliNetworkAdapter.java"

# interfaces
.implements Lc8/iM;
.implements Lc8/kM;
.implements Lc8/lM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AliNetCallback"
.end annotation


# instance fields
.field mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

.field mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lc8/VC;


# direct methods
.method protected constructor <init>(Lc8/VC;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lc8/UC;->this$0:Lc8/VC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lc8/oM;Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Lc8/oM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 175
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lc8/UC;->this$0:Lc8/VC;

    iget-object v0, v0, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onDataReceived] event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "event.getSize():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lc8/oM;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lc8/oM;->getBytedata()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lc8/UC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {p1}, Lc8/oM;->getBytedata()[B

    move-result-object v1

    invoke-interface {p1}, Lc8/oM;->getSize()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V

    .line 180
    return-void
.end method

.method public onFinished(Lc8/nM;Ljava/lang/Object;)V
    .locals 17
    .param p1, "event"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 247
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/UC;->this$0:Lc8/VC;

    iget-object v1, v1, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onFinished] event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/UC;->this$0:Lc8/VC;

    iget-object v1, v1, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinished code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lc8/nM;->getHttpCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/UC;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    iget-object v5, v1, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 255
    .local v5, "protocolType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    .line 256
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/UC;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v7}, Lc8/cG;->didResourceFinishLoadAtTime(Ljava/lang/String;JLjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v5    # "protocolType":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/UC;->mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

    move-object/from16 v16, v0

    check-cast v16, Lc8/XC;

    .line 264
    .local v16, "req":Lc8/XC;
    invoke-interface/range {p1 .. p1}, Lc8/nM;->getHttpCode()I

    move-result v14

    .line 265
    .local v14, "code":I
    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/UC;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Lc8/ZC;->onFinish(ILjava/lang/String;)V

    .line 266
    if-gez v14, :cond_3

    .line 267
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/UC;->this$0:Lc8/VC;

    iget-object v1, v1, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/UC;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/UC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface/range {p1 .. p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    .line 271
    invoke-virtual/range {v16 .. v16}, Lc8/XC;->complete()V

    .line 279
    :goto_1
    return-void

    .line 257
    .end local v14    # "code":I
    .end local v16    # "req":Lc8/XC;
    :catch_0
    move-exception v15

    .line 258
    .local v15, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/UC;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string/jumbo v11, "unknown"

    const-wide/16 v12, 0x0

    invoke-interface/range {v7 .. v13}, Lc8/cG;->didResourceFinishLoadAtTime(Ljava/lang/String;JLjava/lang/String;J)V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/UC;->this$0:Lc8/VC;

    iget-object v1, v1, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "didResourceFinishLoadAtTime failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v14    # "code":I
    .restart local v16    # "req":Lc8/XC;
    :cond_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/UC;->this$0:Lc8/VC;

    iget-object v1, v1, Lc8/VC;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "endData"

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/UC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 278
    invoke-virtual/range {v16 .. v16}, Lc8/XC;->complete()V

    goto :goto_1
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "aliheader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 187
    :try_start_0
    iget-object v7, p0, Lc8/UC;->mUrl:Ljava/lang/String;

    invoke-static {v7}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    iget-object v7, p0, Lc8/UC;->mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

    invoke-interface {v7}, Lcom/uc/webview/export/internal/interfaces/IRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 190
    .local v4, "rHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, ""

    .line 191
    .local v5, "referer":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 192
    const-string/jumbo v7, "Referer"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "referer":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 193
    .restart local v5    # "referer":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    const-string/jumbo v7, "referer"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "referer":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 197
    .restart local v5    # "referer":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "0"

    .line 198
    .local v1, "isHTML":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 199
    const-string/jumbo v7, ".htm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, ".html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 200
    :cond_1
    const-string/jumbo v1, "1"

    .line 203
    :cond_2
    const/16 v7, 0xc8

    if-lt p1, v7, :cond_3

    const/16 v7, 0x130

    if-le p1, v7, :cond_4

    :cond_3
    const/16 v7, 0x133

    if-ne p1, v7, :cond_a

    .line 204
    :cond_4
    const/16 v7, 0x12e

    if-ne p1, v7, :cond_8

    .line 210
    const-string/jumbo v2, ""

    .line 211
    .local v2, "location":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 212
    const-string/jumbo v7, "Location"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 213
    .local v3, "locationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_5

    .line 214
    const-string/jumbo v7, "location"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "locationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/List;

    .line 216
    .restart local v3    # "locationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    if-eqz v3, :cond_6

    .line 217
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "location":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 218
    .restart local v2    # "location":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 219
    invoke-static {v2}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v2}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .end local v3    # "locationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 225
    const-string/jumbo v7, "//err.tmall.com/error1.html"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "//err.taobao.com/error1.html"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 226
    :cond_7
    iget-object v7, p0, Lc8/UC;->mUrl:Ljava/lang/String;

    const/16 v8, 0x194

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v9

    invoke-virtual {v9, v6}, Lc8/ZC;->getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v5, v8, v1, v9}, Lc8/EF;->commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "isHTML":Ljava/lang/String;
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "rHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "referer":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_8
    :goto_0
    iget-object v7, p0, Lc8/UC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    const-string/jumbo v8, ""

    invoke-interface {v7, v10, v10, p1, v8}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    .line 240
    iget-object v7, p0, Lc8/UC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v7, p2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    .line 241
    return v10

    .line 227
    .restart local v1    # "isHTML":Ljava/lang/String;
    .restart local v2    # "location":Ljava/lang/String;
    .restart local v4    # "rHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "referer":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string/jumbo v7, "//err.tmall.com/error2.html"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 228
    iget-object v7, p0, Lc8/UC;->mUrl:Ljava/lang/String;

    const/16 v8, 0x1f4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v9

    invoke-virtual {v9, v6}, Lc8/ZC;->getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v5, v8, v1, v9}, Lc8/EF;->commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 235
    .end local v1    # "isHTML":Ljava/lang/String;
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "rHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "referer":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v7, p0, Lc8/UC;->this$0:Lc8/VC;

    iget-object v7, v7, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppMonitorUtil.commitStatusCode error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "isHTML":Ljava/lang/String;
    .restart local v4    # "rHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "referer":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_a
    :try_start_2
    iget-object v7, p0, Lc8/UC;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v9

    invoke-virtual {v9, v6}, Lc8/ZC;->getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v5, v8, v1, v9}, Lc8/EF;->commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .prologue
    .line 161
    iput-object p1, p0, Lc8/UC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 162
    return-void
.end method

.method public setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V
    .locals 0
    .param p1, "req"    # Lcom/uc/webview/export/internal/interfaces/IRequest;

    .prologue
    .line 169
    iput-object p1, p0, Lc8/UC;->mReq:Lcom/uc/webview/export/internal/interfaces/IRequest;

    .line 170
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lc8/UC;->mUrl:Ljava/lang/String;

    .line 166
    return-void
.end method
