.class public Lc8/IGb;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/IGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/IGb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/IGb;->c:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    iput-object p2, p0, Lc8/IGb;->b:[Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lc8/HFb;->getInstance()Lc8/HFb;

    move-result-object v0

    iget-object v1, p0, Lc8/IGb;->c:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-virtual {v0, v1, p1, p2}, Lc8/HFb;->openAlipay(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v1, "PayOverrideHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PayOverrideHandler.handle()--\u8fdb\u5165\u652f\u4ed8\u6d41\u7a0b: url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " webview:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lc8/IGb;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
