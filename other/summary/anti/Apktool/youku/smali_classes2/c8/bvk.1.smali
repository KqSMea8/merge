.class public Lc8/bvk;
.super Ljava/lang/Object;
.source "FollowManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvk;->checkFollowed(Ljava/util/List;ZLc8/gvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvk;

.field final synthetic val$listener:Lc8/gvk;

.field final synthetic val$showIds:Ljava/util/List;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jvk;Ljava/lang/String;Ljava/util/List;Lc8/gvk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvk;

    .prologue
    .line 328
    iput-object p1, p0, Lc8/bvk;->this$0:Lc8/jvk;

    iput-object p2, p0, Lc8/bvk;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lc8/bvk;->val$showIds:Ljava/util/List;

    iput-object p4, p0, Lc8/bvk;->val$listener:Lc8/gvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 9
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 332
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 333
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkFollowed showIds onFinished, response:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    :try_start_0
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    iget-object v6, p0, Lc8/bvk;->this$0:Lc8/jvk;

    invoke-static {v6}, Lc8/jvk;->access$000(Lc8/jvk;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkFollowed showIds, isApiSucces, uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/bvk;->val$uid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; guid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 346
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 347
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lc8/bvk;->val$showIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 350
    .local v5, "showId":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 351
    .local v1, "isFollowed":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkFollowed showIds, Success, showId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; isFollowed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 353
    .end local v1    # "isFollowed":Z
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "showId":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkFollowed showIds, Success, resultMap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    iget-object v6, p0, Lc8/bvk;->val$listener:Lc8/gvk;

    invoke-interface {v6, v4}, Lc8/gvk;->OnCheckFollowListSuccess(Ljava/util/Map;)V

    .line 382
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_2
    return-void

    .line 361
    :cond_2
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    iget-object v6, p0, Lc8/bvk;->val$listener:Lc8/gvk;

    sget-object v7, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v6, v7}, Lc8/gvk;->OnCheckFollowListFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_2

    .line 365
    :cond_3
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 368
    iget-object v6, p0, Lc8/bvk;->val$listener:Lc8/gvk;

    sget-object v7, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v6, v7}, Lc8/gvk;->OnCheckFollowListFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_2

    .line 369
    :cond_4
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v6

    if-nez v6, :cond_5

    .line 370
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 374
    :cond_5
    iget-object v6, p0, Lc8/bvk;->val$listener:Lc8/gvk;

    sget-object v7, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v6, v7}, Lc8/gvk;->OnCheckFollowListFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_2

    .line 380
    :cond_6
    iget-object v6, p0, Lc8/bvk;->val$listener:Lc8/gvk;

    sget-object v7, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v6, v7}, Lc8/gvk;->OnCheckFollowListFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_2
.end method
