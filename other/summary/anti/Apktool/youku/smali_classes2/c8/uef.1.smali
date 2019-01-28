.class public Lc8/uef;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xef;->startJSONObjectShiftTask(Lc8/zef;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xef;

.field final synthetic val$request:Lc8/zef;


# direct methods
.method constructor <init>(Lc8/xef;Lc8/zef;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lc8/uef;->this$0:Lc8/xef;

    iput-object p2, p0, Lc8/uef;->val$request:Lc8/zef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 349
    new-instance v0, Lc8/vef;

    iget-object v1, p0, Lc8/uef;->this$0:Lc8/xef;

    invoke-direct {v0, v1}, Lc8/vef;-><init>(Lc8/xef;)V

    .line 351
    .local v0, "task":Lc8/vef;
    iget-object v1, p0, Lc8/uef;->val$request:Lc8/zef;

    invoke-static {v0, v1}, Lc8/vef;->access$302(Lc8/vef;Lc8/zef;)Lc8/zef;

    .line 353
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lc8/vef;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    return-void
.end method
