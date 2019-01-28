.class public Lc8/jVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nVf;

.field final synthetic val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/nVf;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lc8/jVf;->this$0:Lc8/nVf;

    iput-object p2, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    iput-object p3, p0, Lc8/jVf;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1228
    iget-object v0, p0, Lc8/jVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$400(Lc8/nVf;)Lc8/OUf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    if-eq v0, v1, :cond_0

    .line 1229
    iget-object v0, p0, Lc8/jVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$400(Lc8/nVf;)Lc8/OUf;

    move-result-object v0

    iget-object v1, p0, Lc8/jVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$700(Lc8/nVf;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lc8/OUf;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_0
    new-instance v4, Lc8/OXf;

    invoke-direct {v4}, Lc8/OXf;-><init>()V

    .line 1235
    .local v4, "performance":Lc8/OXf;
    iget-object v0, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 1236
    iget-object v0, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getArgs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lc8/OXf;->args:Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    if-eq v0, v1, :cond_1

    .line 1238
    iget-object v0, p0, Lc8/jVf;->val$errorCode:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lc8/OXf;->errMsg:Ljava/lang/String;

    .line 1239
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    invoke-virtual {v4}, Lc8/OXf;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1243
    :cond_1
    iget-object v0, p0, Lc8/jVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$500(Lc8/nVf;)Lc8/HVf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1244
    iget-object v0, p0, Lc8/jVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$500(Lc8/nVf;)Lc8/HVf;

    move-result-object v0

    iget-object v1, p0, Lc8/jVf;->this$0:Lc8/nVf;

    iget-object v1, v1, Lc8/nVf;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/jVf;->val$type:Ljava/lang/String;

    iget-object v5, p0, Lc8/jVf;->this$0:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getUserTrackParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    .line 1246
    :cond_2
    return-void
.end method
