.class public Lc8/aaf;
.super Ljava/lang/Object;
.source "DinamicViewHelper.java"


# static fields
.field private static eventHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/daf;",
            ">;"
        }
    .end annotation
.end field

.field private static viewConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/haf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc8/aaf;->eventHandlers:Ljava/util/Map;

    .line 27
    new-instance v0, Lc8/TZe;

    invoke-direct {v0}, Lc8/TZe;-><init>()V

    .line 28
    .local v0, "viewAssistant":Lc8/TZe;
    sget-object v1, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    const-string/jumbo v2, "DView"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    const-string/jumbo v2, "DTextView"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    const-string/jumbo v2, "DFrameLayout"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    const-string/jumbo v2, "DLinearLayout"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    const-string/jumbo v2, "DCountDownTimerView"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEventHandler(Ljava/lang/String;)Lc8/daf;
    .locals 1
    .param p0, "eventIdenfitier"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lc8/aaf;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/daf;

    return-object v0
.end method

.method static getViewConstructor(Ljava/lang/String;)Lc8/haf;
    .locals 1
    .param p0, "viewIdentify"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/haf;

    return-object v0
.end method

.method static registeEventHandler(Ljava/lang/String;Lc8/daf;)V
    .locals 3
    .param p0, "eventIdentify"    # Ljava/lang/String;
    .param p1, "handler"    # Lc8/daf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo v1, "registeEventHandler failed, eventIdentify or handler is null"

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    sget-object v0, Lc8/aaf;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    new-instance v0, Lcom/taobao/android/dinamic/exception/DinamicException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registeEventHandler failed, eventHander already register by current identify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    sget-object v0, Lc8/aaf;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method static registeView(Ljava/lang/String;Lc8/haf;)V
    .locals 3
    .param p0, "viewIdentify"    # Ljava/lang/String;
    .param p1, "constructor"    # Lc8/haf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 38
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo v1, "viewIdentify or assistant is null"

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    sget-object v0, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lcom/taobao/android/dinamic/exception/DinamicException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "assistant already registed by current identify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    sget-object v0, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method static unregisteEventHandler(Ljava/lang/String;)V
    .locals 2
    .param p0, "eventIdentify"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo v1, "unregisteEventHandler failed, eventIdentify is null"

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lc8/aaf;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method static unregisteView(Ljava/lang/String;)V
    .locals 2
    .param p0, "viewIdentify"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo v1, "unregisteView failed, viewIdentify is null"

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    sget-object v0, Lc8/aaf;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
