.class public Lc8/Z;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field arrayRowPool:Lc8/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cb",
            "<",
            "Lc8/Y;",
            ">;"
        }
    .end annotation
.end field

.field mIndexedVariables:[Lc8/gb;

.field solverVariablePool:Lc8/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cb",
            "<",
            "Lc8/gb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lc8/db;

    invoke-direct {v0, v1}, Lc8/db;-><init>(I)V

    iput-object v0, p0, Lc8/Z;->arrayRowPool:Lc8/cb;

    .line 23
    new-instance v0, Lc8/db;

    invoke-direct {v0, v1}, Lc8/db;-><init>(I)V

    iput-object v0, p0, Lc8/Z;->solverVariablePool:Lc8/cb;

    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [Lc8/gb;

    iput-object v0, p0, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    return-void
.end method
