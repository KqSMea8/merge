.class public Lcom/alibaba/baichuan/android/trade/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/Set;

.field public b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/b/a;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/AHb;Lc8/vHb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->a:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Lc8/AHb;Lc8/vHb;)V

    invoke-virtual {p2}, Lc8/vHb;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lc8/AHb;Lc8/vHb;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->c:Z

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/b/a;->a()V

    if-nez p1, :cond_1

    const-string/jumbo v0, "Other_Page"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/b/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lc8/AHb;->isNativeOpen(Lc8/vHb;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc8/AHb;->getPerformancePageType()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->a:Ljava/util/Set;

    const-string/jumbo v1, "goTaobaoTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowNative;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowNative;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    goto :goto_0
.end method

.method public a(Lc8/AHb;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "changePoint"

    const-string/jumbo v2, "basePage/pagePerformancePoint is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "changePoint:basePage/pagePerformancePoint is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    instance-of v0, v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowNative;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    check-cast v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowNative;

    new-instance v1, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;

    invoke-direct {v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;-><init>()V

    iget-wide v2, v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowNative;->analysisTime:J

    iput-wide v2, v1, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->analysisTime:J

    invoke-virtual {p1}, Lc8/AHb;->getPerformancePageType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->setPageType(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->c:Z

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "changePoint"

    const-string/jumbo v2, "pagePerformancePoint is not Point4ShowNative"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "changePoint:pagePerformancePoint is not Point4ShowNative"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "timeBegin"

    const-string/jumbo v2, "pagePerformancePoint is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "timeBegin:pagePerformancePoint is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->timeBegin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "timeEnd"

    const-string/jumbo v2, "pagePerformancePoint is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "timeEnd:pagePerformancePoint is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->timeEnd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "setPageType"

    const-string/jumbo v2, "pagePerformancePoint is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "setPageType:pagePerformancePoint is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->setPageType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "setTaokeType"

    const-string/jumbo v2, "pagePerformancePoint is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/b/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "setTaokeType:pagePerformancePoint is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->setTaokeType(Ljava/lang/String;)V

    goto :goto_0
.end method
