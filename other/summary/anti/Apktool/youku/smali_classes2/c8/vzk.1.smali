.class public Lc8/vzk;
.super Ljava/lang/Object;
.source "PlaylistManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Czk;->checkFavorite(Ljava/lang/String;Ljava/lang/String;ZLc8/Bzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Czk;

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/Bzk;

.field final synthetic val$obj_id:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Czk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Bzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Czk;

    .prologue
    .line 266
    iput-object p1, p0, Lc8/vzk;->this$0:Lc8/Czk;

    iput-object p2, p0, Lc8/vzk;->val$obj_id:Ljava/lang/String;

    iput-object p3, p0, Lc8/vzk;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lc8/vzk;->val$backUid:Ljava/lang/String;

    iput-object p5, p0, Lc8/vzk;->val$listener:Lc8/Bzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 9
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 270
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 271
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFavorite onFinished, response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    :try_start_0
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    iget-object v5, p0, Lc8/vzk;->this$0:Lc8/Czk;

    invoke-static {v5}, Lc8/Czk;->access$000(Lc8/Czk;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 285
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 286
    .local v1, "isFavorite":Z
    const-string/jumbo v5, "subCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "subCode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFavorite, isApiSuccess, showid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/vzk;->val$obj_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";type =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/vzk;->val$type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; isFavorite = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/vzk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; guid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    iget-object v5, p0, Lc8/vzk;->val$listener:Lc8/Bzk;

    iget-object v6, p0, Lc8/vzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/vzk;->val$type:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v1, v4}, Lc8/Bzk;->onCheckFavoriteSuccess(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 313
    .end local v1    # "isFavorite":Z
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "subCode":Ljava/lang/String;
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    iget-object v5, p0, Lc8/vzk;->val$listener:Lc8/Bzk;

    iget-object v6, p0, Lc8/vzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/vzk;->val$type:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Bzk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    iget-object v5, p0, Lc8/vzk;->val$listener:Lc8/Bzk;

    iget-object v6, p0, Lc8/vzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/vzk;->val$type:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Bzk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 300
    :cond_3
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v5

    if-nez v5, :cond_4

    .line 301
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 305
    :cond_4
    iget-object v5, p0, Lc8/vzk;->val$listener:Lc8/Bzk;

    iget-object v6, p0, Lc8/vzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/vzk;->val$type:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Bzk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 311
    :cond_5
    iget-object v5, p0, Lc8/vzk;->val$listener:Lc8/Bzk;

    iget-object v6, p0, Lc8/vzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/vzk;->val$type:Ljava/lang/String;

    sget-object v8, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v5, v6, v7, v8}, Lc8/Bzk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1
.end method
