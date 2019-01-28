.class public Lc8/Dwq;
.super Lc8/Nmq;
.source "SingleOperatorOnErrorResumeNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ewq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ewq;

.field final synthetic val$child:Lc8/Nmq;


# direct methods
.method constructor <init>(Lc8/Ewq;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 60
    .local p0, "this":Lc8/Dwq;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    iput-object p1, p0, Lc8/Dwq;->this$0:Lc8/Ewq;

    iput-object p2, p0, Lc8/Dwq;->val$child:Lc8/Nmq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lc8/Dwq;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    :try_start_0
    iget-object v1, p0, Lc8/Dwq;->this$0:Lc8/Ewq;

    invoke-static {v1}, Lc8/Ewq;->access$000(Lc8/Ewq;)Lc8/Inq;

    move-result-object v1

    invoke-interface {v1, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Mmq;

    iget-object v2, p0, Lc8/Dwq;->val$child:Lc8/Nmq;

    invoke-virtual {v1, v2}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "innerError":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/Dwq;->val$child:Lc8/Nmq;

    invoke-static {v0, v1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Nmq;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lc8/Dwq;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Dwq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
