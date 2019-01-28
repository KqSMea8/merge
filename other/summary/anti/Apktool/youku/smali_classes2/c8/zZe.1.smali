.class public Lc8/zZe;
.super Ljava/lang/Object;
.source "WrapAliDBTransaction.java"

# interfaces
.implements Lc8/qZe;


# instance fields
.field public transaction:Lc8/qZe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransaction(Lc8/QYe;)Z
    .locals 3
    .param p1, "aliDB"    # Lc8/QYe;

    .prologue
    .line 10
    const/4 v1, 0x0

    .line 11
    .local v1, "rollback":Z
    iget-object v2, p0, Lc8/zZe;->transaction:Lc8/qZe;

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p1}, Lc8/QYe;->getConcurrenceController()Lc8/gZe;

    move-result-object v0

    .line 13
    .local v0, "controller":Lc8/gZe;
    if-eqz v0, :cond_0

    .line 14
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/gZe;->needCheckStack:Z

    .line 15
    iget-object v2, p0, Lc8/zZe;->transaction:Lc8/qZe;

    invoke-interface {v2, p1}, Lc8/qZe;->onTransaction(Lc8/QYe;)Z

    move-result v1

    .line 16
    const/4 v2, 0x0

    iput-boolean v2, v0, Lc8/gZe;->needCheckStack:Z

    .line 20
    .end local v0    # "controller":Lc8/gZe;
    :cond_0
    return v1
.end method
