.class public Lc8/cvk;
.super Ljava/lang/Object;
.source "FollowManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvk;->mergeShow(Lc8/ivk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvk;

.field final synthetic val$listener:Lc8/ivk;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jvk;Ljava/lang/String;Lc8/ivk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvk;

    .prologue
    .line 409
    iput-object p1, p0, Lc8/cvk;->this$0:Lc8/jvk;

    iput-object p2, p0, Lc8/cvk;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lc8/cvk;->val$listener:Lc8/ivk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 413
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 414
    .local v1, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mergeShow onFinished, response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    :try_start_0
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lc8/cvk;->this$0:Lc8/jvk;

    invoke-static {v2}, Lc8/jvk;->access$000(Lc8/jvk;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMergeShowSuccess, isApiSuccess, uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/cvk;->val$uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; guid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    iget-object v2, p0, Lc8/cvk;->val$listener:Lc8/ivk;

    invoke-interface {v2}, Lc8/ivk;->onMergeShowSuccess()V

    .line 449
    :goto_1
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    iget-object v2, p0, Lc8/cvk;->val$listener:Lc8/ivk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/ivk;->onMergeShowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 432
    :cond_2
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 435
    iget-object v2, p0, Lc8/cvk;->val$listener:Lc8/ivk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/ivk;->onMergeShowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v2

    if-nez v2, :cond_4

    .line 437
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 441
    :cond_4
    iget-object v2, p0, Lc8/cvk;->val$listener:Lc8/ivk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/ivk;->onMergeShowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1

    .line 447
    :cond_5
    iget-object v2, p0, Lc8/cvk;->val$listener:Lc8/ivk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/ivk;->onMergeShowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_1
.end method
