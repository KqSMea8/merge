.class public Lc8/zGo;
.super Ljava/lang/Object;
.source "VipHttpService.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/AGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipInternalMTopFinishListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/JNp;"
    }
.end annotation


# instance fields
.field private isRunUIThread:Z

.field private mListener:Lc8/mGo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/mGo",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTraceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lc8/mGo;ZLjava/lang/String;)V
    .locals 1
    .param p3, "isRunUIThread"    # Z
    .param p4, "traceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/mGo",
            "<TT;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lc8/zGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopFinishListener<TT;>;"
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/zGo;->isRunUIThread:Z

    .line 487
    iput-object p1, p0, Lc8/zGo;->mTClass:Ljava/lang/Class;

    .line 488
    iput-object p2, p0, Lc8/zGo;->mListener:Lc8/mGo;

    .line 489
    iput-boolean p3, p0, Lc8/zGo;->isRunUIThread:Z

    .line 490
    iput-object p4, p0, Lc8/zGo;->mTraceId:Ljava/lang/String;

    .line 491
    return-void
.end method

.method static synthetic access$000(Lc8/zGo;)Lc8/mGo;
    .locals 1
    .param p0, "x0"    # Lc8/zGo;

    .prologue
    .line 479
    iget-object v0, p0, Lc8/zGo;->mListener:Lc8/mGo;

    return-object v0
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 12
    .param p1, "mtopFinishEvent"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 495
    .local p0, "this":Lc8/zGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopFinishListener<TT;>;"
    const/4 v5, 0x0

    .line 497
    .local v5, "isErrorHandled":Z
    :try_start_0
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v8

    .line 498
    .local v8, "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v10, p0, Lc8/zGo;->mTraceId:Ljava/lang/String;

    invoke-static {v8, v10}, Lc8/AGo;->writeLog(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V

    .line 499
    invoke-static {v8}, Lc8/AGo;->handleError(Lmtopsdk/mtop/domain/MtopResponse;)Z

    move-result v5

    .line 500
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    if-eqz v10, :cond_0

    .line 501
    new-instance v4, Lc8/oGo;

    invoke-direct {v4}, Lc8/oGo;-><init>()V

    .line 502
    .local v4, "globalResponseModel":Lc8/oGo;
    if-eqz v8, :cond_b

    .line 504
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setApi(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setV(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 508
    const/4 v9, 0x0

    .line 509
    .local v9, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 511
    iget-object v10, p0, Lc8/zGo;->mTClass:Ljava/lang/Class;

    if-eqz v10, :cond_10

    .line 512
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v0, ""

    .line 513
    .local v0, "dataJson":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lc8/zGo;->mTClass:Ljava/lang/Class;

    invoke-static {v0, v10}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 516
    .end local v0    # "dataJson":Ljava/lang/String;
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .local v3, "t":Ljava/lang/Object;, "TT;"
    :goto_1
    iget-boolean v10, p0, Lc8/zGo;->isRunUIThread:Z

    if-eqz v10, :cond_2

    .line 518
    .local v3, "finalT":Ljava/lang/Object;, "TT;"
    sget-object v10, Lc8/AGo;->handler:Landroid/os/Handler;

    new-instance v11, Lc8/tGo;

    invoke-direct {v11, p0, v4, v3}, Lc8/tGo;-><init>(Lc8/zGo;Lc8/oGo;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    .end local v3    # "finalT":Ljava/lang/Object;, "TT;"
    .end local v4    # "globalResponseModel":Lc8/oGo;
    :cond_0
    :goto_2
    return-void

    .line 512
    .restart local v4    # "globalResponseModel":Lc8/oGo;
    .restart local v9    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .local v3, "t":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    invoke-interface {v10, v4, v3}, Lc8/mGo;->onSuccess(Lc8/oGo;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 616
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "globalResponseModel":Lc8/oGo;
    .end local v8    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v8

    .line 619
    .restart local v8    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Lc8/oGo;

    invoke-direct {v4}, Lc8/oGo;-><init>()V

    .line 620
    .restart local v4    # "globalResponseModel":Lc8/oGo;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lc8/oGo;->setParseError(Z)V

    .line 621
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 622
    const/4 v9, 0x0

    .line 623
    .restart local v9    # "t":Ljava/lang/Object;, "TT;"
    if-nez v8, :cond_d

    .line 624
    const-string/jumbo v10, "vip_exception_code_1001"

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 626
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    const/4 v11, 0x0

    invoke-interface {v10, v4, v11}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    move-object v3, v9

    .line 643
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    :goto_3
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 644
    .local v7, "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {}, Lc8/AGo;->access$100()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lc8/zGo;->mTraceId:Ljava/lang/String;

    invoke-static {v10, v7, v11}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)I

    .line 648
    iget-boolean v10, p0, Lc8/zGo;->isRunUIThread:Z

    if-eqz v10, :cond_f

    .line 650
    .local v3, "finalT":Ljava/lang/Object;, "TT;"
    sget-object v10, Lc8/AGo;->handler:Landroid/os/Handler;

    new-instance v11, Lc8/yGo;

    invoke-direct {v11, p0, v4, v3}, Lc8/yGo;-><init>(Lc8/zGo;Lc8/oGo;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 535
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "finalT":Ljava/lang/Object;, "TT;"
    .end local v7    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 536
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lc8/oGo;->setSessionInvalid(Z)V

    .line 537
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 538
    iget-boolean v10, p0, Lc8/zGo;->isRunUIThread:Z

    if-eqz v10, :cond_4

    .line 539
    move-object v3, v9

    .line 540
    .restart local v3    # "finalT":Ljava/lang/Object;, "TT;"
    sget-object v10, Lc8/AGo;->handler:Landroid/os/Handler;

    new-instance v11, Lc8/uGo;

    invoke-direct {v11, p0, v4, v3}, Lc8/uGo;-><init>(Lc8/zGo;Lc8/oGo;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 547
    .end local v3    # "finalT":Ljava/lang/Object;, "TT;"
    :cond_4
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    invoke-interface {v10, v4, v9}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 552
    :cond_5
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v10

    if-nez v10, :cond_6

    .line 553
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 554
    :cond_6
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v6

    .line 555
    .local v6, "isNetError":Z
    if-eqz v6, :cond_7

    .line 556
    invoke-virtual {v4, v6}, Lc8/oGo;->setNetError(Z)V

    .line 560
    :goto_4
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 561
    iget-boolean v10, p0, Lc8/zGo;->isRunUIThread:Z

    if-eqz v10, :cond_8

    .line 562
    move-object v3, v9

    .line 563
    .restart local v3    # "finalT":Ljava/lang/Object;, "TT;"
    sget-object v10, Lc8/AGo;->handler:Landroid/os/Handler;

    new-instance v11, Lc8/vGo;

    invoke-direct {v11, p0, v4, v3}, Lc8/vGo;-><init>(Lc8/zGo;Lc8/oGo;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 558
    .end local v3    # "finalT":Ljava/lang/Object;, "TT;"
    :cond_7
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lc8/oGo;->setSystemError(Z)V

    goto :goto_4

    .line 570
    :cond_8
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    invoke-interface {v10, v4, v9}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 579
    .end local v6    # "isNetError":Z
    :cond_9
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lc8/oGo;->setBusinessError(Z)V

    .line 580
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 581
    iget-boolean v10, p0, Lc8/zGo;->isRunUIThread:Z

    if-eqz v10, :cond_a

    .line 582
    move-object v3, v9

    .line 583
    .restart local v3    # "finalT":Ljava/lang/Object;, "TT;"
    sget-object v10, Lc8/AGo;->handler:Landroid/os/Handler;

    new-instance v11, Lc8/wGo;

    invoke-direct {v11, p0, v4, v3}, Lc8/wGo;-><init>(Lc8/zGo;Lc8/oGo;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 590
    .end local v3    # "finalT":Ljava/lang/Object;, "TT;"
    :cond_a
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    invoke-interface {v10, v4, v9}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 596
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    :cond_b
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lc8/oGo;->setBusinessError(Z)V

    .line 597
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 598
    const-string/jumbo v10, "vip_response_is_null_code_1002"

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v10, "mtop response null"

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 600
    invoke-static {}, Lc8/AGo;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mtop response null "

    invoke-static {v10, v11}, Lc8/cIo;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-boolean v10, p0, Lc8/zGo;->isRunUIThread:Z

    if-eqz v10, :cond_c

    .line 603
    sget-object v10, Lc8/AGo;->handler:Landroid/os/Handler;

    new-instance v11, Lc8/xGo;

    invoke-direct {v11, p0, v4}, Lc8/xGo;-><init>(Lc8/zGo;Lc8/oGo;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 610
    :cond_c
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    const/4 v11, 0x0

    invoke-interface {v10, v4, v11}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 628
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v9    # "t":Ljava/lang/Object;, "TT;"
    :cond_d
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setApi(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setV(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 632
    iget-object v10, p0, Lc8/zGo;->mTClass:Ljava/lang/Class;

    if-eqz v10, :cond_e

    .line 635
    :try_start_2
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lc8/zGo;->mTClass:Ljava/lang/Class;

    .line 634
    invoke-static {v10, v11}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    move-object v3, v9

    .line 638
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .local v3, "t":Ljava/lang/Object;, "TT;"
    goto/16 :goto_3

    .line 636
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .restart local v9    # "t":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v2

    .line 637
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_e
    move-object v3, v9

    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    goto/16 :goto_3

    .line 657
    .restart local v7    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    iget-object v10, p0, Lc8/zGo;->mListener:Lc8/mGo;

    invoke-interface {v10, v4, v3}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v7    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "t":Ljava/lang/Object;, "TT;"
    :cond_10
    move-object v3, v9

    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    goto/16 :goto_1
.end method
