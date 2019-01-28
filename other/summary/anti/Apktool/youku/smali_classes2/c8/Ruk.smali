.class public Lc8/Ruk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Yuk;->batchRemoveFavorite(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLc8/Uuk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Yuk;

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/Uuk;

.field final synthetic val$showIds:Ljava/util/List;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$videoIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/Yuk;Ljava/lang/String;Lc8/Uuk;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Yuk;

    .prologue
    .line 451
    iput-object p1, p0, Lc8/Ruk;->this$0:Lc8/Yuk;

    iput-object p2, p0, Lc8/Ruk;->val$backUid:Ljava/lang/String;

    iput-object p3, p0, Lc8/Ruk;->val$listener:Lc8/Uuk;

    iput-object p4, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iput-object p5, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iput-object p6, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 9
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 455
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 456
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchRemoveFavorite onFinished, response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    :try_start_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    iget-object v4, p0, Lc8/Ruk;->this$0:Lc8/Yuk;

    invoke-static {v4}, Lc8/Yuk;->access$000(Lc8/Yuk;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchRemoveFavorite, isApiSucces, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Ruk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; guid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 469
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 470
    .local v3, "success":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchRemoveFavorite, success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    if-eqz v3, :cond_1

    .line 472
    iget-object v4, p0, Lc8/Ruk;->val$listener:Lc8/Uuk;

    iget-object v5, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iget-object v6, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lc8/Uuk;->OnBatchRemoveFavoriteSuccess(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 473
    iget-object v4, p0, Lc8/Ruk;->this$0:Lc8/Yuk;

    iget-object v5, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iget-object v6, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    iget-object v8, p0, Lc8/Ruk;->val$backUid:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Lc8/Yuk;->access$200(Lc8/Yuk;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :goto_1
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 475
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "success":Z
    :cond_1
    iget-object v4, p0, Lc8/Ruk;->val$listener:Lc8/Uuk;

    iget-object v5, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iget-object v6, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/Uuk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 479
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 482
    iget-object v4, p0, Lc8/Ruk;->val$listener:Lc8/Uuk;

    iget-object v5, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iget-object v6, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/Uuk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 483
    :cond_3
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 486
    iget-object v4, p0, Lc8/Ruk;->val$listener:Lc8/Uuk;

    iget-object v5, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iget-object v6, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/Uuk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 487
    :cond_4
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v4

    if-nez v4, :cond_5

    .line 488
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 492
    :cond_5
    iget-object v4, p0, Lc8/Ruk;->val$listener:Lc8/Uuk;

    iget-object v5, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iget-object v6, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/Uuk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 498
    :cond_6
    iget-object v4, p0, Lc8/Ruk;->val$listener:Lc8/Uuk;

    iget-object v5, p0, Lc8/Ruk;->val$showIds:Ljava/util/List;

    iget-object v6, p0, Lc8/Ruk;->val$videoIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Ruk;->val$src:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5, v6, v7, v8}, Lc8/Uuk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1
.end method
