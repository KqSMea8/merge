.class public Lc8/DZe;
.super Ljava/lang/Object;
.source "CipherDBError.java"


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lc8/DZe;->errorCode:I

    .line 25
    iput-object p2, p0, Lc8/DZe;->errorMsg:Ljava/lang/String;

    .line 26
    return-void
.end method
