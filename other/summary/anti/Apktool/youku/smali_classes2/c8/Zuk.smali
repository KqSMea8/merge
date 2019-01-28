.class public Lc8/Zuk;
.super Ljava/lang/Object;
.source "FollowManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvk;->addOrCancelFollow(ZLjava/lang/String;ZZLc8/evk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvk;

.field final synthetic val$addFollow:Z

.field final synthetic val$listener:Lc8/evk;

.field final synthetic val$showId:Ljava/lang/String;

.field final synthetic val$showToast:Z

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jvk;ZZLjava/lang/String;Ljava/lang/String;Lc8/evk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvk;

    .prologue
    .line 151
    iput-object p1, p0, Lc8/Zuk;->this$0:Lc8/jvk;

    iput-boolean p2, p0, Lc8/Zuk;->val$showToast:Z

    iput-boolean p3, p0, Lc8/Zuk;->val$addFollow:Z

    iput-object p4, p0, Lc8/Zuk;->val$showId:Ljava/lang/String;

    iput-object p5, p0, Lc8/Zuk;->val$uid:Ljava/lang/String;

    iput-object p6, p0, Lc8/Zuk;->val$listener:Lc8/evk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 155
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 156
    .local v1, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addOrCancelFollow onFinished, response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    :try_start_0
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lc8/Zuk;->this$0:Lc8/jvk;

    invoke-static {v2}, Lc8/jvk;->access$000(Lc8/jvk;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    iget-boolean v2, p0, Lc8/Zuk;->val$showToast:Z

    if-eqz v2, :cond_1

    .line 168
    iget-boolean v2, p0, Lc8/Zuk;->val$addFollow:Z

    if-eqz v2, :cond_3

    .line 169
    sget v2, Lcom/youku/phone/R$string;->add_follow_success:I

    invoke-static {v2}, Lc8/nzk;->showTips(I)V

    .line 175
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addOrCancelFollow, isApiSuccess, showid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Zuk;->val$showId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Zuk;->val$uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; guid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    iget-object v2, p0, Lc8/Zuk;->val$listener:Lc8/evk;

    invoke-interface {v2}, Lc8/evk;->onAddOrCancelFollowSuccess()V

    .line 181
    iget-object v2, p0, Lc8/Zuk;->this$0:Lc8/jvk;

    iget-boolean v3, p0, Lc8/Zuk;->val$addFollow:Z

    iget-object v4, p0, Lc8/Zuk;->val$showId:Ljava/lang/String;

    iget-object v5, p0, Lc8/Zuk;->val$uid:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lc8/jvk;->access$100(Lc8/jvk;ZLjava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_2
    :goto_2
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    sget v2, Lcom/youku/phone/R$string;->cancel_follow_success:I

    invoke-static {v2}, Lc8/nzk;->showTips(I)V

    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, p0, Lc8/Zuk;->val$listener:Lc8/evk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/evk;->onAddOrCancelFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    .line 207
    :goto_3
    iget-boolean v2, p0, Lc8/Zuk;->val$showToast:Z

    if-eqz v2, :cond_2

    .line 208
    iget-boolean v2, p0, Lc8/Zuk;->val$addFollow:Z

    if-eqz v2, :cond_9

    .line 209
    sget v2, Lcom/youku/phone/R$string;->add_follow_fail:I

    invoke-static {v2}, Lc8/nzk;->showTips(I)V

    goto :goto_2

    .line 189
    :cond_5
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    iget-object v2, p0, Lc8/Zuk;->val$listener:Lc8/evk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/evk;->onAddOrCancelFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_3

    .line 193
    :cond_6
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v2

    if-nez v2, :cond_7

    .line 194
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 198
    :cond_7
    iget-object v2, p0, Lc8/Zuk;->val$listener:Lc8/evk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/evk;->onAddOrCancelFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_3

    .line 204
    :cond_8
    iget-object v2, p0, Lc8/Zuk;->val$listener:Lc8/evk;

    sget-object v3, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {v2, v3}, Lc8/evk;->onAddOrCancelFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_3

    .line 211
    :cond_9
    sget v2, Lcom/youku/phone/R$string;->cancel_follow_fail:I

    invoke-static {v2}, Lc8/nzk;->showTips(I)V

    goto :goto_2
.end method
