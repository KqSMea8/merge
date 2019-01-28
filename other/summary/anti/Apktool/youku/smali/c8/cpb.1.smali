.class public Lc8/cpb;
.super Ljava/lang/Object;
.source "WXHttpAdapter.java"

# interfaces
.implements Lc8/Pwb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dpb;->onHttpFinish(Lc8/nM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/dpb;


# direct methods
.method constructor <init>(Lc8/dpb;)V
    .locals 0
    .param p1, "this$1"    # Lc8/dpb;

    .prologue
    .line 510
    iput-object p1, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v0}, Lc8/dpb;->access$200(Lc8/dpb;)Lc8/SXf;

    move-result-object v0

    const-string/jumbo v1, "wx_user_intercept_error"

    iput-object v1, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v0}, Lc8/dpb;->access$200(Lc8/dpb;)Lc8/SXf;

    move-result-object v0

    const-string/jumbo v1, "wx_user_intercept_error"

    iput-object v1, v0, Lc8/SXf;->errorCode:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v0}, Lc8/dpb;->access$200(Lc8/dpb;)Lc8/SXf;

    move-result-object v0

    const-string/jumbo v1, "process weex cache failed, degradeToH5"

    iput-object v1, v0, Lc8/SXf;->errorMsg:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v0}, Lc8/dpb;->access$300(Lc8/dpb;)Lc8/CVf;

    move-result-object v0

    iget-object v1, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v1}, Lc8/dpb;->access$200(Lc8/dpb;)Lc8/SXf;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    .line 524
    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v0, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v0}, Lc8/dpb;->access$200(Lc8/dpb;)Lc8/SXf;

    move-result-object v0

    iget-object v0, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v1, "connectionType"

    const-string/jumbo v2, "weex-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v0}, Lc8/dpb;->access$200(Lc8/dpb;)Lc8/SXf;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lc8/SXf;->originalData:[B

    .line 515
    iget-object v0, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v0}, Lc8/dpb;->access$300(Lc8/dpb;)Lc8/CVf;

    move-result-object v0

    iget-object v1, p0, Lc8/cpb;->this$1:Lc8/dpb;

    invoke-static {v1}, Lc8/dpb;->access$200(Lc8/dpb;)Lc8/SXf;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    .line 516
    return-void
.end method
