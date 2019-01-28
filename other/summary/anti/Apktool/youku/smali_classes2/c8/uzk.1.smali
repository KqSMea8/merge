.class public Lc8/uzk;
.super Ljava/lang/Object;
.source "PlaylistManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Czk;->addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/yzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Czk;

.field final synthetic val$addFavorite:Z

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/yzk;

.field final synthetic val$obj_id:Ljava/lang/String;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Czk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/yzk;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/Czk;

    .prologue
    .line 166
    iput-object p1, p0, Lc8/uzk;->this$0:Lc8/Czk;

    iput-object p2, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iput-object p3, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lc8/uzk;->val$backUid:Ljava/lang/String;

    iput-object p5, p0, Lc8/uzk;->val$listener:Lc8/yzk;

    iput-object p6, p0, Lc8/uzk;->val$src:Ljava/lang/String;

    iput-boolean p7, p0, Lc8/uzk;->val$addFavorite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 15
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-virtual/range {p1 .. p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v13

    .line 171
    .local v13, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addOrCancelFavorite onFinished, response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    :try_start_0
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lc8/uzk;->this$0:Lc8/Czk;

    invoke-static {v0}, Lc8/Czk;->access$000(Lc8/Czk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addOrCancelFavorite, isApiSuccess, obj_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; type=  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/uzk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; guid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v12

    .line 187
    .local v12, "json":Lorg/json/JSONObject;
    const-string/jumbo v0, "result"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 188
    .local v14, "result":Z
    const-string/jumbo v0, "displayMsg"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "displayMsg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addOrCancelFavorite, listener onAddOrCancelFavoriteSuccess, result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; displayMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    if-eqz v14, :cond_1

    .line 191
    iget-object v0, p0, Lc8/uzk;->val$listener:Lc8/yzk;

    iget-object v1, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iget-object v2, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lc8/uzk;->val$src:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lc8/yzk;->onAddOrRemoveFavoriteSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lc8/uzk;->this$0:Lc8/Czk;

    iget-boolean v1, p0, Lc8/uzk;->val$addFavorite:Z

    iget-object v2, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iget-object v3, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iget-object v5, p0, Lc8/uzk;->val$backUid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v5}, Lc8/Czk;->access$100(Lc8/Czk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v4    # "displayMsg":Ljava/lang/String;
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v14    # "result":Z
    :goto_1
    return-void

    .line 177
    :catch_0
    move-exception v11

    .line 178
    .local v11, "e":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 195
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v4    # "displayMsg":Ljava/lang/String;
    .restart local v12    # "json":Lorg/json/JSONObject;
    .restart local v14    # "result":Z
    :cond_1
    iget-object v0, p0, Lc8/uzk;->val$listener:Lc8/yzk;

    iget-object v1, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iget-object v2, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lc8/uzk;->val$src:Ljava/lang/String;

    sget-object v5, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface/range {v0 .. v5}, Lc8/yzk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 200
    .end local v4    # "displayMsg":Ljava/lang/String;
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v14    # "result":Z
    :cond_2
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v5, p0, Lc8/uzk;->val$listener:Lc8/yzk;

    iget-object v6, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iget-object v8, p0, Lc8/uzk;->val$src:Ljava/lang/String;

    const-string/jumbo v9, ""

    sget-object v10, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface/range {v5 .. v10}, Lc8/yzk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v5, p0, Lc8/uzk;->val$listener:Lc8/yzk;

    iget-object v6, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iget-object v8, p0, Lc8/uzk;->val$src:Ljava/lang/String;

    const-string/jumbo v9, ""

    sget-object v10, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface/range {v5 .. v10}, Lc8/yzk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v0

    if-nez v0, :cond_5

    .line 209
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    :cond_5
    iget-object v5, p0, Lc8/uzk;->val$listener:Lc8/yzk;

    iget-object v6, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iget-object v8, p0, Lc8/uzk;->val$src:Ljava/lang/String;

    const-string/jumbo v9, ""

    sget-object v10, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface/range {v5 .. v10}, Lc8/yzk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 219
    :cond_6
    iget-object v5, p0, Lc8/uzk;->val$listener:Lc8/yzk;

    iget-object v6, p0, Lc8/uzk;->val$obj_id:Ljava/lang/String;

    iget-object v7, p0, Lc8/uzk;->val$type:Ljava/lang/String;

    iget-object v8, p0, Lc8/uzk;->val$src:Ljava/lang/String;

    const-string/jumbo v9, ""

    sget-object v10, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface/range {v5 .. v10}, Lc8/yzk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto/16 :goto_1
.end method
