.class public Lc8/LLj;
.super Ljava/lang/Object;
.source "YoukuActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/NLj;->uploadUncaughtLog(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/NLj;

.field final synthetic val$c_clazz:Ljava/lang/String;

.field final synthetic val$c_pid:I

.field final synthetic val$c_time:J

.field final synthetic val$d_pid:I

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$l_clazz:Ljava/lang/String;

.field final synthetic val$s_time:J


# direct methods
.method constructor <init>(Lc8/NLj;IILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/NLj;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/LLj;->this$0:Lc8/NLj;

    iput p2, p0, Lc8/LLj;->val$c_pid:I

    iput p3, p0, Lc8/LLj;->val$d_pid:I

    iput-object p4, p0, Lc8/LLj;->val$c_clazz:Ljava/lang/String;

    iput-object p5, p0, Lc8/LLj;->val$l_clazz:Ljava/lang/String;

    iput-wide p6, p0, Lc8/LLj;->val$s_time:J

    iput-wide p8, p0, Lc8/LLj;->val$c_time:J

    iput-object p10, p0, Lc8/LLj;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 98
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "current_pid"

    iget v3, p0, Lc8/LLj;->val$c_pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v2, "died_pid"

    iget v3, p0, Lc8/LLj;->val$d_pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v2, "current_activity"

    iget-object v3, p0, Lc8/LLj;->val$c_clazz:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v2, "last_activity"

    iget-object v3, p0, Lc8/LLj;->val$l_clazz:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v2, "save_time"

    iget-wide v4, p0, Lc8/LLj;->val$s_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "save_time_format"

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lc8/LLj;->val$s_time:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v2, "current_time"

    iget-wide v4, p0, Lc8/LLj;->val$c_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v2, "current_time_format"

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lc8/LLj;->val$c_time:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2, v0}, Lc8/WLj;->upload(Landroid/content/Context;Ljava/util/Map;)V

    .line 110
    const-string/jumbo v2, "YOUKU_UNCAUGHT_CRASH"

    const-string/jumbo v3, "AFTER_IN_THREAD"

    iget-object v4, p0, Lc8/LLj;->val$info:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/MWc;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
