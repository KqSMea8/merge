.class public Lc8/UYe;
.super Ljava/lang/Object;
.source "AliDBExecResult.java"


# instance fields
.field public aliDBError:Lc8/RYe;

.field public aliResultSet:Lc8/XYe;

.field public changeCount:I


# direct methods
.method public constructor <init>(Lc8/RYe;)V
    .locals 1
    .param p1, "aliDBError"    # Lc8/RYe;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lc8/UYe;->changeCount:I

    .line 23
    iput-object p1, p0, Lc8/UYe;->aliDBError:Lc8/RYe;

    .line 24
    return-void
.end method

.method public constructor <init>(Lc8/RYe;Lc8/XYe;)V
    .locals 1
    .param p1, "aliDBError"    # Lc8/RYe;
    .param p2, "aliResultSet"    # Lc8/XYe;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lc8/UYe;->changeCount:I

    .line 32
    iput-object p1, p0, Lc8/UYe;->aliDBError:Lc8/RYe;

    .line 33
    iput-object p2, p0, Lc8/UYe;->aliResultSet:Lc8/XYe;

    .line 34
    return-void
.end method
