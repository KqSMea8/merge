.class public Lc8/Iuq;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kuq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kuq;

.field final synthetic val$parent:Lc8/Juq;


# direct methods
.method constructor <init>(Lc8/Kuq;Lc8/Juq;)V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lc8/Iuq;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iput-object p1, p0, Lc8/Iuq;->this$0:Lc8/Kuq;

    iput-object p2, p0, Lc8/Iuq;->val$parent:Lc8/Juq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 62
    .local p0, "this":Lc8/Iuq;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iget-object v0, p0, Lc8/Iuq;->val$parent:Lc8/Juq;

    invoke-virtual {v0, p1, p2}, Lc8/Juq;->requestMore(J)V

    .line 63
    return-void
.end method
