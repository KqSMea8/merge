.class public Lc8/mZe;
.super Ljava/lang/Object;
.source "DbWorker.java"

# interfaces
.implements Lc8/uZe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pZe;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pZe;


# direct methods
.method constructor <init>(Lc8/pZe;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lc8/mZe;->this$0:Lc8/pZe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultSetClose()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lc8/mZe;->this$0:Lc8/pZe;

    invoke-static {v0}, Lc8/pZe;->access$000(Lc8/pZe;)Lc8/oZe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lc8/mZe;->this$0:Lc8/pZe;

    invoke-static {v0}, Lc8/pZe;->access$000(Lc8/pZe;)Lc8/oZe;

    move-result-object v0

    iget-object v1, p0, Lc8/mZe;->this$0:Lc8/pZe;

    invoke-static {v1}, Lc8/pZe;->access$100(Lc8/pZe;)Lc8/lZe;

    move-result-object v1

    iget-object v2, p0, Lc8/mZe;->this$0:Lc8/pZe;

    invoke-static {v2}, Lc8/pZe;->access$200(Lc8/pZe;)Lc8/kZe;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/oZe;->onWorkDone(Lc8/lZe;Lc8/kZe;)V

    .line 54
    :cond_0
    return-void
.end method
