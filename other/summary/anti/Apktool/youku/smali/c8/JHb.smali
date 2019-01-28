.class public Lc8/JHb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/HHb;,
        Lc8/IHb;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/JHb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/JHb;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/HHb;)V
    .locals 0

    invoke-direct {p0}, Lc8/JHb;-><init>()V

    return-void
.end method

.method public static a()Lc8/JHb;
    .locals 1

    invoke-static {}, Lc8/IHb;->a()Lc8/JHb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lc8/iGb;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lc8/JHb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u52a0\u53c2\u6570\u524d\u7684url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/JHb;->a:Ljava/lang/String;

    invoke-static {v0, p3}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    const-string/jumbo v3, "urlHandleTime"

    invoke-virtual {v0, v3}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->timeBegin(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lc8/vGb;

    invoke-direct {v3}, Lc8/vGb;-><init>()V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, v3, Lc8/vGb;->g:Landroid/app/Activity;

    iput-object p2, v3, Lc8/vGb;->a:Landroid/webkit/WebView;

    iput-object p3, v3, Lc8/vGb;->d:Ljava/lang/String;

    iget-object v0, p1, Lc8/iGb;->b:Lc8/NGb;

    iput-object v0, v3, Lc8/vGb;->b:Lc8/NGb;

    iget-object v0, p1, Lc8/iGb;->b:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "noForceH5"

    iput-object v0, v3, Lc8/vGb;->f:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x2

    iput v0, v3, Lc8/vGb;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lc8/vGb;->i:Ljava/util/Map;

    iget-object v0, p1, Lc8/iGb;->b:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v3, Lc8/vGb;->i:Ljava/util/Map;

    const-string/jumbo v4, "ui_contextParams"

    iget-object v5, p1, Lc8/iGb;->b:Lc8/NGb;

    invoke-virtual {v5}, Lc8/NGb;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lc8/yGb;->a()Lc8/yGb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lc8/yGb;->b(Lc8/vGb;)Lc8/uGb;

    move-result-object v0

    iget-boolean v3, v0, Lc8/uGb;->a:Z

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    iput-object v0, p1, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc8/vFb;->sclickPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, v0, Lc8/uGb;->b:Ljava/lang/String;

    iget-object v3, p1, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    const-string/jumbo v4, "urlHandleTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->timeEnd(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p1, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    const-string/jumbo v4, "urlLoadTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->timeBegin(Ljava/lang/String;)V

    :cond_7
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v2, Lc8/JHb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u62e6\u622a\u52a0\u53c2\u540e\u8ddf\u539f\u6765\u7684url\u4e00\u6837webview\u52a0\u8f7d\u7684url\u4e3a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lc8/JHb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u52a0\u8f7d\u7684url\u4e3a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0
.end method
