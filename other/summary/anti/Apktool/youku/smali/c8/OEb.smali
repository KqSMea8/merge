.class public Lc8/OEb;
.super Ljava/lang/Object;


# static fields
.field public static final WANT_ADD_CART:Lc8/OEb;

.field private static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;

.field private static c:Ljava/util/Map;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field public hintInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc8/OEb;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "24"

    const-string/jumbo v3, "\u6dfb\u52a0\u5546\u54c1\u5230\u60a8\u7684\u6dd8\u5b9d\u8d2d\u7269\u8f66"

    invoke-direct {v0, v1, v2, v3}, Lc8/OEb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lc8/OEb;->WANT_ADD_CART:Lc8/OEb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/OEb;->d:Ljava/lang/String;

    iput-object p3, p0, Lc8/OEb;->hintInfo:Ljava/lang/String;

    iput-object p2, p0, Lc8/OEb;->e:Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lc8/OEb;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/OEb;->a:Ljava/util/Map;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lc8/OEb;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/OEb;->getHintID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getApiAndHint(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    const-class v1, Lc8/OEb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/OEb;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lc8/OEb;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHintInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bbf\u95ee\u60a8\u6dd8\u5b9d\u8d26\u53f7\u4fe1\u606f\u7684\u6743\u9650("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lc8/OEb;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lc8/OEb;->b:Ljava/util/Map;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :cond_2
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bbf\u95ee\u60a8\u6dd8\u5b9d\u8d26\u53f7\u4fe1\u606f\u7684\u6743\u9650("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lc8/OEb;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/OEb;

    iget-object v0, v0, Lc8/OEb;->hintInfo:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v0, Lc8/OEb;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2
.end method

.method public static declared-synchronized putApiAndHint(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    const-class v1, Lc8/OEb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/OEb;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/OEb;->c:Ljava/util/Map;

    :cond_0
    sget-object v0, Lc8/OEb;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized putExpandList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lc8/OEb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/OEb;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/OEb;->b:Ljava/util/Map;

    :cond_0
    sget-object v0, Lc8/OEb;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getHintID()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->TEST:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/OEb;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/OEb;->d:Ljava/lang/String;

    goto :goto_0
.end method
