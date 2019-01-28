.class public Lc8/yco;
.super Landroid/webkit/WebView;
.source "BridgeWebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private extendProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/cdo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo v0, "BridgeWebView"

    iput-object v0, p0, Lc8/yco;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/yco;->extendProtocols:Ljava/util/List;

    .line 36
    invoke-direct {p0}, Lc8/yco;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string/jumbo v0, "BridgeWebView"

    iput-object v0, p0, Lc8/yco;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/yco;->extendProtocols:Ljava/util/List;

    .line 26
    invoke-direct {p0}, Lc8/yco;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-string/jumbo v0, "BridgeWebView"

    iput-object v0, p0, Lc8/yco;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/yco;->extendProtocols:Ljava/util/List;

    .line 31
    invoke-direct {p0}, Lc8/yco;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lc8/yco;->setVerticalScrollBarEnabled(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lc8/yco;->setHorizontalScrollBarEnabled(Z)V

    .line 42
    invoke-virtual {p0}, Lc8/yco;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeProtocols(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v1, p0, Lc8/yco;->extendProtocols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/cdo;

    .line 74
    .local v0, "protocolHandler":Lc8/cdo;
    invoke-interface {v0, p1}, Lc8/cdo;->isSupport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lc8/cdo;->invoke(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 78
    .end local v0    # "protocolHandler":Lc8/cdo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageFinish(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lc8/yco;->extendProtocols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/cdo;

    .line 88
    .local v0, "protocolHandler":Lc8/cdo;
    invoke-interface {v0, p0, p1}, Lc8/cdo;->onPageLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0    # "protocolHandler":Lc8/cdo;
    :cond_0
    return-void
.end method

.method public registerProtocols(Lc8/cdo;)V
    .locals 1
    .param p1, "iProtocol"    # Lc8/cdo;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/yco;->extendProtocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public unRegisterProtocols(Lc8/cdo;)V
    .locals 1
    .param p1, "iProtocol"    # Lc8/cdo;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/yco;->extendProtocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
