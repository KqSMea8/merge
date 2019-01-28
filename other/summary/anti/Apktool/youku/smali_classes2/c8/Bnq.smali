.class public final Lc8/Bnq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/Nnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gnq;->toFunc(Lc8/nnq;Ljava/lang/Object;)Lc8/Nnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Nnq",
        "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lc8/nnq;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/nnq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lc8/Bnq;->val$action:Lc8/nnq;

    iput-object p2, p0, Lc8/Bnq;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;)TR;"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    iget-object v0, p0, Lc8/Bnq;->val$action:Lc8/nnq;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lc8/nnq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lc8/Bnq;->val$result:Ljava/lang/Object;

    return-object v0
.end method
