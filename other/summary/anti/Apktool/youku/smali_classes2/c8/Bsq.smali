.class public Lc8/Bsq;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Esq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Esq;

.field final synthetic val$parent:Lc8/Dsq;


# direct methods
.method constructor <init>(Lc8/Esq;Lc8/Dsq;)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lc8/Bsq;, "Lrx/internal/operators/OperatorMaterialize.1;"
    iput-object p1, p0, Lc8/Bsq;->this$0:Lc8/Esq;

    iput-object p2, p0, Lc8/Bsq;->val$parent:Lc8/Dsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 61
    .local p0, "this":Lc8/Bsq;, "Lrx/internal/operators/OperatorMaterialize.1;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lc8/Bsq;->val$parent:Lc8/Dsq;

    invoke-virtual {v0, p1, p2}, Lc8/Dsq;->requestMore(J)V

    .line 64
    :cond_0
    return-void
.end method
