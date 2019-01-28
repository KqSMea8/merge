.class public Lc8/LNb;
.super Ljava/lang/Object;
.source "KaleidoscopeViewManager.java"


# static fields
.field private static kaleidoscopeViewManager:Lc8/LNb;


# instance fields
.field private kaleidoscopeViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/SNb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/LNb;->kaleidoscopeViewMap:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static getInstance()Lc8/LNb;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lc8/LNb;->kaleidoscopeViewManager:Lc8/LNb;

    if-nez v0, :cond_0

    .line 22
    const-class v1, Lc8/LNb;

    monitor-enter v1

    .line 23
    :try_start_0
    new-instance v0, Lc8/LNb;

    invoke-direct {v0}, Lc8/LNb;-><init>()V

    sput-object v0, Lc8/LNb;->kaleidoscopeViewManager:Lc8/LNb;

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    sget-object v0, Lc8/LNb;->kaleidoscopeViewManager:Lc8/LNb;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public generateKey(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getKaleidoscopeView(I)Lc8/SNb;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 39
    sget-object v0, Lc8/LNb;->kaleidoscopeViewManager:Lc8/LNb;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lc8/LNb;->kaleidoscopeViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SNb;

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putKaleidoscopeView(Lc8/SNb;)I
    .locals 3
    .param p1, "view"    # Lc8/SNb;

    .prologue
    .line 30
    sget-object v1, Lc8/LNb;->kaleidoscopeViewManager:Lc8/LNb;

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lc8/LNb;->generateKey(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    .local v0, "key":I
    iget-object v1, p0, Lc8/LNb;->kaleidoscopeViewMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .end local v0    # "key":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
