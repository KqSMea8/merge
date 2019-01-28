.class public final Lc8/xnq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gnq;->toFunc(Lc8/jnq;Ljava/lang/Object;)Lc8/Jnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<TT1;TT2;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lc8/jnq;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/jnq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lc8/xnq;->val$action:Lc8/jnq;

    iput-object p2, p0, Lc8/xnq;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)TR;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lc8/xnq;->val$action:Lc8/jnq;

    invoke-interface {v0, p1, p2}, Lc8/jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lc8/xnq;->val$result:Ljava/lang/Object;

    return-object v0
.end method
