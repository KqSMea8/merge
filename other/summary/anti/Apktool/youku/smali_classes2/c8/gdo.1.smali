.class public abstract Lc8/gdo;
.super Ljava/lang/Object;
.source "SchemaProtocolHandler.java"

# interfaces
.implements Lc8/cdo;


# instance fields
.field private urlHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Dco;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/gdo;->urlHandlerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public invoke(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v2, Lc8/Jco;

    invoke-virtual {p0}, Lc8/gdo;->getSchema()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lc8/Jco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v2, "request":Lc8/Jco;
    iget-object v3, p0, Lc8/gdo;->urlHandlerMap:Ljava/util/Map;

    invoke-virtual {v2}, Lc8/Jco;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dco;

    .line 72
    .local v0, "actionProxy":Lc8/Dco;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, v2}, Lc8/Dco;->invokeMethod(Lc8/Jco;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 78
    .end local v0    # "actionProxy":Lc8/Dco;
    .end local v2    # "request":Lc8/Jco;
    :goto_0
    return v3

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 78
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invokeWeb(Ljava/lang/String;Ljava/lang/String;Lc8/Eco;)V
    .locals 0
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callBack"    # Lc8/Eco;

    .prologue
    .line 84
    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/gdo;->getSchema()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageLoad(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public registerAction(Lc8/Cco;)V
    .locals 4
    .param p1, "urlHandler"    # Lc8/Cco;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lc8/Gco;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 48
    .local v0, "annos":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 49
    check-cast v0, Lc8/Gco;

    .end local v0    # "annos":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lc8/Gco;->value()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "handlerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, p1}, Lc8/gdo;->registerAction(Ljava/lang/String;Lc8/Cco;)V

    .line 54
    return-void

    .line 51
    .end local v1    # "handlerName":Ljava/lang/String;
    .restart local v0    # "annos":Ljava/lang/annotation/Annotation;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "handlerName":Ljava/lang/String;
    goto :goto_0
.end method

.method public registerAction(Ljava/lang/String;Lc8/Cco;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "action"    # Lc8/Cco;

    .prologue
    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lc8/gdo;->urlHandlerMap:Ljava/util/Map;

    new-instance v1, Lc8/Dco;

    invoke-direct {v1, p2}, Lc8/Dco;-><init>(Lc8/Cco;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-void
.end method
