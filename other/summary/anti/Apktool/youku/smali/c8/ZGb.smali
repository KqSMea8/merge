.class public Lc8/ZGb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/b/a;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lc8/SGb;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

.field final synthetic h:Lc8/UGb;


# direct methods
.method constructor <init>(Lc8/UGb;Lcom/alibaba/baichuan/android/trade/b/a;Ljava/util/HashMap;Lc8/SGb;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V
    .locals 0

    iput-object p1, p0, Lc8/ZGb;->h:Lc8/UGb;

    iput-object p2, p0, Lc8/ZGb;->a:Lcom/alibaba/baichuan/android/trade/b/a;

    iput-object p3, p0, Lc8/ZGb;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lc8/ZGb;->c:Lc8/SGb;

    iput-object p5, p0, Lc8/ZGb;->d:Ljava/lang/String;

    iput-object p6, p0, Lc8/ZGb;->e:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iput-object p7, p0, Lc8/ZGb;->f:Ljava/lang/String;

    iput-object p8, p0, Lc8/ZGb;->g:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lc8/ZGb;->a:Lcom/alibaba/baichuan/android/trade/b/a;

    const-string/jumbo v1, "sync"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getIsSyncForTaoke()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "taoke"

    const-string/jumbo v1, "taoke\u540c\u6b65\u6253\u70b9"

    invoke-static {v0, v1}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZGb;->a:Lcom/alibaba/baichuan/android/trade/b/a;

    const-string/jumbo v1, "taokeTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Ljava/lang/String;)V

    new-instance v0, Lc8/DFb;

    invoke-direct {v0}, Lc8/DFb;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lc8/ZGb;->b:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lc8/DFb;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v0

    invoke-static {v0}, Lc8/DFb;->a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/ZGb;->a:Lcom/alibaba/baichuan/android/trade/b/a;

    const-string/jumbo v3, "taokeTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/baichuan/android/trade/b/a;->b(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "taoke"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "taoke\u540c\u6b65\u6253\u70b9\u6210,sclickUrl\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZGb;->h:Lc8/UGb;

    const-string/jumbo v2, "Taoke_Trace_Sync"

    invoke-static {v0, v2}, Lc8/UGb;->a(Lc8/UGb;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZGb;->c:Lc8/SGb;

    invoke-interface {v0, v1}, Lc8/SGb;->genTaokeUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lc8/ZGb;->h:Lc8/UGb;

    const-string/jumbo v2, "Taoke_Trace_Sync"

    iget-object v3, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "1702"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lc8/UGb;->a(Lc8/UGb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "taoke"

    const-string/jumbo v1, "taoke\u540c\u6b65\u6253\u70b9\u5931\u8d25"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc8/ZGb;->h:Lc8/UGb;

    iget-object v1, p0, Lc8/ZGb;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lc8/ZGb;->d:Ljava/lang/String;

    iget-object v3, p0, Lc8/ZGb;->e:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v4, p0, Lc8/ZGb;->f:Ljava/lang/String;

    iget-object v5, p0, Lc8/ZGb;->a:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v6, p0, Lc8/ZGb;->g:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    invoke-virtual/range {v0 .. v6}, Lc8/UGb;->taokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    iget-object v0, p0, Lc8/ZGb;->c:Lc8/SGb;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/SGb;->genTaokeUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
