.class public Lmtopsdk/mtop/util/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ad9856284e9b35dL


# instance fields
.field protected errCode:Ljava/lang/String;

.field protected errInfo:Ljava/lang/String;

.field protected errType:Ljava/lang/String;

.field protected model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected statusCode:I

.field protected success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/util/Result;->success:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/util/Result;->success:Z

    .line 58
    iput-object p1, p0, Lmtopsdk/mtop/util/Result;->model:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errInfo"    # Ljava/lang/String;

    .prologue
    .line 66
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "errType"    # Ljava/lang/String;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errInfo"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/util/Result;->success:Z

    .line 73
    iput-boolean p1, p0, Lmtopsdk/mtop/util/Result;->success:Z

    .line 74
    iput-object p2, p0, Lmtopsdk/mtop/util/Result;->errType:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lmtopsdk/mtop/util/Result;->errCode:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lmtopsdk/mtop/util/Result;->errInfo:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public getErrCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iget-object v0, p0, Lmtopsdk/mtop/util/Result;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iget-object v0, p0, Lmtopsdk/mtop/util/Result;->errInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getErrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iget-object v0, p0, Lmtopsdk/mtop/util/Result;->errType:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iget-object v0, p0, Lmtopsdk/mtop/util/Result;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iget v0, p0, Lmtopsdk/mtop/util/Result;->statusCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iget-boolean v0, p0, Lmtopsdk/mtop/util/Result;->success:Z

    return v0
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 95
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iput-object p1, p0, Lmtopsdk/mtop/util/Result;->errCode:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setErrInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "errInfo"    # Ljava/lang/String;

    .prologue
    .line 103
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iput-object p1, p0, Lmtopsdk/mtop/util/Result;->errInfo:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setErrType(Ljava/lang/String;)V
    .locals 0
    .param p1, "errType"    # Ljava/lang/String;

    .prologue
    .line 113
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iput-object p1, p0, Lmtopsdk/mtop/util/Result;->errType:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setModel(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lmtopsdk/mtop/util/Result;->model:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 129
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iput p1, p0, Lmtopsdk/mtop/util/Result;->statusCode:I

    .line 130
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 121
    .local p0, "this":Lmtopsdk/mtop/util/Result;, "Lmtopsdk/mtop/util/Result<TT;>;"
    iput-boolean p1, p0, Lmtopsdk/mtop/util/Result;->success:Z

    .line 122
    return-void
.end method
