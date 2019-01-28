.class public Lc8/xzk;
.super Ljava/lang/Object;
.source "PlaylistManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Czk;->batchRemoveFavorite(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLc8/zzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Czk;

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/zzk;

.field final synthetic val$obj_ids:Ljava/util/List;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Czk;Ljava/lang/String;Lc8/zzk;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Czk;

    .prologue
    .line 448
    iput-object p1, p0, Lc8/xzk;->this$0:Lc8/Czk;

    iput-object p2, p0, Lc8/xzk;->val$backUid:Ljava/lang/String;

    iput-object p3, p0, Lc8/xzk;->val$listener:Lc8/zzk;

    iput-object p4, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iput-object p5, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 9
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 452
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 453
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchRemoveFavorite onFinished, response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    :try_start_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    iget-object v4, p0, Lc8/xzk;->this$0:Lc8/Czk;

    invoke-static {v4}, Lc8/Czk;->access$000(Lc8/Czk;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchRemoveFavorite, isApiSucces, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/xzk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; guid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 466
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 467
    .local v3, "success":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchRemoveFavorite, success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    if-eqz v3, :cond_1

    .line 469
    iget-object v4, p0, Lc8/xzk;->val$listener:Lc8/zzk;

    iget-object v5, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iget-object v6, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lc8/zzk;->OnBatchRemoveFavoriteSuccess(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lc8/xzk;->this$0:Lc8/Czk;

    iget-object v5, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iget-object v6, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lc8/Czk;->access$200(Lc8/Czk;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :goto_1
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 472
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "success":Z
    :cond_1
    iget-object v4, p0, Lc8/xzk;->val$listener:Lc8/zzk;

    iget-object v5, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iget-object v6, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/zzk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 476
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 479
    iget-object v4, p0, Lc8/xzk;->val$listener:Lc8/zzk;

    iget-object v5, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iget-object v6, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/zzk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 480
    :cond_3
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    iget-object v4, p0, Lc8/xzk;->val$listener:Lc8/zzk;

    iget-object v5, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iget-object v6, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/zzk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 484
    :cond_4
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v4

    if-nez v4, :cond_5

    .line 485
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 489
    :cond_5
    iget-object v4, p0, Lc8/xzk;->val$listener:Lc8/zzk;

    iget-object v5, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iget-object v6, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/zzk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 495
    :cond_6
    iget-object v4, p0, Lc8/xzk;->val$listener:Lc8/zzk;

    iget-object v5, p0, Lc8/xzk;->val$obj_ids:Ljava/util/List;

    iget-object v6, p0, Lc8/xzk;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lc8/xzk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/zzk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1
.end method
