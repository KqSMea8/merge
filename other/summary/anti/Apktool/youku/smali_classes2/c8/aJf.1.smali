.class public Lc8/aJf;
.super Ljava/lang/Object;
.source "MonitorThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cJf;->putMonitorRecordTask(IJLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/cJf;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/cJf;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lc8/cJf;

    .prologue
    .line 99
    iput-object p1, p0, Lc8/aJf;->this$0:Lc8/cJf;

    iput-object p2, p0, Lc8/aJf;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lc8/aJf;->this$0:Lc8/cJf;

    const/4 v1, 0x2

    iget-object v2, p0, Lc8/aJf;->val$list:Ljava/util/List;

    invoke-static {v1, v2}, Lc8/gJf;->createMonitorTask(ILjava/util/List;)Lc8/eJf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc8/cJf;->access$200(Lc8/cJf;Lc8/eJf;Z)V

    .line 103
    return-void
.end method
