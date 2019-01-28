.class public final Lcom/uc/webview/export/internal/setup/r;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/r;",
        "Lcom/uc/webview/export/internal/setup/r;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Z

.field private static final c:Ljava/lang/Object;


# instance fields
.field a:Lcom/uc/webview/export/internal/interfaces/IWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/setup/r;->b:Z

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/r;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/r;)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/r;->a:Lcom/uc/webview/export/internal/interfaces/IWebView;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/r;Lcom/uc/webview/export/internal/interfaces/IWebView;)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/r;->a:Lcom/uc/webview/export/internal/interfaces/IWebView;

    return-object p1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 22
    sget-object v1, Lcom/uc/webview/export/internal/setup/r;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/uc/webview/export/internal/setup/r;->b:Z

    .line 24
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/r;)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/r;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-array v1, v5, [I

    const/16 v2, 0x271c

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v6, v3, v5

    const/4 v0, 0x2

    aput-object v6, v3, v0

    const/4 v0, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    return-object v0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 27
    sget-object v1, Lcom/uc/webview/export/internal/setup/r;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/r;->b:Z

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 56
    invoke-static {}, Lcom/uc/webview/export/internal/setup/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v1, Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ap;-><init>()V

    .line 62
    monitor-enter v1

    .line 63
    const/16 v0, 0x272b

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/uc/webview/export/internal/setup/t;

    invoke-direct {v4, p0, v1}, Lcom/uc/webview/export/internal/setup/t;-><init>(Lcom/uc/webview/export/internal/setup/r;Lcom/uc/webview/export/internal/setup/ap;)V

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/ap;->a(J)Landroid/util/Pair;

    move-result-object v2

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 92
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v0, v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/r;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 92
    :cond_2
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfa3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 96
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xfb8

    const-string/jumbo v2, "Init timeout(60000ms)"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/r;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_0
.end method
