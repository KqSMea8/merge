.class public Lc8/avk;
.super Ljava/lang/Object;
.source "FollowManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvk;->checkFollowed(Ljava/lang/String;ZLc8/hvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvk;

.field final synthetic val$listener:Lc8/hvk;

.field final synthetic val$showId:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jvk;Ljava/lang/String;Ljava/lang/String;Lc8/hvk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvk;

    .prologue
    .line 250
    iput-object p1, p0, Lc8/avk;->this$0:Lc8/jvk;

    iput-object p2, p0, Lc8/avk;->val$showId:Ljava/lang/String;

    iput-object p3, p0, Lc8/avk;->val$uid:Ljava/lang/String;

    iput-object p4, p0, Lc8/avk;->val$listener:Lc8/hvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 254
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 255
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkFollowed onFinished, response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    :try_start_0
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lc8/avk;->this$0:Lc8/jvk;

    invoke-static {v4}, Lc8/jvk;->access$000(Lc8/jvk;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 269
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 270
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 272
    .local v1, "isFollowed":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkFollowed, isApiSuccess, showid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/avk;->val$showId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; isFollowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/avk;->val$uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; guid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    iget-object v4, p0, Lc8/avk;->val$listener:Lc8/hvk;

    iget-object v5, p0, Lc8/avk;->val$showId:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lc8/hvk;->onCheckFollowSuccess(Ljava/lang/String;Z)V

    .line 297
    .end local v1    # "isFollowed":Z
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    iget-object v4, p0, Lc8/avk;->val$listener:Lc8/hvk;

    sget-object v5, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5}, Lc8/hvk;->onCheckFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 283
    iget-object v4, p0, Lc8/avk;->val$listener:Lc8/hvk;

    sget-object v5, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5}, Lc8/hvk;->onCheckFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 284
    :cond_3
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v4

    if-nez v4, :cond_4

    .line 285
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 289
    :cond_4
    iget-object v4, p0, Lc8/avk;->val$listener:Lc8/hvk;

    sget-object v5, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5}, Lc8/hvk;->onCheckFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 295
    :cond_5
    iget-object v4, p0, Lc8/avk;->val$listener:Lc8/hvk;

    sget-object v5, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v4, v5}, Lc8/hvk;->onCheckFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1
.end method
