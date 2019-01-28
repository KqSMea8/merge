.class public Lc8/FZe;
.super Ljava/lang/Object;
.source "CipherDBQueryResult.java"


# instance fields
.field public cipherDBError:Lc8/DZe;

.field public cipherResultSet:Lc8/IZe;


# direct methods
.method public constructor <init>(Lc8/DZe;Lc8/IZe;)V
    .locals 0
    .param p1, "cipherDBError"    # Lc8/DZe;
    .param p2, "cipherResultSet"    # Lc8/IZe;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lc8/FZe;->cipherDBError:Lc8/DZe;

    .line 18
    iput-object p2, p0, Lc8/FZe;->cipherResultSet:Lc8/IZe;

    .line 19
    return-void
.end method
