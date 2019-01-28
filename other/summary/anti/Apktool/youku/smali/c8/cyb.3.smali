.class public Lc8/cyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dyb;->scheduleFlow(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dyb;

.field final synthetic val$priorResult:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/dyb;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dyb;

    .prologue
    .line 534
    .local p0, "this":Lc8/cyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode$3;"
    iput-object p1, p0, Lc8/cyb;->this$0:Lc8/dyb;

    iput-object p2, p0, Lc8/cyb;->val$priorResult:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 537
    .local p0, "this":Lc8/cyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode$3;"
    iget-object v0, p0, Lc8/cyb;->this$0:Lc8/dyb;

    iget-object v1, p0, Lc8/cyb;->val$priorResult:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/dyb;->flowToNext(Ljava/lang/Object;)V

    .line 538
    return-void
.end method
