.class public Lc8/JNb;
.super Ljava/lang/Object;
.source "KaleidoscopeConfigCenter.java"


# static fields
.field private static kaleidoscopeConfigCenter:Lc8/JNb;

.field private static kaleidoscopeConfigHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/INb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public static getInstance()Lc8/JNb;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lc8/JNb;->kaleidoscopeConfigCenter:Lc8/JNb;

    if-nez v0, :cond_0

    .line 21
    const-class v1, Lc8/JNb;

    monitor-enter v1

    .line 22
    :try_start_0
    new-instance v0, Lc8/JNb;

    invoke-direct {v0}, Lc8/JNb;-><init>()V

    sput-object v0, Lc8/JNb;->kaleidoscopeConfigCenter:Lc8/JNb;

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    sget-object v0, Lc8/JNb;->kaleidoscopeConfigCenter:Lc8/JNb;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getKaleidoscopeRenderPlugin(Ljava/lang/String;)Lc8/NNb;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v0, "globe"

    invoke-virtual {p0, v0, p1}, Lc8/JNb;->getKaleidoscopeRenderPlugin(Ljava/lang/String;Ljava/lang/String;)Lc8/NNb;

    move-result-object v0

    return-object v0
.end method

.method public getKaleidoscopeRenderPlugin(Ljava/lang/String;Ljava/lang/String;)Lc8/NNb;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const-string/jumbo p1, "globe"

    .line 67
    :cond_1
    sget-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/INb;

    .line 68
    invoke-virtual {v0, p2}, Lc8/INb;->getKaleidoscopeRenderPlugin(Ljava/lang/String;)Lc8/NNb;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRenderPlugin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string/jumbo v0, "globe"

    invoke-virtual {p0, v0, p1}, Lc8/JNb;->isSupportRenderPlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportRenderPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    const-string/jumbo p1, "globe"

    .line 54
    :cond_1
    sget-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/INb;

    .line 55
    invoke-virtual {v0, p2}, Lc8/INb;->isSupportRenderPlugin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportRenderPlugin(Ljava/lang/String;Lc8/NNb;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "kaleidoscopeRenderPlugin"    # Lc8/NNb;

    .prologue
    .line 46
    const-string/jumbo v0, "globe"

    invoke-virtual {p0, v0, p1, p2}, Lc8/JNb;->setSupportRenderPlugin(Ljava/lang/String;Ljava/lang/String;Lc8/NNb;)V

    .line 47
    return-void
.end method

.method public setSupportRenderPlugin(Ljava/lang/String;Ljava/lang/String;Lc8/NNb;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "kaleidoscopeRenderPlugin"    # Lc8/NNb;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    const-string/jumbo p1, "globe"

    .line 38
    :cond_1
    sget-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    sget-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    new-instance v1, Lc8/INb;

    invoke-direct {v1}, Lc8/INb;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    sget-object v0, Lc8/JNb;->kaleidoscopeConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/INb;

    invoke-virtual {v0, p2, p3}, Lc8/INb;->setSupportRenderPlugin(Ljava/lang/String;Lc8/NNb;)V

    .line 42
    return-void
.end method
