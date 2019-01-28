.class public Lc8/zNp;
.super Ljava/lang/Object;
.source "ExpiredCacheParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ANp;->parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ANp;

.field final synthetic val$cacheEvent:Lc8/HNp;

.field final synthetic val$mtopListener:Lc8/QNp;

.field final synthetic val$reqContext:Ljava/lang/Object;

.field final synthetic val$seqNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ANp;Lc8/QNp;Lc8/HNp;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lc8/zNp;->this$0:Lc8/ANp;

    iput-object p2, p0, Lc8/zNp;->val$mtopListener:Lc8/QNp;

    iput-object p3, p0, Lc8/zNp;->val$cacheEvent:Lc8/HNp;

    iput-object p4, p0, Lc8/zNp;->val$reqContext:Ljava/lang/Object;

    iput-object p5, p0, Lc8/zNp;->val$seqNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lc8/zNp;->val$mtopListener:Lc8/QNp;

    check-cast v1, Lc8/INp;

    iget-object v2, p0, Lc8/zNp;->val$cacheEvent:Lc8/HNp;

    iget-object v3, p0, Lc8/zNp;->val$reqContext:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lc8/INp;->onCached(Lc8/HNp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.ExpiredCacheParser"

    iget-object v2, p0, Lc8/zNp;->val$seqNo:Ljava/lang/String;

    const-string/jumbo v3, "do onCached callback error."

    invoke-static {v1, v2, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
