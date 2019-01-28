.class public Lc8/gzk;
.super Lc8/SIj;
.source "OfflineSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jzk;->httpRequestURL(Ljava/lang/String;Lc8/hzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jzk;

.field final synthetic val$mIOfflineSubscribeCallBack:Lc8/hzk;


# direct methods
.method constructor <init>(Lc8/jzk;Lc8/hzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jzk;

    .prologue
    .line 137
    iput-object p1, p0, Lc8/gzk;->this$0:Lc8/jzk;

    iput-object p2, p0, Lc8/gzk;->val$mIOfflineSubscribeCallBack:Lc8/hzk;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===failReason=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lc8/gzk;->val$mIOfflineSubscribeCallBack:Lc8/hzk;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lc8/gzk;->val$mIOfflineSubscribeCallBack:Lc8/hzk;

    invoke-interface {v0, p1}, Lc8/hzk;->failResult(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lc8/TIj;

    .prologue
    .line 141
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "successResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "===result=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lc8/gzk;->val$mIOfflineSubscribeCallBack:Lc8/hzk;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lc8/gzk;->val$mIOfflineSubscribeCallBack:Lc8/hzk;

    invoke-interface {v1, v0}, Lc8/hzk;->successReslut(Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method
