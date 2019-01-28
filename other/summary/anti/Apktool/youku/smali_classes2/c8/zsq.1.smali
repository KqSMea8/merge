.class public final Lc8/zsq;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Asq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OuterInnerMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<TU;TR;>;"
    }
.end annotation


# instance fields
.field final outer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final resultSelector:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lc8/zsq;, "Lrx/internal/operators/OperatorMapPair$OuterInnerMapper<TT;TU;TR;>;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lc8/zsq;->outer:Ljava/lang/Object;

    .line 137
    iput-object p2, p0, Lc8/zsq;->resultSelector:Lc8/Jnq;

    .line 138
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TR;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lc8/zsq;, "Lrx/internal/operators/OperatorMapPair$OuterInnerMapper<TT;TU;TR;>;"
    .local p1, "inner":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lc8/zsq;->resultSelector:Lc8/Jnq;

    iget-object v1, p0, Lc8/zsq;->outer:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
