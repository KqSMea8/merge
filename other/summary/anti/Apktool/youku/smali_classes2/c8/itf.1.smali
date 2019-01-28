.class public Lc8/itf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/qtf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 139
    iput-object p1, p0, Lc8/itf;->this$0:Lc8/qtf;

    iput-object p2, p0, Lc8/itf;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lc8/itf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lc8/itf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lc8/itf;->val$namespace:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v2, "getConfig addFail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "namespace"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/itf;->val$namespace:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lc8/itf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lc8/itf;->val$namespace:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lc8/itf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$200(Lc8/qtf;)V

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
