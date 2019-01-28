.class public Lc8/Quk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Yuk;->checkFavorite(Ljava/util/List;Ljava/util/List;ZLc8/Vuk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Yuk;

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/Vuk;

.field final synthetic val$showIds:Ljava/util/List;

.field final synthetic val$videoIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/Yuk;Ljava/lang/String;Lc8/Vuk;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Yuk;

    .prologue
    .line 361
    iput-object p1, p0, Lc8/Quk;->this$0:Lc8/Yuk;

    iput-object p2, p0, Lc8/Quk;->val$backUid:Ljava/lang/String;

    iput-object p3, p0, Lc8/Quk;->val$listener:Lc8/Vuk;

    iput-object p4, p0, Lc8/Quk;->val$showIds:Ljava/util/List;

    iput-object p5, p0, Lc8/Quk;->val$videoIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 9
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 365
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 366
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFavorite showIds or videoIds,  onFinished, response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    :try_start_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    iget-object v5, p0, Lc8/Quk;->this$0:Lc8/Yuk;

    invoke-static {v5}, Lc8/Yuk;->access$000(Lc8/Yuk;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFavorite showIds or videoIds, isApiSucces, uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/Quk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; guid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 379
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "sidResultMap"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 380
    .local v3, "sidResultMap":Lorg/json/JSONObject;
    const-string/jumbo v5, "vidResultMap"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 382
    .local v4, "vidResultMap":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFavorite showIds or videoIds, Success, sidResultMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; vidResultMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    iget-object v5, p0, Lc8/Quk;->val$listener:Lc8/Vuk;

    iget-object v6, p0, Lc8/Quk;->val$showIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Quk;->val$videoIds:Ljava/util/List;

    invoke-interface {v5, v6, v7, v3, v4}, Lc8/Vuk;->OnCheckFavoriteListSuccess(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 408
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "sidResultMap":Lorg/json/JSONObject;
    .end local v4    # "vidResultMap":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    iget-object v5, p0, Lc8/Quk;->val$listener:Lc8/Vuk;

    iget-object v6, p0, Lc8/Quk;->val$showIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Quk;->val$videoIds:Ljava/util/List;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Vuk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/util/List;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 391
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 394
    iget-object v5, p0, Lc8/Quk;->val$listener:Lc8/Vuk;

    iget-object v6, p0, Lc8/Quk;->val$showIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Quk;->val$videoIds:Ljava/util/List;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Vuk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/util/List;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 395
    :cond_3
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v5

    if-nez v5, :cond_4

    .line 396
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 400
    :cond_4
    iget-object v5, p0, Lc8/Quk;->val$listener:Lc8/Vuk;

    iget-object v6, p0, Lc8/Quk;->val$showIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Quk;->val$videoIds:Ljava/util/List;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Vuk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/util/List;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 406
    :cond_5
    iget-object v5, p0, Lc8/Quk;->val$listener:Lc8/Vuk;

    iget-object v6, p0, Lc8/Quk;->val$showIds:Ljava/util/List;

    iget-object v7, p0, Lc8/Quk;->val$videoIds:Ljava/util/List;

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Vuk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/util/List;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1
.end method
