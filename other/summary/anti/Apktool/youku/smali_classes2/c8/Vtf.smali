.class public Lc8/Vtf;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Wtf;->onResponseCode(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Wtf;

.field final synthetic val$headers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/Wtf;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Wtf;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/Vtf;->this$1:Lc8/Wtf;

    iput-object p2, p0, Lc8/Vtf;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 61
    :try_start_0
    invoke-static {}, Lc8/Ytf;->setThreadPriority()V

    .line 62
    iget-object v2, p0, Lc8/Vtf;->val$headers:Ljava/util/Map;

    const-string/jumbo v3, "a-orange-p"

    invoke-static {v2, v3}, Lc8/Xtf;->access$000(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "NetworkInterceptor"

    const-string/jumbo v3, "onResponseCode"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "value"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Utf;->updateIndex(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "NetworkInterceptor"

    const-string/jumbo v3, "get orange header error"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
