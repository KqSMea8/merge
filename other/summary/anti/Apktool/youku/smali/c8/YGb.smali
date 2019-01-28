.class public Lc8/YGb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

.field final synthetic c:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

.field final synthetic d:Lc8/UGb;


# direct methods
.method constructor <init>(Lc8/UGb;Ljava/util/HashMap;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V
    .locals 0

    iput-object p1, p0, Lc8/YGb;->d:Lc8/UGb;

    iput-object p2, p0, Lc8/YGb;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lc8/YGb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iput-object p4, p0, Lc8/YGb;->c:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/YGb;->d:Lc8/UGb;

    iget-object v2, p0, Lc8/YGb;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lc8/YGb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    invoke-virtual {v0, v2, v1, v3, v1}, Lc8/UGb;->synchTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->isSuccess:Z

    if-nez v2, :cond_4

    :cond_0
    if-nez v0, :cond_3

    const-string/jumbo v0, "null taokeTrace response"

    :goto_0
    const-string/jumbo v2, "taoke"

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    invoke-static {v2, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/YGb;->c:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/YGb;->c:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6dd8\u5ba2\u6253\u70b9\u5931\u8d25\uff0c\u9519\u8bef\u4fe1\u606f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;->onFailure(ILjava/lang/String;)V

    const-string/jumbo v0, "taoke"

    const-string/jumbo v1, "taoke\u5f02\u6b65\u6253\u70b9\u5931\u8d25"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lc8/YGb;->d:Lc8/UGb;

    const-string/jumbo v1, "Taoke_Trace_Async"

    invoke-static {v0, v1}, Lc8/UGb;->a(Lc8/UGb;Ljava/lang/String;)V

    const-string/jumbo v0, "taoke"

    const-string/jumbo v1, "taoke\u5f02\u6b65\u6253\u70b9\u6210\u529f"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
