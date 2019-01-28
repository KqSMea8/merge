.class public final Lc8/xzq;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lc8/Knq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jzq;->createSingleState(Lc8/Hnq;Lc8/knq;Lc8/inq;)Lc8/Jzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Knq",
        "<TS;",
        "Ljava/lang/Long;",
        "Lc8/Wlq",
        "<",
        "Lc8/Vlq",
        "<+TT;>;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lc8/knq;


# direct methods
.method constructor <init>(Lc8/knq;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lc8/xzq;->val$next:Lc8/knq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Long;Lc8/Wlq;)Ljava/lang/Object;
    .locals 1
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/Long;",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;)TS;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p3, "subscriber":Lc8/Wlq;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lc8/xzq;->val$next:Lc8/knq;

    invoke-interface {v0, p1, p2, p3}, Lc8/knq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lc8/Wlq;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lc8/xzq;->call(Ljava/lang/Object;Ljava/lang/Long;Lc8/Wlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
