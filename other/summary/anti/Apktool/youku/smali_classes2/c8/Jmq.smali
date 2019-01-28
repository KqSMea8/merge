.class public final Lc8/Jmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Rnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mnq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rnq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$zipFunction:Lc8/Mnq;


# direct methods
.method constructor <init>(Lc8/Mnq;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lc8/Jmq;->val$zipFunction:Lc8/Mnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lc8/Jmq;->val$zipFunction:Lc8/Mnq;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    invoke-interface/range {v0 .. v5}, Lc8/Mnq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
