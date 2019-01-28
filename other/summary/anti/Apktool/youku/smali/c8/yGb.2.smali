.class public Lc8/yGb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xGb;
    }
.end annotation


# static fields
.field private static final a:Lc8/yGb;


# instance fields
.field private volatile b:Ljava/util/Map;

.field private volatile c:Ljava/util/Map;

.field private d:Lcom/alibaba/baichuan/android/trade/c/a/a/d;

.field private volatile e:Z

.field private f:Ljava/util/LinkedHashMap;

.field private g:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/yGb;

    invoke-direct {v0}, Lc8/yGb;-><init>()V

    sput-object v0, Lc8/yGb;->a:Lc8/yGb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/yGb;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/yGb;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/yGb;->f:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/yGb;->g:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a()Lc8/yGb;
    .locals 1

    sget-object v0, Lc8/yGb;->a:Lc8/yGb;

    return-object v0
.end method

.method private a(Z)Lcom/alibaba/baichuan/android/trade/c/a/a/d;
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lc8/yGb;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lc8/lIb;->a([Lcom/alibaba/baichuan/android/trade/utils/i$a;)V

    :cond_0
    iget-object v1, p0, Lc8/yGb;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v2, [Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    if-eqz p1, :cond_1

    invoke-static {v1}, Lc8/lIb;->a([Lcom/alibaba/baichuan/android/trade/utils/i$a;)V

    :cond_1
    new-instance v4, Lcom/alibaba/baichuan/android/trade/c/a/a/d;

    invoke-direct {v4}, Lcom/alibaba/baichuan/android/trade/c/a/a/d;-><init>()V

    iput v2, v4, Lcom/alibaba/baichuan/android/trade/c/a/a/d;->a:I

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v4, Lcom/alibaba/baichuan/android/trade/c/a/a/d;->c:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v4, Lcom/alibaba/baichuan/android/trade/c/a/a/d;->b:Ljava/util/LinkedHashMap;

    array-length v5, v0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v0, v3

    iget-object v7, v4, Lcom/alibaba/baichuan/android/trade/c/a/a/d;->c:Ljava/util/LinkedHashMap;

    iget-object v8, v6, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v3, v1

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v2, v1, v0

    iget-object v5, v4, Lcom/alibaba/baichuan/android/trade/c/a/a/d;->b:Ljava/util/LinkedHashMap;

    iget-object v6, v2, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method private a(Lc8/mGb;)V
    .locals 6

    iget-object v0, p0, Lc8/yGb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kGb;

    invoke-virtual {p1}, Lc8/mGb;->b()I

    move-result v1

    invoke-virtual {v0}, Lc8/kGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->g:[I

    invoke-direct {p0, v1, v3}, Lc8/yGb;->a(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lc8/kGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/mGb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lc8/mGb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc8/kGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->h:[Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lc8/yGb;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lc8/kGb;->a(Lc8/mGb;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc8/mGb;->h()V

    invoke-virtual {v0}, Lc8/kGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    move-result-object v1

    iget-boolean v0, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ui"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail to execute the Filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc8/kGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lc8/kGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(I[I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, p2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, p2, v2

    if-eq p1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Lc8/qGb;Lc8/sGb;Z)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->l:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lc8/xGb;

    invoke-direct {v2, v0}, Lc8/xGb;-><init>(Lc8/zGb;)V

    sget-object v7, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v0, Lc8/zGb;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lc8/zGb;-><init>(Lc8/yGb;Lc8/xGb;Lc8/qGb;Lc8/sGb;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7, v0}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, v2, Lc8/xGb;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v6

    :goto_1
    return v0

    :cond_0
    iget-object v0, v2, Lc8/xGb;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {p1, p2}, Lc8/qGb;->a(Lc8/sGb;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to execute the Handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Lc8/sGb;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lc8/yGb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qGb;

    invoke-virtual {p1}, Lc8/sGb;->b()I

    move-result v5

    invoke-virtual {v0}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->g:[I

    invoke-direct {p0, v5, v6}, Lc8/yGb;->a(I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "true"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lc8/sGb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lc8/sGb;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->h:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lc8/yGb;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0, p1, v1}, Lc8/yGb;->a(Lc8/qGb;Lc8/sGb;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    array-length v3, p2

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private c()V
    .locals 5

    const-string/jumbo v0, "addAllParamsFilter"

    invoke-static {v0}, Lc8/nGb;->a(Ljava/lang/String;)Lc8/nGb;

    move-result-object v0

    const-string/jumbo v1, "addAllParamsUrlsStartMatches"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_ADD_PARAM_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/nGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/nGb;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lc8/nGb;->a([I)Lc8/nGb;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "key"

    const-string/jumbo v3, "addAllParams"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "value"

    const-string/jumbo v3, "${ddAllParams}"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "mode"

    const-string/jumbo v3, "addIfAbsent"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "addAllParams"

    const-string/jumbo v3, "updateParameter"

    invoke-virtual {v0, v2, v3, v1}, Lc8/nGb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lc8/nGb;

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v0}, Lc8/nGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v0, "loginHandler"

    invoke-static {v0}, Lc8/tGb;->a(Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    const-string/jumbo v1, "login"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_LOGIN_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/tGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    new-instance v1, Lc8/DGb;

    invoke-direct {v1}, Lc8/DGb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/tGb;->a(Lc8/rGb;)Lc8/tGb;

    move-result-object v0

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([I)Lc8/tGb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    const-string/jumbo v0, "logoutHandler"

    invoke-static {v0}, Lc8/tGb;->a(Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    const-string/jumbo v1, "logout"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_LOGOUT_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/tGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    new-instance v1, Lc8/EGb;

    invoke-direct {v1}, Lc8/EGb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/tGb;->a(Lc8/rGb;)Lc8/tGb;

    move-result-object v0

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([I)Lc8/tGb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    const-string/jumbo v0, "alipayHandlerInfo"

    invoke-static {v0}, Lc8/tGb;->a(Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    const-string/jumbo v1, "alipay"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_ALIPAY_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/tGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    new-instance v1, Lc8/CGb;

    invoke-direct {v1}, Lc8/CGb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/tGb;->a(Lc8/rGb;)Lc8/tGb;

    move-result-object v0

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([I)Lc8/tGb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    const-string/jumbo v0, "tbopenHandlerInfo"

    invoke-static {v0}, Lc8/tGb;->a(Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    const-string/jumbo v1, "tbopen"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->b:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_TBOPEN_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/tGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    new-instance v1, Lc8/JGb;

    invoke-direct {v1}, Lc8/JGb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/tGb;->a(Lc8/rGb;)Lc8/tGb;

    move-result-object v0

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([I)Lc8/tGb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    const-string/jumbo v0, "addCartHandler"

    invoke-static {v0}, Lc8/tGb;->a(Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    const-string/jumbo v1, "addCartUrlMatches"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_ADDCART_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/tGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;

    new-instance v1, Lc8/AGb;

    invoke-direct {v1}, Lc8/AGb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/tGb;->a(Lc8/rGb;)Lc8/tGb;

    invoke-virtual {v0, v5}, Lc8/tGb;->a(Z)Lc8/tGb;

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v0}, Lc8/tGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    const-string/jumbo v0, "nativeTaobaoShopHandlerInfoBuilder"

    invoke-static {v0}, Lc8/tGb;->a(Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    const-string/jumbo v1, "showShopNativeMatches"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_SHOP_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/tGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "noForceH5"

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([Ljava/lang/String;)Lc8/tGb;

    new-instance v1, Lc8/HGb;

    invoke-direct {v1}, Lc8/HGb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/tGb;->a(Lc8/rGb;)Lc8/tGb;

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([I)Lc8/tGb;

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v0}, Lc8/tGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    const-string/jumbo v0, "nativeTaobaoDetailHandlerInfoBuilder"

    invoke-static {v0}, Lc8/tGb;->a(Ljava/lang/String;)Lc8/tGb;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "noForceH5"

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([Ljava/lang/String;)Lc8/tGb;

    const-string/jumbo v1, "showDetailNativeMatches"

    const-string/jumbo v2, "pattern"

    sget-object v3, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    sget-object v4, Lc8/rHb;->RE_DETAIL_URLS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/tGb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;

    new-instance v1, Lc8/GGb;

    invoke-direct {v1}, Lc8/GGb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/tGb;->a(Lc8/rGb;)Lc8/tGb;

    new-array v1, v5, [I

    aput v7, v1, v6

    invoke-virtual {v0, v1}, Lc8/tGb;->a([I)Lc8/tGb;

    sget-object v1, Lc8/yGb;->a:Lc8/yGb;

    invoke-virtual {v0}, Lc8/tGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    return-void
.end method

.method private e()V
    .locals 4

    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lc8/yGb;->d:Lcom/alibaba/baichuan/android/trade/c/a/a/d;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->a()Lc8/kGb;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ui"

    const-string/jumbo v2, "fail to initialize filter/handler"

    invoke-static {v1, v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iput-object v1, p0, Lc8/yGb;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lc8/yGb;->d:Lcom/alibaba/baichuan/android/trade/c/a/a/d;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a()Lc8/qGb;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iput-object v1, p0, Lc8/yGb;->b:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private f()V
    .locals 2

    const-string/jumbo v0, "InterceptionManager"

    const-string/jumbo v1, "InterceptionManager info is not found in disk, use default"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/yGb;->a(Z)Lcom/alibaba/baichuan/android/trade/c/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lc8/yGb;->d:Lcom/alibaba/baichuan/android/trade/c/a/a/d;

    return-void
.end method


# virtual methods
.method public a(Lc8/vGb;)Ljava/lang/String;
    .locals 7

    iget-object v0, p1, Lc8/vGb;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lc8/mGb;

    iget v0, p1, Lc8/vGb;->e:I

    iget-object v2, p1, Lc8/vGb;->d:Ljava/lang/String;

    iget-object v3, p1, Lc8/vGb;->i:Ljava/util/Map;

    invoke-direct {v1, v0, v2, v3}, Lc8/mGb;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    iget-object v0, p1, Lc8/vGb;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lc8/mGb;->c(Ljava/lang/String;)V

    iget-object v0, p1, Lc8/vGb;->j:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lc8/vGb;->j:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5}, Lc8/mGb;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lc8/yGb;->a(Lc8/mGb;)V

    invoke-virtual {v1}, Lc8/mGb;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;)V
    .locals 2

    iget-object v0, p0, Lc8/yGb;->g:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V
    .locals 2

    iget-object v0, p0, Lc8/yGb;->f:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lc8/vGb;)Lc8/uGb;
    .locals 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p1, Lc8/vGb;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Lc8/uGb;

    iget-object v2, p1, Lc8/vGb;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lc8/uGb;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lc8/yGb;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lc8/yGb;->b()V

    :cond_1
    new-instance v1, Lc8/mGb;

    iget v3, p1, Lc8/vGb;->e:I

    iget-object v4, p1, Lc8/vGb;->d:Ljava/lang/String;

    iget-object v5, p1, Lc8/vGb;->i:Ljava/util/Map;

    invoke-direct {v1, v3, v4, v5}, Lc8/mGb;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    iget-object v3, p1, Lc8/vGb;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lc8/mGb;->c(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lc8/yGb;->a(Lc8/mGb;)V

    new-instance v4, Lc8/sGb;

    iget v3, p1, Lc8/vGb;->e:I

    invoke-virtual {v1}, Lc8/mGb;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lc8/vGb;->i:Ljava/util/Map;

    invoke-direct {v4, v3, v5, v6}, Lc8/sGb;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    iget-object v3, p1, Lc8/vGb;->f:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lc8/sGb;->c(Ljava/lang/String;)V

    iget v3, p1, Lc8/vGb;->e:I

    if-eq v3, v2, :cond_2

    iget v3, p1, Lc8/vGb;->e:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    :cond_2
    iget-object v3, p1, Lc8/vGb;->a:Landroid/webkit/WebView;

    iput-object v3, v4, Lc8/sGb;->d:Landroid/webkit/WebView;

    iget-object v3, p1, Lc8/vGb;->b:Lc8/NGb;

    iput-object v3, v4, Lc8/sGb;->e:Lc8/NGb;

    iget-object v3, p1, Lc8/vGb;->g:Landroid/app/Activity;

    iput-object v3, v4, Lc8/sGb;->g:Landroid/app/Activity;

    :cond_3
    :goto_1
    iget-object v3, v4, Lc8/sGb;->b:Ljava/util/Map;

    iget-object v1, v1, Lc8/mGb;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p1, Lc8/vGb;->h:[Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_6

    move v1, v2

    :goto_2
    iget-object v5, p1, Lc8/vGb;->h:[Ljava/lang/String;

    array-length v6, v5

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_9

    aget-object v0, v5, v3

    iget-object v7, p0, Lc8/yGb;->b:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qGb;

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lc8/sGb;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->h:[Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lc8/yGb;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lc8/sGb;->b()I

    move-result v7

    invoke-virtual {v0}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->g:[I

    invoke-direct {p0, v7, v8}, Lc8/yGb;->a(I[I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v0, v4, v1}, Lc8/yGb;->a(Lc8/qGb;Lc8/sGb;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v0, Lc8/uGb;

    invoke-virtual {v4}, Lc8/sGb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lc8/uGb;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget v3, p1, Lc8/vGb;->e:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    iget-object v3, p1, Lc8/vGb;->g:Landroid/app/Activity;

    iput-object v3, v4, Lc8/sGb;->g:Landroid/app/Activity;

    goto :goto_1

    :cond_5
    iget v3, p1, Lc8/vGb;->e:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    iget-object v3, p1, Lc8/vGb;->c:Lc8/KHb;

    iput-object v3, v4, Lc8/sGb;->f:Lc8/KHb;

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v0, v7}, Lc8/sGb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_9
    invoke-direct {p0, v4}, Lc8/yGb;->a(Lc8/sGb;)Z

    move-result v1

    new-instance v0, Lc8/uGb;

    invoke-virtual {v4}, Lc8/sGb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/uGb;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lc8/yGb;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/yGb;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lc8/yGb;->c()V

    invoke-direct {p0}, Lc8/yGb;->d()V

    invoke-direct {p0}, Lc8/yGb;->f()V

    invoke-direct {p0}, Lc8/yGb;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/yGb;->e:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
