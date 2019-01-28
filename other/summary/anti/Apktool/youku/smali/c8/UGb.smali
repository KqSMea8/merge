.class public Lc8/UGb;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lc8/UGb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/UGb;

    invoke-direct {v0}, Lc8/UGb;-><init>()V

    sput-object v0, Lc8/UGb;->INSTANCE:Lc8/UGb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lc8/UGb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/UGb;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc8/UGb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc8/UGb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lc8/hGb;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lc8/hGb;->sendUseabilityFailureForOtherErrmsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V
    .locals 8

    const-string/jumbo v1, "taoke"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "taoke\u5f02\u6b65\u6253\u70b9\u5f00\u59cb\uff0c\u53c2\u6570\u4e3a\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "rpcReferer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v0, Lc8/aHb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc8/aHb;-><init>(Lc8/UGb;Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    invoke-virtual {v7, v0}, Lc8/gIb;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "taoke"

    const-string/jumbo v2, "\u6dfb\u52a0\u6dd8\u5ba2\u53c2\u6570"

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "url"

    if-nez p3, :cond_1

    const-string/jumbo p3, ""

    :cond_1
    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appKey"

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "utdid"

    invoke-static {}, Lc8/vFb;->getUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->subPid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "subPid"

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->subPid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->unionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "unionId"

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->unionId:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string/jumbo v1, "pid"

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "taoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6dd8\u5ba2\u53c2\u6570:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "subPid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "unionId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public asyncTaokeTrace(Ljava/util/HashMap;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lc8/UGb;->a(Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;)V

    const-string/jumbo v1, "taoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "taoke\u5f02\u6b65\u6253\u70b9\u5f00\u59cb\uff0c\u53c2\u6570\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v1, Lc8/YGb;

    invoke-direct {v1, p0, p1, p2, p3}, Lc8/YGb;-><init>(Lc8/UGb;Ljava/util/HashMap;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    invoke-virtual {v0, v1}, Lc8/gIb;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public genUrlAndTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;ZLcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V
    .locals 10

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/VHb;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "taoke"

    const-string/jumbo v2, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u518d\u8bd5"

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Lc8/SGb;->genTaokeUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez p4, :cond_2

    :cond_1
    const-string/jumbo v1, "taoke"

    const-string/jumbo v2, "\u6dd8\u5ba2\u53c2\u6570\u4e0d\u5b58\u5728"

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p4, p2}, Lc8/UGb;->a(Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;)V

    const-string/jumbo v1, "async"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->d(Ljava/lang/String;)V

    if-nez p3, :cond_3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lc8/UGb;->taokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Lc8/SGb;->genTaokeUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lc8/ZGb;

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object/from16 v5, p7

    move-object v6, p2

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lc8/ZGb;-><init>(Lc8/UGb;Lcom/alibaba/baichuan/android/trade/b/a;Ljava/util/HashMap;Lc8/SGb;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    sget-object v2, Lc8/vFb;->executorService:Lc8/gIb;

    invoke-virtual {v2, v1}, Lc8/gIb;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synchTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;
    .locals 5

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lc8/CFb;

    invoke-direct {v0}, Lc8/CFb;-><init>()V

    iget-object v1, p3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    const-string/jumbo v2, "mm_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "taoke"

    const-string/jumbo v2, "\u6dd8\u5ba2pid\u53c2\u6570\u9519\u8bef"

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lc8/CFb;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "Taoke_Trace_Async"

    iget-object v2, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1701"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lc8/UGb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "taoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tktrace result json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public taokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lc8/UGb;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    return-void
.end method
