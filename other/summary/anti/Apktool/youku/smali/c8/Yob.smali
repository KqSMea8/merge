.class public Lc8/Yob;
.super Ljava/lang/Object;
.source "WXHttpAdapter.java"

# interfaces
.implements Lc8/Pwb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/epb;->hitZCacheWithWeexCache(Lc8/SXf;Lc8/CVf;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/epb;

.field final synthetic val$onHttpListenerF:Lc8/CVf;

.field final synthetic val$responseF:Lc8/SXf;


# direct methods
.method constructor <init>(Lc8/epb;Lc8/SXf;Lc8/CVf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/epb;

    .prologue
    .line 170
    iput-object p1, p0, Lc8/Yob;->this$0:Lc8/epb;

    iput-object p2, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    iput-object p3, p0, Lc8/Yob;->val$onHttpListenerF:Lc8/CVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    const-string/jumbo v1, "wx_user_intercept_error"

    iput-object v1, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    const-string/jumbo v1, "wx_user_intercept_error"

    iput-object v1, v0, Lc8/SXf;->errorCode:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    const-string/jumbo v1, "process weex cache failed, degradeToH5"

    iput-object v1, v0, Lc8/SXf;->errorMsg:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lc8/Yob;->val$onHttpListenerF:Lc8/CVf;

    iget-object v1, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    invoke-interface {v0, v1}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    .line 184
    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    iget-object v0, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v1, "connectionType"

    const-string/jumbo v2, "weex-cache-zcache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lc8/SXf;->originalData:[B

    .line 175
    iget-object v0, p0, Lc8/Yob;->val$onHttpListenerF:Lc8/CVf;

    iget-object v1, p0, Lc8/Yob;->val$responseF:Lc8/SXf;

    invoke-interface {v0, v1}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    .line 176
    return-void
.end method
