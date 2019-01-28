.class public final Lc8/vnq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gnq;->toFunc(Lc8/hnq;Ljava/lang/Object;)Lc8/Hnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lc8/hnq;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/hnq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lc8/vnq;->val$action:Lc8/hnq;

    iput-object p2, p0, Lc8/vnq;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lc8/vnq;->val$action:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 290
    iget-object v0, p0, Lc8/vnq;->val$result:Ljava/lang/Object;

    return-object v0
.end method
