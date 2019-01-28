.class public Lc8/sGo;
.super Ljava/lang/Object;
.source "VipHttpService.java"

# interfaces
.implements Lc8/AMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/AGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipInternalMTopByBusinessListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/AMf;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljava/lang/Class;Lc8/mGo;Ljava/lang/String;)V
    .locals 0
    .param p3, "traceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/mGo",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lc8/sGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopByBusinessListener<TT;>;"
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Lc8/sGo;->mTClass:Ljava/lang/Class;

    .line 675
    iput-object p2, p0, Lc8/sGo;->mListener:Lc8/mGo;

    .line 676
    iput-object p3, p0, Lc8/sGo;->mTraceId:Ljava/lang/String;

    .line 677
    return-void
.end method

.method private handleBusinessError(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 7
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .local p0, "this":Lc8/sGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopByBusinessListener<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 742
    iget-object v4, p0, Lc8/sGo;->mTraceId:Ljava/lang/String;

    invoke-static {p1, v4}, Lc8/AGo;->writeLog(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V

    .line 743
    invoke-static {p1}, Lc8/AGo;->handleError(Lmtopsdk/mtop/domain/MtopResponse;)Z

    move-result v2

    .line 744
    .local v2, "isErrorHandled":Z
    iget-object v4, p0, Lc8/sGo;->mListener:Lc8/mGo;

    if-nez v4, :cond_0

    .line 779
    :goto_0
    return-void

    .line 748
    :cond_0
    new-instance v1, Lc8/oGo;

    invoke-direct {v1}, Lc8/oGo;-><init>()V

    .line 749
    .local v1, "globalResponseModel":Lc8/oGo;
    invoke-virtual {v1, v5}, Lc8/oGo;->setSystemError(Z)V

    .line 752
    if-eqz p1, :cond_1

    .line 753
    :try_start_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/oGo;->setApi(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/oGo;->setV(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    :goto_1
    invoke-virtual {v1, v2}, Lc8/oGo;->setErrorHandled(Z)V

    .line 778
    iget-object v4, p0, Lc8/sGo;->mListener:Lc8/mGo;

    invoke-interface {v4, v1, v6}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto :goto_0

    .line 760
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1, v4}, Lc8/oGo;->setBusinessError(Z)V

    .line 761
    const-string/jumbo v4, "vip_response_is_null_code_1002"

    invoke-virtual {v1, v4}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 762
    const-string/jumbo v4, "mtop response null"

    invoke-virtual {v1, v4}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lc8/AGo;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mtop response null "

    invoke-static {v4, v5}, Lc8/cIo;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "vip_exception_code_1001"

    invoke-virtual {v1, v4}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 771
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 772
    .local v3, "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-static {}, Lc8/AGo;->access$100()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/sGo;->mTraceId:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 777
    invoke-virtual {v1, v2}, Lc8/oGo;->setErrorHandled(Z)V

    .line 778
    iget-object v4, p0, Lc8/sGo;->mListener:Lc8/mGo;

    invoke-interface {v4, v1, v6}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto :goto_0

    .line 777
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v4

    invoke-virtual {v1, v2}, Lc8/oGo;->setErrorHandled(Z)V

    .line 778
    iget-object v5, p0, Lc8/sGo;->mListener:Lc8/mGo;

    invoke-interface {v5, v1, v6}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 738
    .local p0, "this":Lc8/sGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopByBusinessListener<TT;>;"
    invoke-direct {p0, p2}, Lc8/sGo;->handleBusinessError(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 739
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "baseOutDo"    # Lc8/cOp;
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lc8/sGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopByBusinessListener<TT;>;"
    const/4 v9, 0x0

    .line 686
    iget-object v7, p0, Lc8/sGo;->mTraceId:Ljava/lang/String;

    invoke-static {p2, v7}, Lc8/AGo;->writeLog(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V

    .line 687
    invoke-static {p2}, Lc8/AGo;->handleError(Lmtopsdk/mtop/domain/MtopResponse;)Z

    move-result v4

    .line 688
    .local v4, "isErrorHandled":Z
    iget-object v7, p0, Lc8/sGo;->mListener:Lc8/mGo;

    if-nez v7, :cond_0

    .line 734
    :goto_0
    return-void

    .line 692
    :cond_0
    new-instance v3, Lc8/oGo;

    invoke-direct {v3}, Lc8/oGo;-><init>()V

    .line 693
    .local v3, "globalResponseModel":Lc8/oGo;
    const/4 v6, 0x0

    .line 695
    .local v6, "t":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_2

    .line 696
    :try_start_0
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lc8/oGo;->setApi(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lc8/oGo;->setV(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 701
    iget-object v7, p0, Lc8/sGo;->mTClass:Ljava/lang/Class;

    if-eqz v7, :cond_3

    .line 702
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, ""

    .line 703
    .local v0, "dataJson":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lc8/sGo;->mTClass:Ljava/lang/Class;

    invoke-static {v0, v7}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 707
    .end local v0    # "dataJson":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    .local v2, "finalT":Ljava/lang/Object;, "TT;"
    .local v2, "t":Ljava/lang/Object;, "TT;"
    :goto_2
    iget-object v7, p0, Lc8/sGo;->mListener:Lc8/mGo;

    invoke-interface {v7, v3, v2}, Lc8/mGo;->onSuccess(Lc8/oGo;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 722
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "vip_exception_code_1001"

    invoke-virtual {v3, v7}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 726
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 727
    .local v5, "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-static {}, Lc8/AGo;->access$100()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lc8/sGo;->mTraceId:Ljava/lang/String;

    invoke-static {v7, v5, v8}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 732
    iget-object v7, p0, Lc8/sGo;->mListener:Lc8/mGo;

    invoke-interface {v7, v3, v9}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto :goto_0

    .line 702
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 711
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lc8/oGo;->setBusinessError(Z)V

    .line 712
    invoke-virtual {v3, v4}, Lc8/oGo;->setErrorHandled(Z)V

    .line 713
    const-string/jumbo v7, "vip_response_is_null_code_1002"

    invoke-virtual {v3, v7}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 714
    const-string/jumbo v7, "mtop response null"

    invoke-virtual {v3, v7}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lc8/AGo;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mtop response null "

    invoke-static {v7, v8}, Lc8/cIo;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v7, p0, Lc8/sGo;->mListener:Lc8/mGo;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    move-object v2, v6

    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    .local v2, "t":Ljava/lang/Object;, "TT;"
    goto :goto_2
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 681
    .local p0, "this":Lc8/sGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopByBusinessListener<TT;>;"
    invoke-static {p2}, Lc8/AGo;->handleError(Lmtopsdk/mtop/domain/MtopResponse;)Z

    .line 682
    return-void
.end method
