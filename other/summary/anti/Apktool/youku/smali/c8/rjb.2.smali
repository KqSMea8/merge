.class public Lc8/rjb;
.super Ljava/lang/Object;
.source "WebViewActivitySupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qjb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public lastReloadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lc8/rjb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/rjb;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rjb;->lastReloadUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lc8/pjb;)V
    .locals 0
    .param p1, "x0"    # Lc8/pjb;

    .prologue
    .line 7
    invoke-direct {p0}, Lc8/rjb;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/rjb;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lc8/qjb;->access$100()Lc8/rjb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public safeReload(Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lc8/rjb;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reload url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-nez v0, :cond_0

    .line 37
    iget-object v1, p0, Lc8/rjb;->lastReloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method
