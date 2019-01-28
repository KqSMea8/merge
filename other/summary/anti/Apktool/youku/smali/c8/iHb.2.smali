.class public Lc8/iHb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hHb;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lc8/hHb;

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/hHb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc8/nHb;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iHb;->a:Ljava/lang/String;

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lc8/iHb;->d:J

    iput-object p1, p0, Lc8/iHb;->b:Landroid/content/Context;

    iput-object p2, p0, Lc8/iHb;->c:Lc8/hHb;

    invoke-direct {p0}, Lc8/iHb;->b()V

    return-void
.end method

.method static synthetic a(Lc8/iHb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/iHb;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lc8/iHb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lc8/iHb;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lc8/iHb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/iHb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lc8/iHb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Fetch_Config"

    invoke-static {v0, p2, p1}, Lc8/hGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lc8/dHb;)Z
    .locals 3

    invoke-virtual {p1}, Lc8/dHb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lc8/iHb;->b(Lc8/dHb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/dHb;->c()V

    iget-object v0, p1, Lc8/dHb;->a:Ljava/util/Map;

    const-string/jumbo v2, "group0"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "sign"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lc8/iHb;Lc8/dHb;)Z
    .locals 1

    invoke-direct {p0, p1}, Lc8/iHb;->a(Lc8/dHb;)Z

    move-result v0

    return v0
.end method

.method private b(Lc8/dHb;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lc8/dHb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lc8/dHb;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "ALITRADE20160628"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc8/dIb;->md5Digest([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlibcConfigPullProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u751f\u6210\u6458\u8981\u9519\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lc8/nHb;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iHb;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lc8/iHb;)V
    .locals 0

    invoke-direct {p0}, Lc8/iHb;->d()V

    return-void
.end method

.method static synthetic b(Lc8/iHb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/iHb;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lc8/iHb;)Lc8/hHb;
    .locals 1

    iget-object v0, p0, Lc8/iHb;->c:Lc8/hHb;

    return-object v0
.end method

.method private c()V
    .locals 4

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v1, Lc8/jHb;

    invoke-direct {v1, p0}, Lc8/jHb;-><init>(Lc8/iHb;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lc8/gIb;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private d()V
    .locals 1

    const-string/jumbo v0, "Fetch_Config"

    invoke-static {v0}, Lc8/hGb;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string/jumbo v0, "AlibcConfigPullProcessor"

    const-string/jumbo v1, "\u5f00\u542f\u62c9\u53d6\u7f51\u7edc\u914d\u7f6e"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/iHb;->b:Landroid/content/Context;

    invoke-static {v0}, Lc8/VHb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/iHb;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/iHb;->c:Lc8/hHb;

    const-string/jumbo v1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u65e0\u6cd5\u62c9\u53d6config\u914d\u7f6e"

    invoke-interface {v0, v1}, Lc8/hHb;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "AlibcConfigPullProcessor"

    const-string/jumbo v1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u65e0\u6cd5\u62c9\u53d6config\u914d\u7f6e"

    invoke-static {v0, v1}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
