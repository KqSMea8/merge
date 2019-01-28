.class public final Lc8/ynq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/Knq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gnq;->toFunc(Lc8/knq;Ljava/lang/Object;)Lc8/Knq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Knq",
        "<TT1;TT2;TT3;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lc8/knq;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/knq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lc8/ynq;->val$action:Lc8/knq;

    iput-object p2, p0, Lc8/ynq;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)TR;"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    iget-object v0, p0, Lc8/ynq;->val$action:Lc8/knq;

    invoke-interface {v0, p1, p2, p3}, Lc8/knq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lc8/ynq;->val$result:Ljava/lang/Object;

    return-object v0
.end method
