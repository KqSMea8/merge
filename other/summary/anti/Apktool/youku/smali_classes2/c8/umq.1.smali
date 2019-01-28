.class public Lc8/umq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->takeUntil(Lc8/Vlq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$other:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 2049
    .local p0, "this":Lc8/umq;, "Lrx/Single.21;"
    iput-object p1, p0, Lc8/umq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/umq;->val$other:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/umq;, "Lrx/Single.21;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v3, 0x0

    .line 2052
    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1, v3}, Lc8/qAq;-><init>(Lc8/Omq;Z)V

    .line 2054
    .local v1, "serial":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v0, Lc8/smq;

    invoke-direct {v0, p0, v1, v3, v1}, Lc8/smq;-><init>(Lc8/umq;Lc8/Omq;ZLc8/Omq;)V

    .line 2077
    .local v0, "main":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lc8/tmq;

    invoke-direct {v2, p0, v0}, Lc8/tmq;-><init>(Lc8/umq;Lc8/Omq;)V

    .line 2095
    .local v2, "so":Lc8/Omq;, "Lrx/Subscriber<TE;>;"
    invoke-virtual {v1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 2096
    invoke-virtual {v1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 2098
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 2100
    iget-object v3, p0, Lc8/umq;->val$other:Lc8/Vlq;

    invoke-virtual {v3, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 2102
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2049
    .local p0, "this":Lc8/umq;, "Lrx/Single.21;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/umq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
