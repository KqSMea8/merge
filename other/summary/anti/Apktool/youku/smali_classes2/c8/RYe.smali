.class public Lc8/RYe;
.super Ljava/lang/Object;
.source "AliDBError.java"


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lc8/RYe;->errorCode:I

    .line 21
    iput-object p2, p0, Lc8/RYe;->errorMsg:Ljava/lang/String;

    .line 22
    return-void
.end method
