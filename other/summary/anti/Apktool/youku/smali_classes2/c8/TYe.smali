.class public Lc8/TYe;
.super Lc8/UYe;
.source "AliDBExecExtResult.java"


# instance fields
.field public extResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc8/RYe;)V
    .locals 0
    .param p1, "aliDBError"    # Lc8/RYe;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lc8/RYe;Ljava/lang/Object;)V
    .locals 0
    .param p1, "aliDBError"    # Lc8/RYe;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 26
    iput-object p2, p0, Lc8/TYe;->extResult:Ljava/lang/Object;

    .line 27
    return-void
.end method
