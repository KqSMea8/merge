.class public Lc8/asq;
.super Ljava/lang/Object;
.source "OperatorDoOnRequest.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/csq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/csq;

.field final synthetic val$parent:Lc8/bsq;


# direct methods
.method constructor <init>(Lc8/csq;Lc8/bsq;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lc8/asq;, "Lrx/internal/operators/OperatorDoOnRequest.1;"
    iput-object p1, p0, Lc8/asq;->this$0:Lc8/csq;

    iput-object p2, p0, Lc8/asq;->val$parent:Lc8/bsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 46
    .local p0, "this":Lc8/asq;, "Lrx/internal/operators/OperatorDoOnRequest.1;"
    iget-object v0, p0, Lc8/asq;->this$0:Lc8/csq;

    iget-object v0, v0, Lc8/csq;->request:Lc8/inq;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lc8/asq;->val$parent:Lc8/bsq;

    invoke-static {v0, p1, p2}, Lc8/bsq;->access$000(Lc8/bsq;J)V

    .line 48
    return-void
.end method
