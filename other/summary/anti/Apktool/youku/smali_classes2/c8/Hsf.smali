.class public Lc8/Hsf;
.super Ljava/lang/Object;
.source "ConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jsf;->notifyListenerV1(Ljava/lang/String;Lc8/Gtf;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jsf;

.field final synthetic val$fromCache:Z

.field final synthetic val$listenerV1:Lc8/Gtf;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Jsf;Lc8/Gtf;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jsf;

    .prologue
    .line 480
    iput-object p1, p0, Lc8/Hsf;->this$0:Lc8/Jsf;

    iput-object p2, p0, Lc8/Hsf;->val$listenerV1:Lc8/Gtf;

    iput-object p3, p0, Lc8/Hsf;->val$namespace:Ljava/lang/String;

    iput-boolean p4, p0, Lc8/Hsf;->val$fromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 484
    :try_start_0
    iget-object v1, p0, Lc8/Hsf;->val$listenerV1:Lc8/Gtf;

    iget-object v2, p0, Lc8/Hsf;->val$namespace:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Hsf;->val$fromCache:Z

    invoke-interface {v1, v2, v3}, Lc8/Gtf;->onConfigUpdate(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConfigCenter"

    const-string/jumbo v2, "notifyListenerV1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "namespace"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/Hsf;->val$namespace:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
