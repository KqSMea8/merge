.class public Lc8/wzk;
.super Ljava/lang/Object;
.source "PlaylistManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Czk;->checkFavorite(Ljava/util/List;Ljava/lang/String;ZLc8/Azk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Czk;

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/Azk;

.field final synthetic val$obj_ids:Ljava/util/List;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Czk;Ljava/lang/String;Lc8/Azk;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Czk;

    .prologue
    .line 355
    iput-object p1, p0, Lc8/wzk;->this$0:Lc8/Czk;

    iput-object p2, p0, Lc8/wzk;->val$backUid:Ljava/lang/String;

    iput-object p3, p0, Lc8/wzk;->val$listener:Lc8/Azk;

    iput-object p4, p0, Lc8/wzk;->val$obj_ids:Ljava/util/List;

    iput-object p5, p0, Lc8/wzk;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 7
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 359
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 360
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkFavorite obj_ids,  onFinished, response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    :try_start_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    iget-object v3, p0, Lc8/wzk;->this$0:Lc8/Czk;

    invoke-static {v3}, Lc8/Czk;->access$000(Lc8/Czk;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkFavorite obj_ids, isApiSucces, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/wzk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; guid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 374
    .local v1, "objIdResultMap":Lorg/json/JSONObject;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkFavorite obj_ids , Success, objIdResultMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    if-eqz v1, :cond_1

    .line 377
    iget-object v3, p0, Lc8/wzk;->val$listener:Lc8/Azk;

    iget-object v4, p0, Lc8/wzk;->val$obj_ids:Ljava/util/List;

    iget-object v5, p0, Lc8/wzk;->val$type:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1}, Lc8/Azk;->OnCheckFavoriteListSuccess(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 405
    .end local v1    # "objIdResultMap":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "objIdResultMap":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lc8/wzk;->val$listener:Lc8/Azk;

    iget-object v4, p0, Lc8/wzk;->val$obj_ids:Ljava/util/List;

    iget-object v5, p0, Lc8/wzk;->val$type:Ljava/lang/String;

    sget-object v6, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v3, v4, v5, v6}, Lc8/Azk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 384
    .end local v1    # "objIdResultMap":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    iget-object v3, p0, Lc8/wzk;->val$listener:Lc8/Azk;

    iget-object v4, p0, Lc8/wzk;->val$obj_ids:Ljava/util/List;

    iget-object v5, p0, Lc8/wzk;->val$type:Ljava/lang/String;

    sget-object v6, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v3, v4, v5, v6}, Lc8/Azk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 388
    :cond_3
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    iget-object v3, p0, Lc8/wzk;->val$listener:Lc8/Azk;

    iget-object v4, p0, Lc8/wzk;->val$obj_ids:Ljava/util/List;

    iget-object v5, p0, Lc8/wzk;->val$type:Ljava/lang/String;

    sget-object v6, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v3, v4, v5, v6}, Lc8/Azk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 392
    :cond_4
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v3

    if-nez v3, :cond_5

    .line 393
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 397
    :cond_5
    iget-object v3, p0, Lc8/wzk;->val$listener:Lc8/Azk;

    iget-object v4, p0, Lc8/wzk;->val$obj_ids:Ljava/util/List;

    iget-object v5, p0, Lc8/wzk;->val$type:Ljava/lang/String;

    sget-object v6, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v3, v4, v5, v6}, Lc8/Azk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1

    .line 403
    :cond_6
    iget-object v3, p0, Lc8/wzk;->val$listener:Lc8/Azk;

    iget-object v4, p0, Lc8/wzk;->val$obj_ids:Ljava/util/List;

    iget-object v5, p0, Lc8/wzk;->val$type:Ljava/lang/String;

    sget-object v6, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    invoke-interface {v3, v4, v5, v6}, Lc8/Azk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_1
.end method
