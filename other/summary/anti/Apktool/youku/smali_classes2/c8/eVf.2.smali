.class public Lc8/eVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->onRenderSuccess(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nVf;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lc8/nVf;II)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lc8/eVf;->this$0:Lc8/nVf;

    iput p2, p0, Lc8/eVf;->val$width:I

    iput p3, p0, Lc8/eVf;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1066
    iget-object v0, p0, Lc8/eVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/eVf;->this$0:Lc8/nVf;

    iget-object v0, v0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lc8/eVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v0

    iget-object v1, p0, Lc8/eVf;->this$0:Lc8/nVf;

    iget v2, p0, Lc8/eVf;->val$width:I

    iget v3, p0, Lc8/eVf;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Lc8/NUf;->onRenderSuccess(Lc8/nVf;II)V

    .line 1068
    iget-object v0, p0, Lc8/eVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$500(Lc8/nVf;)Lc8/HVf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    new-instance v4, Lc8/OXf;

    invoke-direct {v4}, Lc8/OXf;-><init>()V

    .line 1070
    .local v4, "performance":Lc8/OXf;
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 1071
    iget-object v0, p0, Lc8/eVf;->this$0:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lc8/OXf;->args:Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lc8/eVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$500(Lc8/nVf;)Lc8/HVf;

    move-result-object v0

    iget-object v1, p0, Lc8/eVf;->this$0:Lc8/nVf;

    iget-object v1, v1, Lc8/nVf;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v3, "jsBridge"

    iget-object v5, p0, Lc8/eVf;->this$0:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getUserTrackParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    .line 1075
    .end local v4    # "performance":Lc8/OXf;
    :cond_0
    const-string/jumbo v0, "weex_perf"

    iget-object v1, p0, Lc8/eVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/OXf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_1
    return-void
.end method
