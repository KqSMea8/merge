.class public final Lc8/zzq;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lc8/Knq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jzq;->createStateless(Lc8/jnq;Lc8/hnq;)Lc8/Jzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Knq",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Lc8/Wlq",
        "<",
        "Lc8/Vlq",
        "<+TT;>;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lc8/jnq;


# direct methods
.method constructor <init>(Lc8/jnq;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lc8/zzq;->val$next:Lc8/jnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lc8/Wlq;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lc8/zzq;->call(Ljava/lang/Void;Ljava/lang/Long;Lc8/Wlq;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;Ljava/lang/Long;Lc8/Wlq;)Ljava/lang/Void;
    .locals 1
    .param p1, "state"    # Ljava/lang/Void;
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 250
    .local p3, "subscriber":Lc8/Wlq;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lc8/zzq;->val$next:Lc8/jnq;

    invoke-interface {v0, p2, p3}, Lc8/jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method
