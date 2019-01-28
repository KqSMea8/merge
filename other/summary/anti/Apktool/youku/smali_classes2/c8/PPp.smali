.class public Lc8/PPp;
.super Ljava/lang/Object;
.source "DefaultCallFactory.java"

# interfaces
.implements Lc8/wPp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultCallFactory"


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lc8/PPp;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 25
    :try_start_0
    invoke-static {p1}, Lc8/zPp;->setup(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.DefaultCallFactory"

    const-string/jumbo v2, "call CookieManager.setup error."

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public newCall(Lc8/FPp;)Lc8/xPp;
    .locals 2
    .param p1, "request"    # Lc8/FPp;

    .prologue
    .line 34
    new-instance v0, Lc8/SPp;

    iget-object v1, p0, Lc8/PPp;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, v1}, Lc8/SPp;-><init>(Lc8/FPp;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
