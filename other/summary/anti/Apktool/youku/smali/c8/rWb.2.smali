.class public Lc8/rWb;
.super Lc8/oWb;
.source "MethodTraceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tWb;->installTraceTask(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tWb;


# direct methods
.method constructor <init>(Lc8/tWb;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lc8/rWb;->this$0:Lc8/tWb;

    invoke-direct {p0}, Lc8/oWb;-><init>()V

    return-void
.end method


# virtual methods
.method public doCallback()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lc8/rWb;->this$0:Lc8/tWb;

    invoke-virtual {v0}, Lc8/tWb;->startTask()V

    .line 183
    return-void
.end method
