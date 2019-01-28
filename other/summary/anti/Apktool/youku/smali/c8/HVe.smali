.class public Lc8/HVe;
.super Ljava/lang/Object;
.source "UtdidObj.java"


# instance fields
.field private isValid:Z

.field private timestamp:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/HVe;->isValid:Z

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lc8/HVe;->timestamp:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lc8/HVe;->version:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lc8/HVe;->isValid:Z

    return v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lc8/HVe;->timestamp:J

    .line 20
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lc8/HVe;->isValid:Z

    .line 36
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 27
    iput p1, p0, Lc8/HVe;->version:I

    .line 28
    return-void
.end method
