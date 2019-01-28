.class public Lc8/rGo;
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
    name = "VipCMSMTopFinishListener"
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
.field private mListener:Lc8/lGo;

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
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lc8/lGo;)V
    .locals 0
    .param p2, "traceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lc8/lGo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "this":Lc8/rGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipCMSMTopFinishListener<TT;>;"
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "listener":Lc8/lGo;, "Lcom/youku/vip/lib/http/listener/VipHttpListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lc8/rGo;->mTClass:Ljava/lang/Class;

    .line 794
    iput-object p3, p0, Lc8/rGo;->mListener:Lc8/lGo;

    .line 795
    iput-object p2, p0, Lc8/rGo;->mTraceId:Ljava/lang/String;

    .line 796
    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 14
    .param p1, "mtopFinishEvent"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 801
    .local p0, "this":Lc8/rGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipCMSMTopFinishListener<TT;>;"
    const/4 v5, 0x0

    .line 804
    .local v5, "isErrorHandled":Z
    :try_start_0
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v10

    .line 805
    .local v10, "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v12, p0, Lc8/rGo;->mTraceId:Ljava/lang/String;

    invoke-static {v10, v12}, Lc8/AGo;->writeLog(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V

    .line 806
    invoke-static {v10}, Lc8/AGo;->handleError(Lmtopsdk/mtop/domain/MtopResponse;)Z

    move-result v5

    .line 808
    iget-object v12, p0, Lc8/rGo;->mListener:Lc8/lGo;

    if-eqz v12, :cond_2

    .line 809
    new-instance v4, Lc8/oGo;

    invoke-direct {v4}, Lc8/oGo;-><init>()V

    .line 810
    .local v4, "globalResponseModel":Lc8/oGo;
    if-eqz v10, :cond_c

    .line 811
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setApi(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setV(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 817
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_3

    const-string/jumbo v0, ""

    .line 818
    .local v0, "dataJsonStr":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 819
    .local v2, "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    invoke-static {v0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 820
    .local v7, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v12, "headers"

    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "httpStatusCode"

    .line 821
    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "success"

    .line 822
    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 823
    const-class v12, Lc8/nGo;

    invoke-static {v0, v12}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    check-cast v2, Lc8/nGo;

    .line 831
    .restart local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    :goto_1
    invoke-virtual {v2}, Lc8/nGo;->getModel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 832
    invoke-virtual {v2, v0}, Lc8/nGo;->setModel(Ljava/lang/String;)V

    .line 835
    :cond_0
    iget-object v12, p0, Lc8/rGo;->mTClass:Ljava/lang/Class;

    if-eqz v12, :cond_1

    .line 836
    invoke-virtual {v2}, Lc8/nGo;->getModel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v9, ""

    .line 837
    .local v9, "modelStr":Ljava/lang/String;
    :goto_2
    iget-object v12, p0, Lc8/rGo;->mTClass:Ljava/lang/Class;

    invoke-static {v9, v12}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    .line 838
    .local v11, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v11}, Lc8/nGo;->setT(Ljava/lang/Object;)V

    .line 841
    .end local v9    # "modelStr":Ljava/lang/String;
    .end local v11    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v12, p0, Lc8/rGo;->mListener:Lc8/lGo;

    invoke-interface {v12, v4, v2}, Lc8/lGo;->onSuccess(Lc8/oGo;Lc8/nGo;)V

    .line 909
    .end local v0    # "dataJsonStr":Ljava/lang/String;
    .end local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    .end local v4    # "globalResponseModel":Lc8/oGo;
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_3
    return-void

    .line 817
    .restart local v4    # "globalResponseModel":Lc8/oGo;
    :cond_3
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 825
    .restart local v0    # "dataJsonStr":Ljava/lang/String;
    .restart local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    .restart local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    if-nez v2, :cond_5

    .line 826
    new-instance v2, Lc8/nGo;

    .end local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    invoke-direct {v2}, Lc8/nGo;-><init>()V

    .line 828
    .restart local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    :cond_5
    invoke-virtual {v2, v0}, Lc8/nGo;->setModel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 886
    .end local v0    # "dataJsonStr":Ljava/lang/String;
    .end local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    .end local v4    # "globalResponseModel":Lc8/oGo;
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v3

    .line 888
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 889
    .local v8, "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v12, "exception"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-static {}, Lc8/AGo;->access$100()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lc8/rGo;->mTraceId:Ljava/lang/String;

    invoke-static {v12, v8, v13}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v10

    .line 893
    .restart local v10    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Lc8/oGo;

    invoke-direct {v4}, Lc8/oGo;-><init>()V

    .line 894
    .restart local v4    # "globalResponseModel":Lc8/oGo;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lc8/oGo;->setParseError(Z)V

    .line 895
    if-nez v10, :cond_d

    .line 896
    const-string/jumbo v12, "vip_exception_code_1001"

    invoke-virtual {v4, v12}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    .line 904
    :goto_4
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 905
    new-instance v2, Lc8/nGo;

    invoke-direct {v2}, Lc8/nGo;-><init>()V

    .line 906
    .restart local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lc8/nGo;->setSuccess(Z)V

    .line 907
    iget-object v12, p0, Lc8/rGo;->mListener:Lc8/lGo;

    invoke-interface {v12, v4, v2}, Lc8/lGo;->onFailed(Lc8/oGo;Lc8/nGo;)V

    goto :goto_3

    .line 836
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    .restart local v0    # "dataJsonStr":Ljava/lang/String;
    .restart local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Lc8/nGo;->getModel()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 850
    .end local v0    # "dataJsonStr":Ljava/lang/String;
    .end local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 851
    new-instance v1, Lc8/nGo;

    invoke-direct {v1}, Lc8/nGo;-><init>()V

    .line 852
    .local v1, "dataResponse":Lc8/nGo;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lc8/oGo;->setSessionInvalid(Z)V

    .line 853
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 854
    iget-object v12, p0, Lc8/rGo;->mListener:Lc8/lGo;

    invoke-interface {v12, v4, v1}, Lc8/lGo;->onFailed(Lc8/oGo;Lc8/nGo;)V

    goto :goto_3

    .line 856
    .end local v1    # "dataResponse":Lc8/nGo;
    :cond_8
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v12

    if-nez v12, :cond_9

    .line 857
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 858
    :cond_9
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v6

    .line 859
    .local v6, "isNetError":Z
    if-eqz v6, :cond_a

    .line 860
    invoke-virtual {v4, v6}, Lc8/oGo;->setNetError(Z)V

    .line 864
    :goto_5
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 865
    new-instance v1, Lc8/nGo;

    invoke-direct {v1}, Lc8/nGo;-><init>()V

    .line 866
    .restart local v1    # "dataResponse":Lc8/nGo;
    iget-object v12, p0, Lc8/rGo;->mListener:Lc8/lGo;

    invoke-interface {v12, v4, v1}, Lc8/lGo;->onFailed(Lc8/oGo;Lc8/nGo;)V

    goto/16 :goto_3

    .line 862
    .end local v1    # "dataResponse":Lc8/nGo;
    :cond_a
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lc8/oGo;->setSystemError(Z)V

    goto :goto_5

    .line 872
    .end local v6    # "isNetError":Z
    :cond_b
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lc8/oGo;->setBusinessError(Z)V

    .line 873
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 874
    new-instance v1, Lc8/nGo;

    invoke-direct {v1}, Lc8/nGo;-><init>()V

    .line 875
    .restart local v1    # "dataResponse":Lc8/nGo;
    iget-object v12, p0, Lc8/rGo;->mListener:Lc8/lGo;

    invoke-interface {v12, v4, v1}, Lc8/lGo;->onFailed(Lc8/oGo;Lc8/nGo;)V

    goto/16 :goto_3

    .line 879
    .end local v1    # "dataResponse":Lc8/nGo;
    :cond_c
    new-instance v2, Lc8/nGo;

    invoke-direct {v2}, Lc8/nGo;-><init>()V

    .line 880
    .restart local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lc8/nGo;->setSuccess(Z)V

    .line 881
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lc8/oGo;->setBusinessError(Z)V

    .line 882
    invoke-virtual {v4, v5}, Lc8/oGo;->setErrorHandled(Z)V

    .line 883
    iget-object v12, p0, Lc8/rGo;->mListener:Lc8/lGo;

    invoke-interface {v12, v4, v2}, Lc8/lGo;->onFailed(Lc8/oGo;Lc8/nGo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 899
    .end local v2    # "dataResponse":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    :cond_d
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setApi(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setV(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setRetCode(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lc8/oGo;->setRetMsg(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
