.class public Lc8/dvk;
.super Ljava/lang/Object;
.source "FollowManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvk;->batchCancelFollow(Ljava/util/List;ZLc8/fvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvk;

.field final synthetic val$listener:Lc8/fvk;

.field final synthetic val$showIds:Ljava/util/List;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jvk;Ljava/lang/String;Lc8/fvk;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvk;

    .prologue
    .line 474
    iput-object p1, p0, Lc8/dvk;->this$0:Lc8/jvk;

    iput-object p2, p0, Lc8/dvk;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lc8/dvk;->val$listener:Lc8/fvk;

    iput-object p4, p0, Lc8/dvk;->val$showIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 7
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 478
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 479
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchCancelFollow onFinished, response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    :try_start_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    iget-object v4, p0, Lc8/dvk;->this$0:Lc8/jvk;

    invoke-static {v4}, Lc8/jvk;->access$000(Lc8/jvk;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchCancelFollow, isApiSucces, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/dvk;->val$uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; guid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 492
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 493
    .local v3, "success":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchCancelFollow, success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    if-eqz v3, :cond_1

    .line 495
    iget-object v4, p0, Lc8/dvk;->val$listener:Lc8/fvk;

    iget-object v5, p0, Lc8/dvk;->val$showIds:Ljava/util/List;

    invoke-interface {v4, v5}, Lc8/fvk;->OnBatchCancelFollowSuccess(Ljava/util/List;)V

    .line 522
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :goto_1
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "success":Z
    :cond_1
    iget-object v4, p0, Lc8/dvk;->val$listener:Lc8/fvk;

    iget-object v5, p0, Lc8/dvk;->val$showIds:Ljava/util/List;

    sget-object v6, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5, v6}, Lc8/fvk;->OnBatchCancelFollowFail(Ljava/util/List;Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 501
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 504
    iget-object v4, p0, Lc8/dvk;->val$listener:Lc8/fvk;

    iget-object v5, p0, Lc8/dvk;->val$showIds:Ljava/util/List;

    sget-object v6, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5, v6}, Lc8/fvk;->OnBatchCancelFollowFail(Ljava/util/List;Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 505
    :cond_3
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 508
    iget-object v4, p0, Lc8/dvk;->val$listener:Lc8/fvk;

    iget-object v5, p0, Lc8/dvk;->val$showIds:Ljava/util/List;

    sget-object v6, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5, v6}, Lc8/fvk;->OnBatchCancelFollowFail(Ljava/util/List;Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 509
    :cond_4
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v4

    if-nez v4, :cond_5

    .line 510
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 514
    :cond_5
    iget-object v4, p0, Lc8/dvk;->val$listener:Lc8/fvk;

    iget-object v5, p0, Lc8/dvk;->val$showIds:Ljava/util/List;

    sget-object v6, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5, v6}, Lc8/fvk;->OnBatchCancelFollowFail(Ljava/util/List;Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 520
    :cond_6
    iget-object v4, p0, Lc8/dvk;->val$listener:Lc8/fvk;

    iget-object v5, p0, Lc8/dvk;->val$showIds:Ljava/util/List;

    sget-object v6, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5, v6}, Lc8/fvk;->OnBatchCancelFollowFail(Ljava/util/List;Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1
.end method
